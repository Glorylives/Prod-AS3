// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//F7.04M

package F7{
    import flash.events.Event;

    public class 04M extends Event {

        public static const 1W2:String = "GUILDRESULTEVENT";

        public var success_:Boolean;
        public var 1pm:String;
        public var 0kR:Object;

        public function 04M(_arg1:Boolean, _arg2:String, _arg3:Object){
            super(1W2);
            this.success_ = _arg1;
            this.1pm = _arg2;
            this.0kR = _arg3;
        }

    }
}//package F7

