// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//06I.Cv

package 06I{
    import flash.events.Event;
    import flash.display.DisplayObjectContainer;

    public class Cv extends Event {

        public static const 1fg:String = "containerAdd";
        public static const 0PQ:String = "containerRemove";
        public static const 11:String = "rootContainerAdd";
        public static const cj:String = "rootContainerRemove";

        private var 0KQ:DisplayObjectContainer;

        public function Cv(_arg1:String, _arg2:DisplayObjectContainer){
            super(_arg1);
            this.0KQ = _arg2;
        }

        public function get container():DisplayObjectContainer{
            return (this.0KQ);
        }

        override public function clone():Event{
            return (new Cv(type, this.0KQ));
        }


    }
}//package 06I

