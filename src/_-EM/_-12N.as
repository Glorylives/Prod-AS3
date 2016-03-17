// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//EM.12N

package EM{
    public class 12N {

        public var keystrokePassword:String;
        public var remotingPassword:String;
        public var maxLines:uint = 1000;
        public var maxRepeats:int = 75;
        public var 04h:int;
        public var 0i5:int = 2;
        public var useObjectLinking:Boolean = true;
        public var objectHardReferenceTimer:uint = 0;
        public var tracing:Boolean;
        public var traceCall:Function;
        public var showTimestamp:Boolean = false;
        public var timeStampFormatter:Function;
        public var showLineNumber:Boolean = false;
        public var remotingConnectionName:String = "_Console";
        public var allowedRemoteDomain:String = "*";
        public var commandLineAllowed:Boolean;
        public var commandLineAutoScope:Boolean;
        public var commandLineInputPassThrough:Function;
        public var commandLineAutoCompleteEnabled:Boolean = true;
        public var keyBindsEnabled:Boolean = true;
        public var displayRollerEnabled:Boolean = true;
        public var rulerToolEnabled:Boolean = true;
        public var p8:Boolean = true;
        public var XX:String = "com.junkbyte/Console/UserData";
        public var 0At:String = "/";
        public var rememberFilterSettings:Boolean;
        public var 26s:Boolean = true;
        private var 1-e:1LM;

        public function 12N(){
            this.04h = Console.FATAL;
            this.traceCall = function (_arg1:String, _arg2:String, ... _args):void{
                trace(((("[" + _arg1) + "] ") + _arg2));
            };
            this.timeStampFormatter = function (_arg1:uint):String{
                var _local2:uint = (_arg1 * 0.001);
                return (((this.1ft((_local2 / 60)) + ":") + this.1ft((_local2 % 60))));
            };
            super();
            this.1-e = new 1LM();
        }

        private function 1ft(_arg1:uint):String{
            if (_arg1 < 10)
            {
                return (("0" + _arg1));
            };
            return (String(_arg1));
        }

        public function get style():1LM{
            return (this.1-e);
        }


    }
}//package EM

