// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1YL.ConsoleEvent

package 1YL{
    import flash.events.Event;

    public final class ConsoleEvent extends Event {

        public static const INPUT:String = "ConsoleEvent.INPUT";
        public static const GET_PREVIOUS:String = "ConsoleEvent.GET_PREVIOUS";
        public static const GET_NEXT:String = "ConsoleEvent.GET_NEXT";
        public static const OUTPUT:String = "ConsoleEvent.OUTPUT";

        public var data:String;

        public function ConsoleEvent(_arg1:String, _arg2:String=""){
            super(_arg1, false, false);
            this.data = _arg2;
        }

    }
}//package 1YL

