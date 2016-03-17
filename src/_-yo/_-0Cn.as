// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.0Cn

package yo{
    import flash.utils.IDataOutput;

    public class 0Cn extends 0j1 {

        public var objectId_:int;

        public function 0Cn(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.objectId_);
        }

        override public function toString():String{
            return (formatToString("USEPORTAL", "objectId_"));
        }


    }
}//package yo

