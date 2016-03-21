// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Fr.0qM

package _0Fr{
    import flash.events.Event;

    public class _0qM extends Event {

        public static const ERROR:String = "error";
        public static const _0yZ:String = "preInitialize";
        public static const _16E:String = "initialize";
        public static const _1zA:String = "postInitialize";
        public static const _1JJ:String = "preSuspend";
        public static const _0DM:String = "suspend";
        public static const _1mh:String = "postSuspend";
        public static const _0F3:String = "preResume";
        public static const HW:String = "resume";
        public static const _0E2:String = "postResume";
        public static const _0bH:String = "preDestroy";
        public static const wu:String = "destroy";
        public static const _0Dw:String = "postDestroy";

        public var error:Error;

        public function _0qM(_arg1:String){
            super(_arg1);
        }

        override public function clone():Event{
            var _local1:_0qM = new _0qM(type);
            _local1.error = this.error;
            return (_local1);
        }


    }
}//package 0Fr

