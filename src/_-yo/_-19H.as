// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.19H

package yo{
    import flash.utils.IDataOutput;

    public class 19H extends 0j1 {

        public var bulletId_:uint;
        public var objectId_:int;

        public function 19H(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeByte(this.bulletId_);
            _arg1.writeInt(this.objectId_);
        }

        override public function toString():String{
            return (formatToString("PLAYERHIT", "bulletId_", "objectId_"));
        }


    }
}//package yo

