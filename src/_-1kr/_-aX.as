// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1kr.aX

package 1kr{
    import flash.events.EventDispatcher;
    import _Jy._04t;
    import flash.utils.getTimer;
    import _0BB.*;

    public class aX extends EventDispatcher implements _Fu {

        [Inject]
        public var stats:AppEngineRequestStats;
        [Inject]
        public var yW:UJ;
        private var we:int;
        private var target:String;


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
            this.we = getTimer();
            this.target = _arg1;
            this.yW.complete.addOnce(this.onComplete);
            this.yW.sendRequest(_arg1, _arg2);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            this.stats.2U(this.target, _arg1, (getTimer() - this.we));
        }

        public function 1r6():Boolean{
            return (false);
        }


    }
}//package 1kr

