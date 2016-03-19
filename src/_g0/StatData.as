// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//g0.StatData

package g0{
    import _AO._du;
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;

    public class StatData {

        public static const _0S8:int = 0;
        public static const _14a:int = 1;
        public static const set :int = 2;
        public static const _26o:int = 3;
        public static const _0X7:int = 4;
        public static const _default:int = 5;
        public static const _1Wg:int = 6;
        public static const _3b:int = 7;
        public static const _8r:int = 20;
        public static const HB:int = 21;
        public static const _18f:int = 22;
        public static const INVENTORY_0_STAT:int = 8;
        public static const INVENTORY_1_STAT:int = 9;
        public static const INVENTORY_2_STAT:int = 10;
        public static const INVENTORY_3_STAT:int = 11;
        public static const INVENTORY_4_STAT:int = 12;
        public static const INVENTORY_5_STAT:int = 13;
        public static const INVENTORY_6_STAT:int = 14;
        public static const INVENTORY_7_STAT:int = 15;
        public static const INVENTORY_8_STAT:int = 16;
        public static const INVENTORY_9_STAT:int = 17;
        public static const INVENTORY_10_STAT:int = 18;
        public static const INVENTORY_11_STAT:int = 19;
        public static const _0jH:int = 26;
        public static const _0R5:int = 27;
        public static const _0tQ:int = 28;
        public static const O1:int = 29;
        public static const _1sx:int = 30;
        public static const _0vZ:int = 31;
        public static const TEX1_STAT:int = 32;
        public static const TEX2_STAT:int = 33;
        public static const jd:int = 34;
        public static const za:int = 35;
        public static const _1ak:int = 36;
        public static const _0Hc:int = 37;
        public static const _06l:int = 38;
        public static const _0G8:int = 39;
        public static const IY:int = 40;
        public static const _1dl:int = 41;
        public static const _0KL:int = 42;
        public static const _0F5:int = 43;
        public static const _17Y:int = 44;
        public static const _1eG:int = 45;
        public static const _1Q1:int = 46;
        public static const qK:int = 47;
        public static const jV:int = 48;
        public static const _1AC:int = 49;
        public static const _17v:int = 50;
        public static const _06m:int = 51;
        public static const rR:int = 52;
        public static const _1D2:int = 53;
        public static const _0u:int = 54;
        public static const _1T1:int = 55;
        public static const _0Y1:int = 56;
        public static const _0lh:int = 57;
        public static const _0m0:int = 58;
        public static const _01:int = 59;
        public static const _1nY:int = 60;
        public static const _7Q:int = 61;
        public static const mS:int = 62;
        public static const _1s:int = 63;
        public static const _0Kh:int = 64;
        public static const b3:int = 65;
        public static const _1xF:int = 66;
        public static const _0hq:int = 67;
        public static const _0VP:int = 68;
        public static const _24h:int = 69;
        public static const Uk:int = 70;
        public static const BACKPACK_0_STAT:int = 71;
        public static const BACKPACK_1_STAT:int = 72;
        public static const BACKPACK_2_STAT:int = 73;
        public static const BACKPACK_3_STAT:int = 74;
        public static const BACKPACK_4_STAT:int = 75;
        public static const BACKPACK_5_STAT:int = 76;
        public static const BACKPACK_6_STAT:int = 77;
        public static const BACKPACK_7_STAT:int = 78;
        public static const _0fQ:int = 79;
        public static const NU:int = 80;
        public static const _0Eu:int = 81;
        public static const lA:int = 82;
        public static const P3:int = 83;
        public static const _209:int = 84;
        public static const Vi:int = 85;
        public static const _0ab:int = 86;
        public static const _0JU:int = 87;
        public static const _7C:int = 88;
        public static const _217:int = 89;
        public static const _0uK:int = 90;
        public static const x6:int = 91;
        public static const _1KK:int = 92;
        public static const j0:int = 93;
        public static const _22o:int = 94;
        public static const _17K:int = 95;
        public static const _1-x:int = 96;
        public static const KL:int = 97;

        public var 0tC:uint = 0;
        public var 1gE:int;
        public var DI:String;


        public static function _1Ky(_arg1:int):String{
            switch (_arg1)
            {
                case _0S8:
                    return (_du._0KK);
                case _14a:
                    return (_du._10h);
                case set :
                    return (_du._1ES);
                case _26o:
                    return (_du._0HF);
                case _0X7:
                    return (_du._0b-);
                case _1Wg:
                    return (_du._1X6);
                case _3b:
                    return (_du._lD);
                case _8r:
                    return (_du._1rA);
                case HB:
                    return (_du._0EW);
                case _18f:
                    return (_du._58);
                case _0jH:
                    return (_du._1J);
                case _0R5:
                    return (_du._cc);
                case _0tQ:
                    return (_du._G9);
            }
            return (_du._0WW);
        }


        public function _00J():Boolean{
            switch (this._0tC)
            {
                case _0vZ:
                case mS:
                case lA:
                case _06l:
                case _0u:
                    return (true);
            }
            return (false);
        }

        public function parseFromInput(_arg1:IDataInput):void{
            this._0tC = _arg1.readUnsignedByte();
            if (!this._00J())
            {
                this._1gE = _arg1.readInt();
            } else
            {
                this.DI = _arg1.readUTF();
            }
        }

        public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeByte(this._0tC);
            if (!this._00J())
            {
                _arg1.writeInt(this._1gE);
            } else
            {
                _arg1.writeUTF(this.DI);
            }
        }

        public function toString():String{
            if (!this._00J())
            {
                return ((((("[" + this._0tC) + ": ") + this._1gE) + "]"));
            }
            return ((((("[" + this._0tC) + ': "') + this.DI) + '"]'));
        }


    }
}//package g0

