// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//06I.0m6

package 06I{
    import flash.events.Event;
    import flash.display.DisplayObject;

    public class 0m6 extends Event {

        public static const 1k:String = "configureView";

        private var 0xx:DisplayObject;

        public function 0m6(_arg1:String, _arg2:DisplayObject=null){
            super(_arg1, true, true);
            this.0xx = _arg2;
        }

        public function get view():DisplayObject{
            return (this.0xx);
        }

        override public function clone():Event{
            return (new 0m6(type, this.0xx));
        }


    }
}//package 06I

