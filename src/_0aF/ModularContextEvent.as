// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0aF.ModularContextEvent

package _0aF{
    import flash.events.Event;
    import _0Fr._dW;

    public class ModularContextEvent extends Event {

        public static const ZC:String = "contextAdd";
        public static const _1Sq:String = "contextRemove";

        private var _1Hl:_dW;

        public function ModularContextEvent(_arg1:String, _arg2:_dW){
            super(_arg1, true, true);
            this._1Hl = _arg2;
        }

        public function get context():_dW{
            return (this._1Hl);
        }

        override public function clone():Event{
            return (new ModularContextEvent(type, this.context));
        }

        override public function toString():String{
            return (formatToString("ModularContextEvent", "context"));
        }


    }
}//package _0aF

