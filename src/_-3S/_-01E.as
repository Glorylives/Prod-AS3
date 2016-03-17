// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//3S.01E

package 3S{
    import flash.events.Event;

    public class 01E extends Event {

        public static const SET_RANK:String = "SET_RANK";
        public static const REMOVE_MEMBER:String = "REMOVE_MEMBER";

        public var name_:String;
        public var qw:int;

        public function 01E(_arg1:String, _arg2:String, _arg3:int=-1){
            super(_arg1, true);
            this.name_ = _arg2;
            this.qw = _arg3;
        }

    }
}//package 3S

