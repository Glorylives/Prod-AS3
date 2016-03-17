// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1hS

package 1zG{
    import g0.1tk;
    import flash.utils.IDataInput;

    public class 1hS extends 11g {

        public var bulletId_:uint;
        public var ownerId_:int;
        public var containerType_:int;
        public var startingPos_:1tk;
        public var angle_:Number;
        public var damage_:int;

        public function 1hS(_arg1:uint, _arg2:Function){
            this.startingPos_ = new 1tk();
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.bulletId_ = _arg1.readUnsignedByte();
            this.ownerId_ = _arg1.readInt();
            this.containerType_ = _arg1.readInt();
            this.startingPos_.parseFromInput(_arg1);
            this.angle_ = _arg1.readFloat();
            this.damage_ = _arg1.readShort();
        }

        override public function toString():String{
            return (formatToString("SHOOT", "bulletId_", "ownerId_", "containerType_", "startingPos_", "angle_", "damage_"));
        }


    }
}//package 1zG

