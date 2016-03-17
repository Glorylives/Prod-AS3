// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0DE.WE

package 0DE{
    import flash.events.Event;

    public class WE extends Event {

        public static const ITEM_MOVE:String = "ITEM_MOVE";
        public static const ITEM_DOUBLE_CLICK:String = "ITEM_DOUBLE_CLICK";
        public static const ITEM_SHIFT_CLICK:String = "ITEM_SHIFT_CLICK";
        public static const ITEM_CLICK:String = "ITEM_CLICK";
        public static const ITEM_HOTKEY_PRESS:String = "ITEM_HOTKEY_PRESS";
        public static const ITEM_CTRL_CLICK:String = "ITEM_CTRL_CLICK";

        public var tile:14l;

        public function WE(_arg1:String, _arg2:14l){
            super(_arg1, true);
            this.tile = _arg2;
        }

    }
}//package 0DE

