// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1rH

package 1zG{
    import flash.utils.IDataInput;

    public class 1rH extends 11g {

        public var ownerId_:int;
        public var soundId_:int;

        public function 1rH(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.ownerId_ = _arg1.readInt();
            this.soundId_ = _arg1.readUnsignedByte();
        }

        override public function toString():String{
            return (formatToString("PLAYSOUND", "ownerId_", "soundId_"));
        }


    }
}//package 1zG

