// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1bl

package 1zG{
    import flash.utils.IDataInput;

    public class 1bl extends 11g {

        public var objectId_:int;
        public var charId_:int;

        public function 1bl(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.objectId_ = _arg1.readInt();
            this.charId_ = _arg1.readInt();
        }

        override public function toString():String{
            return (formatToString("CREATE_SUCCESS", "objectId_", "charId_"));
        }


    }
}//package 1zG

