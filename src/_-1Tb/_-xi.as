// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Tb.xi

package 1Tb{
    import flash.net.LocalConnection;
    import flash.net.Socket;
    import flash.utils.ByteArray;
    import flash.utils.Dictionary;
    import EM.Console;
    import flash.events.StatusEvent;
    import flash.events.AsyncErrorEvent;
    import flash.system.Security;
    import flash.events.Event;
    import flash.events.IOErrorEvent;
    import flash.events.SecurityErrorEvent;
    import flash.events.ProgressEvent;

    public class xi extends ak {

        public static const NONE:uint = 0;
        public static const 2-q:uint = 1;
        public static const 1pv:uint = 2;

        private var _callbacks:Object;
        private var _mode:uint;
        private var 0m8:LocalConnection;
        private var 16M:Socket;
        private var 0Z6:ByteArray;
        private var 1oX:Object;
        private var 0xP:Dictionary;
        private var 24G:String = "";
        private var 0cL:Boolean;
        private var PQ:String;
        private var Ny:String;

        public function xi(_arg1:Console){
            var m:Console = _arg1;
            this._callbacks = new Object();
            this.0Z6 = new ByteArray();
            this.1oX = new Object();
            this.0xP = new Dictionary();
            super(m);
            this.registerCallback("login", function (_arg1:ByteArray):void{
                login(_arg1.readUTF());
            });
            this.registerCallback("requestLogin", this.requestLogin);
            this.registerCallback("loginFail", this.loginFail);
            this.registerCallback("loginSuccess", this.loginSuccess);
        }

        public function update():void{
            var _local1:String;
            var _local2:ByteArray;
            var _local3:String;
            var _local4:ByteArray;
            if (this.0Z6.length)
            {
                if (((this.16M) && (this.16M.connected)))
                {
                    this.16M.writeBytes(this.0Z6);
                    this.0Z6 = new ByteArray();
                } else
                {
                    if (this.0m8)
                    {
                        this.0Z6.position = 0;
                        if (this.0Z6.bytesAvailable < 38000)
                        {
                            _local2 = this.0Z6;
                            this.0Z6 = new ByteArray();
                        } else
                        {
                            _local2 = new ByteArray();
                            this.0Z6.readBytes(_local2, 0, Math.min(38000, this.0Z6.bytesAvailable));
                            _local4 = new ByteArray();
                            this.0Z6.readBytes(_local4);
                            this.0Z6 = _local4;
                        };
                        _local3 = (config.remotingConnectionName + (((this.remoting == xi.1pv)) ? 2-q : 1pv));
                        this.0m8.send(_local3, "synchronize", this.PQ, _local2);
                    } else
                    {
                        this.0Z6 = new ByteArray();
                    };
                };
            };
            for (_local1 in this.1oX)
            {
                this.6S(_local1);
            };
        }

        private function 6S(_arg1:String):void{
            var pointer:uint;
            var cmd:String;
            var arg:ByteArray;
            var callbackData:Object;
            var blen:uint;
            var recbuffer:ByteArray;
            var id:String = _arg1;
            if (!this.0xP[id])
            {
                this.0xP[id] = true;
                if (this.Ny)
                {
                    report((("Remote switched to new sender [" + id) + "] as primary."), -2);
                };
                this.Ny = id;
            };
            var buffer:ByteArray = this.1oX[id];
            try
            {
                pointer = (buffer.position = 0);
                while (buffer.bytesAvailable)
                {
                    cmd = buffer.readUTF();
                    arg = null;
                    if (buffer.bytesAvailable == 0)
                    {
                        break;
                    };
                    if (buffer.readBoolean())
                    {
                        if (buffer.bytesAvailable == 0) break;
                        blen = buffer.readUnsignedInt();
                        if (buffer.bytesAvailable < blen) break;
                        arg = new ByteArray();
                        buffer.readBytes(arg, 0, blen);
                    };
                    callbackData = this._callbacks[cmd];
                    if (((!(callbackData.latest)) || ((id == this.Ny))))
                    {
                        if (arg)
                        {
                            callbackData.fun(arg);
                        } else
                        {
                            callbackData.fun();
                        };
                    };
                    pointer = buffer.position;
                };
                if (pointer < buffer.length)
                {
                    recbuffer = new ByteArray();
                    recbuffer.writeBytes(buffer, pointer);
                    var _local3 = recbuffer;
                    buffer = _local3;
                    this.1oX[id] = _local3;
                } else
                {
                    delete this.1oX[id];
                };
            } catch(err:Error)
            {
                report(("Remoting sync error: " + err), 9);
            };
        }

        private function synchronize(_arg1:String, _arg2:Object):void{
            if (!(_arg2 is ByteArray))
            {
                report(("Remoting sync error. Recieved non-ByteArray:" + _arg2), 9);
                return;
            };
            var _local3:ByteArray = (_arg2 as ByteArray);
            var _local4:ByteArray = this.1oX[_arg1];
            if (_local4)
            {
                _local4.position = _local4.length;
                _local4.writeBytes(_local3);
            } else
            {
                this.1oX[_arg1] = _local3;
            };
        }

        public function send(_arg1:String, _arg2:ByteArray=null):Boolean{
            if (this._mode == NONE)
            {
                return (false);
            };
            this.0Z6.position = this.0Z6.length;
            this.0Z6.writeUTF(_arg1);
            if (_arg2)
            {
                this.0Z6.writeBoolean(true);
                this.0Z6.writeUnsignedInt(_arg2.length);
                this.0Z6.writeBytes(_arg2);
            } else
            {
                this.0Z6.writeBoolean(false);
            };
            return (true);
        }

        public function get remoting():uint{
            return (this._mode);
        }

        public function get canSend():Boolean{
            return ((((this._mode == 2-q)) && (this.0cL)));
        }

        public function set remoting(_arg1:uint):void{
            var _local2:String;
            if (_arg1 == this._mode)
            {
                return;
            };
            this.PQ = this.1xs();
            if (_arg1 == 2-q)
            {
                if (!this.1e2(2-q))
                {
                    report("Could not create remoting client service. You will not be able to control this console with remote.", 10);
                };
                this.0Z6 = new ByteArray();
                this.0m8.addEventListener(StatusEvent.STATUS, this.14g, false, 0, true);
                report(("<b>Remoting started.</b> " + this.1eS()), -1);
                this.0cL = this.0vn("");
                if (this.0cL)
                {
                    this.0aB();
                } else
                {
                    this.send("requestLogin");
                };
            } else
            {
                if (_arg1 == 1pv)
                {
                    if (this.1e2(1pv))
                    {
                        this.0Z6 = new ByteArray();
                        this.0m8.addEventListener(AsyncErrorEvent.ASYNC_ERROR, this.24l, false, 0, true);
                        this.0m8.addEventListener(StatusEvent.STATUS, this.1e1, false, 0, true);
                        report(("<b>Remote started.</b> " + this.1eS()), -1);
                        _local2 = Security.sandboxType;
                        if ((((_local2 == Security.LOCAL_WITH_FILE)) || ((_local2 == Security.LOCAL_WITH_NETWORK))))
                        {
                            report("Untrusted local sandbox. You may not be able to listen for logs properly.", 10);
                            this.q-();
                        };
                        this.login(this.24G);
                    } else
                    {
                        report("Could not create remote service. You might have a console remote already running.", 10);
                    };
                } else
                {
                    this.close();
                };
            };
            console.panels.updateMenu();
        }

        public function remotingSocket(_arg1:String, _arg2:int=0):void{
            if (((this.16M) && (this.16M.connected)))
            {
                this.16M.close();
                this.16M = null;
            };
            if (((_arg1) && (_arg2)))
            {
                this.remoting = 2-q;
                report(((("Connecting to socket " + _arg1) + ":") + _arg2));
                this.16M = new Socket();
                this.16M.addEventListener(Event.CLOSE, this.zt);
                this.16M.addEventListener(Event.CONNECT, this.RZ);
                this.16M.addEventListener(IOErrorEvent.IO_ERROR, this.QW);
                this.16M.addEventListener(SecurityErrorEvent.SE_CURITY_ERROR, this.0AR);
                this.16M.addEventListener(ProgressEvent.SOCKET_DATA, this.03H);
                this.16M.connect(_arg1, _arg2);
            };
        }

        private function zt(_arg1:Event):void{
            if (_arg1.currentTarget == this.16M)
            {
                this.16M = null;
            };
        }

        private function RZ(_arg1:Event):void{
            report("Remoting socket connected.", -1);
            this.0Z6 = new ByteArray();
            if (((this.0cL) || (this.0vn(""))))
            {
                this.0aB();
            } else
            {
                this.send("requestLogin");
            };
        }

        private function QW(_arg1:Event):void{
            report(("Remoting socket error." + _arg1), 9);
            this.remotingSocket(null);
        }

        private function 0AR(_arg1:Event):void{
            report(("Remoting security error." + _arg1), 9);
            this.remotingSocket(null);
        }

        private function 03H(_arg1:Event):void{
            this.13Z((_arg1.currentTarget as Socket));
        }

        public function 13Z(_arg1:Socket):void{
            if (!this.0xP[_arg1])
            {
                this.0xP[_arg1] = this.1xs();
                this.16M = _arg1;
            };
            var _local2:ByteArray = new ByteArray();
            _arg1.readBytes(_local2);
            this.synchronize(this.0xP[_arg1], _local2);
        }

        private function 14g(_arg1:StatusEvent):void{
            if ((((_arg1.level == "error")) && (!(((this.16M) && (this.16M.connected))))))
            {
                this.0cL = false;
            };
        }

        private function 1e1(_arg1:StatusEvent):void{
            if ((((this.remoting == xi.1pv)) && ((_arg1.level == "error"))))
            {
                report("Problem communicating to client.", 10);
            };
        }

        private function 0MG(_arg1:SecurityErrorEvent):void{
            report("Remoting security error.", 9);
            this.q-();
        }

        private function 24l(_arg1:AsyncErrorEvent):void{
            report("Problem with remote sync. [<a href='event:remote'>Click here</a>] to restart.", 10);
            this.remoting = NONE;
        }

        private function 1eS():String{
            return ((((("<p4>channel:" + config.remotingConnectionName) + " (") + Security.sandboxType) + ")</p4>"));
        }

        private function q-():void{
            report("Make sure your flash file is 'trusted' in Global Security Settings.", -2);
            report("Go to Settings Manager [<a href='event:settings'>click here</a>] &gt; 'Global Security Settings Panel' (on left) &gt; add the location of the local flash (swf) file.", -2);
        }

        private function 1xs():String{
            return (((new Date().time + ".") + Math.floor((Math.random() * 100000))));
        }

        private function 1e2(_arg1:uint):Boolean{
            var targetmode:uint = _arg1;
            this.close();
            this._mode = targetmode;
            this.0m8 = new LocalConnection();
            this.0m8.client = {synchronize:this.synchronize};
            if (config.allowedRemoteDomain)
            {
                this.0m8.allowDomain(config.allowedRemoteDomain);
                this.0m8.allowInsecureDomain(config.allowedRemoteDomain);
            };
            this.0m8.addEventListener(SecurityErrorEvent.SE_CURITY_ERROR, this.0MG, false, 0, true);
            try
            {
                this.0m8.connect((config.remotingConnectionName + this._mode));
            } catch(err:Error)
            {
                return (false);
            };
            return (true);
        }

        public function registerCallback(_arg1:String, _arg2:Function, _arg3:Boolean=false):void{
            this._callbacks[_arg1] = {
                fun:_arg2,
                latest:_arg3
            };
        }

        private function loginFail():void{
            if (this.remoting != xi.1pv)
            {
                return;
            };
            report("Login Failed", 10);
            console.panels.mainPanel.requestLogin();
        }

        private function 0aB():void{
            this.0cL = true;
            this.send("loginSuccess");
            dispatchEvent(new Event(Event.CONNECT));
        }

        private function loginSuccess():void{
            console.setViewingChannels();
            report("Login Successful", -1);
        }

        private function requestLogin():void{
            if (this.remoting != xi.1pv)
            {
                return;
            };
            this.0Z6 = new ByteArray();
            if (this.24G)
            {
                this.login(this.24G);
            } else
            {
                console.panels.mainPanel.requestLogin();
            };
        }

        public function login(_arg1:String=""):void{
            var _local2:ByteArray;
            if (this.remoting == xi.1pv)
            {
                this.24G = _arg1;
                report("Attempting to login...", -1);
                _local2 = new ByteArray();
                _local2.writeUTF(_arg1);
                this.send("login", _local2);
            } else
            {
                if (((this.0cL) || (this.0vn(_arg1))))
                {
                    this.0aB();
                } else
                {
                    this.send("loginFail");
                };
            };
        }

        private function 0vn(_arg1:String):Boolean{
            return ((((((((config.remotingPassword === null)) && ((config.keystrokePassword == _arg1)))) || ((config.remotingPassword === "")))) || ((config.remotingPassword == _arg1))));
        }

        public function close():void{
            if (this.0m8)
            {
                try
                {
                    this.0m8.close();
                } catch(error:Error)
                {
                    report(("Remote.close: " + error), 10);
                };
            };
            this._mode = NONE;
            this.0Z6 = new ByteArray();
            this.0m8 = null;
        }


    }
}//package 1Tb

