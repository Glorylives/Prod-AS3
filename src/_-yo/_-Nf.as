// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.Nf

package yo{
    import g0.1tk;
    import flash.utils.IDataOutput;

    public class Nf extends 0j1 {

        public var time_:int;
        public var bulletId_:uint;
        public var containerType_:int;
        public var startingPos_:1tk;
        public var angle_:Number;

        public function Nf(_arg1:uint, _arg2:Function){
            this.startingPos_ = new 1tk();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.time_);
            _arg1.writeByte(this.bulletId_);
            _arg1.writeShort(this.containerType_);
            this.startingPos_.writeToOutput(_arg1);
            _arg1.writeFloat(this.angle_);
        }

        override public function toString():String{
            return (formatToString("PLAYERSHOOT", "time_", "bulletId_", "containerType_", "startingPos_", "angle_"));
        }


    }
}//package yo

