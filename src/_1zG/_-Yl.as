// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.Yl

package 1zG{
    import flash.utils.IDataInput;

    public class Yl extends 11g {

        public var objectId_:int;

        public function Yl(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.objectId_ = _arg1.readInt();
        }

        override public function toString():String{
            return (formatToString("QUESTOBJID", "objectId_"));
        }


    }
}//package 1zG

