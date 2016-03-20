// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1kr.0wo

package 1kr{
    import 1Bg.fQ;
    import _Jy._04t;
    import flash.utils.getTimer;
    import 1fx.1Zh;
    import _0BB.*;

    public class 0wo implements _Fu {

        [Inject]
        public var Ud:fQ;
        [Inject]
        public var yW:UJ;
        private var target:String;
        private var time:int;


        public function get complete():_04t{
            return (this.yW.complete);
        }

        public function 19U(_arg1:String):void{
            this.yW.19U(_arg1);
        }

        public function 0NT(_arg1:Boolean):void{
            this.yW.0NT(_arg1);
        }

        public function 1Je(_arg1:int):void{
            this.yW.1Je(_arg1);
        }

        public function sendRequest(_arg1:String, _arg2:Object):void{
            this.target = _arg1;
            this.time = getTimer();
            this.yW.complete.addOnce(this.1eb);
            this.yW.sendRequest(_arg1, _arg2);
        }

        private function 1eb(_arg1:Boolean, _arg2):void{
            var _local3:1Zh = new 1Zh();
            _local3.category = "AppEngineResponseTime";
            _local3.1D9 = this.target;
            _local3.value = (this.time - getTimer());
            this.Ud.dispatch(_local3);
        }

        public function 1r6():Boolean{
            return (false);
        }


    }
}//package 1kr

