// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//06I.1Be

package _06I{
    import flash.events.Event;
    import flash.display.DisplayObjectContainer;
    import tB.LC;

    public class _1Be extends Event {

        public static const _1fg:String = "containerAdd";
        public static const _0PQ:String = "containerRemove";
        public static const _0ob:String = "handlerAdd";
        public static const _1my:String = "handlerRemove";

        private var _0KQ:DisplayObjectContainer;
        private var _handler:LC;

        public function _1Be(_arg1:String, _arg2:DisplayObjectContainer=null, _arg3:LC=null){
            super(_arg1);
            this._0KQ = _arg2;
            this._handler = _arg3;
        }

        public function get container():DisplayObjectContainer{
            return (this._0KQ);
        }

        public function get handler():LC{
            return (this._handler);
        }

        override public function clone():Event{
            return (new _1Be(type, this._0KQ, this._handler));
        }


    }
}//package 06I

