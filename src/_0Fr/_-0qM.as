// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Fr.0qM

package 0Fr{
    import flash.events.Event;

    public class 0qM extends Event {

        public static const ERROR:String = "error";
        public static const 0yZ:String = "preInitialize";
        public static const 16E:String = "initialize";
        public static const 1zA:String = "postInitialize";
        public static const 1JJ:String = "preSuspend";
        public static const 0DM:String = "suspend";
        public static const 1mh:String = "postSuspend";
        public static const 0F3:String = "preResume";
        public static const HW:String = "resume";
        public static const 0E2:String = "postResume";
        public static const 0bH:String = "preDestroy";
        public static const wu:String = "destroy";
        public static const 0Dw:String = "postDestroy";

        public var error:Error;

        public function 0qM(_arg1:String){
            super(_arg1);
        }

        override public function clone():Event{
            var _local1:0qM = new 0qM(type);
            _local1.error = this.error;
            return (_local1);
        }


    }
}//package 0Fr

