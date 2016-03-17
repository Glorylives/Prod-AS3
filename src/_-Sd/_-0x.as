// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Sd.0x

package Sd{
    import 1zG.11g;
    import flash.utils.IDataInput;

    public class 0x extends 11g {

        public var currentRuntime:int;

        public function 0x(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.currentRuntime = _arg1.readInt();
        }

        override public function toString():String{
            return (formatToString("IMMINENTARENAWAVE", "currentRuntime"));
        }


    }
}//package Sd

