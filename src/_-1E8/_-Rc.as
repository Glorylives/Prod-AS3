// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1E8.Rc

package 1E8{
    import _Jy._1HZ;
    import flash.utils.ByteArray;
    import 0qs.J1;
    import flash.net.Socket;
    import flash.utils.Timer;
    import com.hurlant.crypto.symmetric.ICipher;
    import flash.events.Event;
    import flash.events.ProgressEvent;
    import flash.events.IOErrorEvent;
    import flash.events.SecurityErrorEvent;
    import flash.events.TimerEvent;

    public class Rc {

        public static const 1os:int = 4;

        public const connected:_1HZ = new _1HZ();
        public const closed:_1HZ = new _1HZ();
        public const error:_1HZ = new _1HZ(String);
        private const Tr:1kN = new 1kN(0);
        private const data:ByteArray = new ByteArray();

        [Inject]
        public var 27M:J1;
        [Inject]
        public var 1Gn:Socket;
        [Inject]
        public var 1tP:0M1;
        public var 0k8:Timer;
        private var 0kc:1kN;
        private var 0wv:1kN;
        private var 0jL:int = -1;
        private var 0h6:ICipher;
        private var 1BZ:ICipher;
        private var server:String;
        private var port:int;

        public function Rc(){
            this.0kc = this.Tr;
            this.0wv = this.Tr;
            super();
        }

        public function setOutgoingCipher(_arg1:ICipher):Rc{
            this.0h6 = _arg1;
            return (this);
        }

        public function setIncomingCipher(_arg1:ICipher):Rc{
            this.1BZ = _arg1;
            return (this);
        }

        public function connect(_arg1:String, _arg2:int):void{
            this.server = _arg1;
            this.port = _arg2;
            this.0qt();
            this.0jL = -1;
            if (this.1tP.11A)
            {
                this.Tv();
            } else
            {
                this.1Gn.connect(_arg1, _arg2);
            };
        }

        private function 0qt():void{
            this.1Gn.addEventListener(Event.CONNECT, this.0RH);
            this.1Gn.addEventListener(Event.CLOSE, this.D2);
            this.1Gn.addEventListener(ProgressEvent.SOCKET_DATA, this.0FF);
            this.1Gn.addEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
            this.1Gn.addEventListener(SecurityErrorEvent.SE_CURITY_ERROR, this.onSecurityError);
        }

        private function Tv():void{
            this.0k8 = new Timer(this.1tP.11A, 1);
            this.0k8.addEventListener(TimerEvent.TIMER_COMPLETE, this.1Yl);
            this.0k8.start();
        }

        private function 1Yl(_arg1:TimerEvent):void{
            this.0k8.removeEventListener(TimerEvent.TIMER_COMPLETE, this.1Yl);
            this.1Gn.connect(this.server, this.port);
        }

        public function disconnect():void{
            this.1Gn.close();
            this.IZ();
            this.closed.dispatch();
        }

        private function IZ():void{
            this.1Gn.removeEventListener(Event.CONNECT, this.0RH);
            this.1Gn.removeEventListener(Event.CLOSE, this.D2);
            this.1Gn.removeEventListener(ProgressEvent.SOCKET_DATA, this.0FF);
            this.1Gn.removeEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
            this.1Gn.removeEventListener(SecurityErrorEvent.SE_CURITY_ERROR, this.onSecurityError);
        }

        public function sendMessage(_arg1:1kN):void{
            this.0wv.next = _arg1;
            this.0wv = _arg1;
            ((this.1Gn.connected) && (this.0q9()));
        }

        private function 0q9():void{
            var _local1:1kN = this.0kc.next;
            var _local2:1kN = _local1;
            while (_local2)
            {
                this.data.clear();
                _local2.writeToOutput(this.data);
                this.data.position = 0;
                if (this.0h6 != null)
                {
                    this.0h6.encrypt(this.data);
                    this.data.position = 0;
                };
                this.1Gn.writeInt((this.data.bytesAvailable + 5));
                this.1Gn.writeByte(_local2.id);
                this.1Gn.writeBytes(this.data);
                _local2.consume();
                _local2 = _local2.next;
            };
            this.1Gn.flush();
            this.Tr.next = null;
            this.Tr.gR = null;
            this.0kc = (this.0wv = this.Tr);
        }

        private function 0RH(_arg1:Event):void{
            this.0q9();
            this.connected.dispatch();
        }

        private function D2(_arg1:Event):void{
            this.closed.dispatch();
        }

        private function onIOError(_arg1:IOErrorEvent):void{
            var _local2:String = this.0gX("Socket-Server IO Error: {0}", [_arg1.text]);
            this.error.dispatch(_local2);
            this.closed.dispatch();
        }

        private function onSecurityError(_arg1:SecurityErrorEvent):void{
            var _local2:String = this.0gX("Socket-Server Security Error: {0}", [_arg1.text]);
            this.error.dispatch(_local2);
            this.closed.dispatch();
        }

        private function 0FF(_arg1:ProgressEvent=null):void{
            var messageId:uint;
            var message:1kN;
            var data:ByteArray;
            var errorMessage:String;
            var _ = _arg1;
            while (true)
            {
                if ((((this.1Gn == null)) || (!(this.1Gn.connected))))
                {
                    return;
                };
                if (this.0jL == -1)
                {
                    if (this.1Gn.bytesAvailable < 4)
                    {
                        return;
                    };
                    try
                    {
                        this.0jL = this.1Gn.readInt();
                    } catch(e:Error)
                    {
                        errorMessage = 0gX("Socket-Server Data Error: {0}: {1}", [e.name, e.message]);
                        error.dispatch(errorMessage);
                        0jL = -1;
                        return;
                    };
                };
                if (this.1Gn.bytesAvailable < (this.0jL - 1os)) break;
                messageId = this.1Gn.readUnsignedByte();
                message = this.27M.lh(messageId);
                data = new ByteArray();
                if ((this.0jL - 5) > 0)
                {
                    this.1Gn.readBytes(data, 0, (this.0jL - 5));
                };
                data.position = 0;
                if (this.1BZ != null)
                {
                    this.1BZ.decrypt(data);
                    data.position = 0;
                };
                this.0jL = -1;
                if (message == null)
                {
                    this.0AS("Socket-Server Protocol Error: Unknown message");
                    return;
                };
                try
                {
                    message.parseFromInput(data);
                } catch(error:Error)
                {
                    0AS("Socket-Server Protocol Error: {0}", [error.toString()]);
                    return;
                };
                message.consume();
            };
        }

        private function 0AS(_arg1:String, _arg2:Array=null):void{
            this.error.dispatch(this.0gX(_arg1, _arg2));
            this.disconnect();
        }

        private function 0gX(_arg1:String, _arg2:Array):String{
            var _local3:int = _arg2.length;
            var _local4:int;
            while (_local4 < _local3)
            {
                _arg1 = _arg1.replace((("{" + _local4) + "}"), _arg2[_local4]);
                _local4++;
            };
            return (_arg1);
        }

        public function isConnected():Boolean{
            return (this.1Gn.connected);
        }


    }
}//package 1E8

