// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.e8

package 1zG{
    import g0.1tk;
    import flash.utils.IDataInput;

    public class e8 extends 11g {

        public static const 0OW:int = 0;
        public static const 12T:int = 1;
        public static const 1Pp:int = 2;
        public static const 0Fd:int = 3;
        public static const 22l:int = 4;
        public static const 0Gm:int = 5;
        public static const 1za:int = 6;
        public static const 1z-:int = 7;
        public static const 1CB:int = 8;
        public static const 0YU:int = 9;
        public static const o2:int = 10;
        public static const S9:int = 11;
        public static const 15Y:int = 12;
        public static const Ur:int = 13;
        public static const wV:int = 14;
        public static const 0mv:int = 15;
        public static const 0i-:int = 16;
        public static const 0bC:int = 17;
        public static const 8p:int = 18;
        public static const 1VM:int = 19;

        public var effectType_:uint;
        public var targetObjectId_:int;
        public var pos1_:1tk;
        public var pos2_:1tk;
        public var color_:int;

        public function e8(_arg1:uint, _arg2:Function){
            this.pos1_ = new 1tk();
            this.pos2_ = new 1tk();
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.effectType_ = _arg1.readUnsignedByte();
            this.targetObjectId_ = _arg1.readInt();
            this.pos1_.parseFromInput(_arg1);
            this.pos2_.parseFromInput(_arg1);
            this.color_ = _arg1.readInt();
        }

        override public function toString():String{
            return (formatToString("SHOW_EFFECT", "effectType_", "targetObjectId_", "pos1_", "pos2_", "color_"));
        }


    }
}//package 1zG

