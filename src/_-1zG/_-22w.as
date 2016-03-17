// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.22w

package 1zG{
    import flash.utils.IDataInput;

    public class 22w extends 11g {

        public var skinID:int;

        public function 22w(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.skinID = _arg1.readInt();
        }

        override public function toString():String{
            return (formatToString("RESKIN", "skinID"));
        }


    }
}//package 1zG

