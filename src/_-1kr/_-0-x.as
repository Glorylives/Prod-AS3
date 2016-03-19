// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1kr.0-x

package 1kr{
    import _Jy._04t;
    import flash.net.URLRequest;
    import flash.net.URLLoader;
    import flash.net.URLLoaderDataFormat;
    import flash.net.URLRequestMethod;
    import flash.net.URLVariables;
    import flash.utils.getTimer;
    import flash.events.IOErrorEvent;
    import flash.events.SecurityErrorEvent;
    import flash.events.Event;
    import flash.utils.ByteArray;
    import _0BB.*;

    public class 0-x implements lG {

        private const 0vw:_04t = new _04t(Boolean);

        private var 0SP:int;
        private var dataFormat:String;
        private var url:String;
        private var params:Object;
        private var 1pN:URLRequest;
        private var Le:URLLoader;
        private var 0Hh:int;
        private var Qg:Boolean;

        public function 0-x(){
            this.Qg = false;
            this.0SP = 0;
            this.dataFormat = URLLoaderDataFormat.TEXT;
        }

        public function get complete():_04t{
            return (this.0vw);
        }

        public function PZ():Boolean{
            return (this.Qg);
        }

        public function 19U(_arg1:String):void{
            this.dataFormat = _arg1;
        }

        public function 1Je(_arg1:int):void{
            this.0SP = _arg1;
        }

        public function sendRequest(_arg1:String, _arg2:Object):void{
            this.url = _arg1;
            this.params = _arg2;
            this.0Hh = this.0SP;
            this.Qg = true;
            this.0RO();
        }

        private function 0RO():void{
            this.1pl();
            this.1pN = this.w6();
            this.Le = this.1S();
            this.Le.load(this.1pN);
        }

        private function w6():URLRequest{
            var _local1:URLRequest = new URLRequest(this.url);
            _local1.method = URLRequestMethod.POST;
            _local1.data = this.0OP();
            return (_local1);
        }

        private function 0OP():URLVariables{
            var _local2:String;
            var _local1:URLVariables = new URLVariables();
            _local1.ignore = getTimer();
            for (_local2 in this.params)
            {
                _local1[_local2] = this.params[_local2];
            }
            return (_local1);
        }

        private function 1S():URLLoader{
            var _local1:URLLoader = new URLLoader();
            _local1.dataFormat = this.dataFormat;
            _local1.addEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
            _local1.addEventListener(SecurityErrorEvent.SE_CURITY_ERROR, this.onSecurityError);
            _local1.addEventListener(Event.COMPLETE, this.onComplete);
            return (_local1);
        }

        private function onIOError(_arg1:IOErrorEvent):void{
            this.Qg = false;
            var _local2:String = this.Le.data;
            if (_local2.length == 0)
            {
                _local2 = "Unable to contact server";
            }
            this.1P0(_local2);
        }

        private function onSecurityError(_arg1:SecurityErrorEvent):void{
            this.Qg = false;
            this.0YJ(false, "Security Error");
        }

        private function 1P0(_arg1:String):void{
            if (this.0Hh-- > 0)
            {
                this.0RO();
            } else
            {
                this.0YJ(false, _arg1);
            }
        }

        private function onComplete(_arg1:Event):void{
            this.Qg = false;
            if (this.dataFormat == URLLoaderDataFormat.TEXT)
            {
                this.1ek(this.Le.data);
            } else
            {
                this.0YJ(true, ByteArray(this.Le.data));
            }
        }

        private function 1ek(_arg1:String):void{
            if (_arg1.substring(0, 7) == "<Error>")
            {
                this.1P0(_arg1);
            } else
            {
                if (_arg1.substring(0, 12) == "<FatalError>")
                {
                    this.0YJ(false, _arg1);
                } else
                {
                    this.0YJ(true, _arg1);
                }
            }
        }

        private function 0YJ(_arg1:Boolean, _arg2):void{
            if (((!(_arg1)) && ((_arg2 is String))))
            {
                _arg2 = this.1tW(_arg2);
            }
            this.1pl();
            this.0vw.dispatch(_arg1, _arg2);
        }

        private function 1tW(_arg1:String):String{
            var _local2:Array = _arg1.match("<.*>(.*)</.*>");
            return (((((_local2) && ((_local2.length > 1)))) ? _local2[1] : _arg1));
        }

        private function 1pl():void{
            if (this.Le)
            {
                this.Le.removeEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
                this.Le.removeEventListener(SecurityErrorEvent.SE_CURITY_ERROR, this.onSecurityError);
                this.Le.removeEventListener(Event.COMPLETE, this.onComplete);
                this.ID();
                this.Le = null;
            }
        }

        private function ID():void{
            try
            {
                this.Le.close();
            } catch(e:Error)
            {
            }
        }


    }
}//package 1kr

