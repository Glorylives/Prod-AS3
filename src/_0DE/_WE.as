// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0DE._WE

package _0DE{
    import flash.events.Event;

    public class _WE extends Event {

        public static const ITEM_MOVE:String = "ITEM_MOVE";
        public static const ITEM_DOUBLE_CLICK:String = "ITEM_DOUBLE_CLICK";
        public static const ITEM_SHIFT_CLICK:String = "ITEM_SHIFT_CLICK";
        public static const ITEM_CLICK:String = "ITEM_CLICK";
        public static const ITEM_HOTKEY_PRESS:String = "ITEM_HOTKEY_PRESS";
        public static const ITEM_CTRL_CLICK:String = "ITEM_CTRL_CLICK";

        public var tile:_14l;

        public function _WE(_arg1:String, _arg2:_14l){
            super(_arg1, true);
            this.tile = _arg2;
        }

    }
}//package _0DE

