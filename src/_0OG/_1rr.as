// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//__0OG.1rr

package _0OG{
    import flash.events.Event;

    public class _1rr extends Event {

        public static const _060:String = "postInstantiate";
        public static const H6:String = "preConstruct";
        public static const _0rL:String = "postConstruct";

        public var _1hP;
        public var _0gW:Class;

        public function _1rr(_arg1:String, _arg2:Object, _arg3:Class){
            super(_arg1);
            this._1hP = _arg2;
            this._0gW = _arg3;
        }

        override public function clone():Event{
            return (new _1rr(type, this._1hP, this._0gW));
        }


    }
}//package __0OG

