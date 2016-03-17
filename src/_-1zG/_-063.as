// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.063

package 1zG{
    import g0.1tk;
    import flash.utils.IDataInput;

    public class 063 extends 11g {

        public var pos_:1tk;
        public var radius_:Number;
        public var damage_:int;
        public var effect_:int;
        public var duration_:Number;
        public var origType_:int;

        public function 063(_arg1:uint, _arg2:Function){
            this.pos_ = new 1tk();
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.pos_.parseFromInput(_arg1);
            this.radius_ = _arg1.readFloat();
            this.damage_ = _arg1.readUnsignedShort();
            this.effect_ = _arg1.readUnsignedByte();
            this.duration_ = _arg1.readFloat();
            this.origType_ = _arg1.readUnsignedShort();
        }

        override public function toString():String{
            return (formatToString("AOE", "pos_", "radius_", "damage_", "effect_", "duration_", "origType_"));
        }


    }
}//package 1zG

