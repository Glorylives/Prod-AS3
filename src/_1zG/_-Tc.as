// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.Tc

package 1zG{
    import g0.1tk;
    import flash.utils.IDataInput;

    public class Tc extends 11g {

        public var bulletId_:uint;
        public var ownerId_:int;
        public var bulletType_:int;
        public var startingPos_:1tk;
        public var angle_:Number;
        public var damage_:int;
        public var numShots_:int;
        public var angleInc_:Number;

        public function Tc(_arg1:uint, _arg2:Function){
            this.startingPos_ = new 1tk();
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.bulletId_ = _arg1.readUnsignedByte();
            this.ownerId_ = _arg1.readInt();
            this.bulletType_ = _arg1.readUnsignedByte();
            this.startingPos_.parseFromInput(_arg1);
            this.angle_ = _arg1.readFloat();
            this.damage_ = _arg1.readShort();
            if (_arg1.bytesAvailable > 0)
            {
                this.numShots_ = _arg1.readUnsignedByte();
                this.angleInc_ = _arg1.readFloat();
            } else
            {
                this.numShots_ = 1;
                this.angleInc_ = 0;
            }
        }

        override public function toString():String{
            return (formatToString("SHOOT", "bulletId_", "ownerId_", "bulletType_", "startingPos_", "angle_", "damage_", "numShots_", "angleInc_"));
        }


    }
}//package 1zG

