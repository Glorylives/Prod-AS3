// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1XY

package 1zG{
    import flash.utils.IDataInput;

    public class 1XY extends 11g {

        public var bulletId_:uint;
        public var ownerId_:int;
        public var containerType_:int;
        public var angle_:Number;

        public function 1XY(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.bulletId_ = _arg1.readUnsignedByte();
            this.ownerId_ = _arg1.readInt();
            this.containerType_ = _arg1.readShort();
            this.angle_ = _arg1.readFloat();
        }

        override public function toString():String{
            return (formatToString("ALLYSHOOT", "bulletId_", "ownerId_", "containerType_", "angle_"));
        }


    }
}//package 1zG

