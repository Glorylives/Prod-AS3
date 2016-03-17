// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//F7.19s

package F7{
    import flash.events.Event;
    import 0y3.Server;
    import flash.utils.ByteArray;

    public class 19s extends Event {

        public static const RECONNECT:String = "RECONNECT_EVENT";

        public var server_:Server;
        public var gameId_:int;
        public var lk:Boolean;
        public var charId_:int;
        public var keyTime_:int;
        public var key_:ByteArray;
        public var isFromArena_:Boolean;

        public function 19s(_arg1:Server, _arg2:int, _arg3:Boolean, _arg4:int, _arg5:int, _arg6:ByteArray, _arg7:Boolean){
            super(RECONNECT);
            this.server_ = _arg1;
            this.gameId_ = _arg2;
            this.lk = _arg3;
            this.charId_ = _arg4;
            this.keyTime_ = _arg5;
            this.key_ = _arg6;
            this.isFromArena_ = _arg7;
        }

        override public function clone():Event{
            return (new 19s(this.server_, this.gameId_, this.lk, this.charId_, this.keyTime_, this.key_, this.isFromArena_));
        }

        override public function toString():String{
            return (formatToString(RECONNECT, "server_", "gameId_", "charId_", "keyTime_", "key_", "isFromArena_"));
        }


    }
}//package F7

