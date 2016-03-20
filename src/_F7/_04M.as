// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//F7.04M

package _F7{
    import flash.events.Event;

    public class _04M extends Event {

        public static const _1W2:String = "GUILDRESULTEVENT";

        public var success_:Boolean;
        public var _1pm:String;
        public var _0kR:Object;

        public function _04M(_arg1:Boolean, _arg2:String, _arg3:Object){
            super(_1W2);
            this.success_ = _arg1;
            this._1pm = _arg2;
            this._0kR = _arg3;
        }

    }
}//package F7

