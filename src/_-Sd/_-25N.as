// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Sd.25N

package Sd{
    import 1zG.11g;
    import flash.utils.IDataInput;

    public class 25N extends 11g {

        public var cost:int;

        public function 25N(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.cost = _arg1.readInt();
        }

        override public function toString():String{
            return (formatToString("ARENADEATH", "cost"));
        }


    }
}//package Sd

