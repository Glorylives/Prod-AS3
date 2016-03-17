// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.appengine.RemoteTexture

package com.company.assembleegameclient.appengine{
    import 0Fr.1da;
    import _04_._1JZ;
    import _0OG._22M;
    import 1kr.0-x;
    import _0BB.lG;
    import flash.net.URLLoaderDataFormat;
    import 1hz.1Dv;
    import flash.display.BitmapData;
    import flash.utils.ByteArray;

    public class RemoteTexture {

        private static const 211:String = "http://{DOMAIN}/picture/get";
        private static const 1tZ:String = "Remote Texture Error: {ERROR} (id:{ID}, instance:{INSTANCE})";
        private static const 07h:int = int(new Date().getTime());

        public var id_:String;
        public var 0yv:String;
        public var callback_:Function;
        private var u3:1da;

        public function RemoteTexture(_arg1:String, _arg2:String, _arg3:Function):void{
            this.id_ = _arg1;
            this.0yv = _arg2;
            this.callback_ = _arg3;
            var _local4:_22M = _1JZ.0JF();
            this.u3 = _local4.getInstance(1da);
        }

        public function run():void{
            var _local1:String = (((this.0yv)=="testing") ? "rotmgtesting.appspot.com" : "realmofthemadgod.appspot.com");
            var _local2:String = 211.replace("{DOMAIN}", _local1);
            var _local3:Object = {};
            _local3.id = this.id_;
            _local3.time = 07h;
            var _local4:lG = new 0-x();
            _local4.19U(URLLoaderDataFormat.BINARY);
            _local4.complete.addOnce(this.onComplete);
            _local4.sendRequest(_local2, _local3);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.1-w(_arg2);
            } else
            {
                this.reportError(_arg2);
            };
        }

        public function 1-w(_arg1:ByteArray):void{
            var _local2:BitmapData = 1Dv.0fq(_arg1);
            this.callback_(_local2);
        }

        public function reportError(_arg1:String):void{
            _arg1 = 1tZ.replace("{ERROR}", _arg1).replace("{ID}", this.id_).replace("{INSTANCE}", this.0yv);
            this.u3.0K("RemoteTexture.reportError: {0}", [_arg1]);
            var _local2:BitmapData = new HL(1, 1);
            this.callback_(_local2);
        }


    }
}//package com.company.assembleegameclient.appengine

