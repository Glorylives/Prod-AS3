// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.oj

package 1PB{
    import flash.text.TextFieldAutoSize;
    import _1aA.Lz;
    import 1jB.1sM;
    import AO.du;
    import _CU._13j;

    public class oj {

        public static const 0iq:uint = 36;
        public static const sr:uint = 22;
        private static const LEFT:String = TextFieldAutoSize.LEFT;//"left"
        private static const CENTER:String = TextFieldAutoSize.CENTER;//"center"
        private static const RIGHT:String = TextFieldAutoSize.RIGHT;//"right"

        private static var Mt:Lz;
        private static var 1xV:Lz;
        private static var 0eR:Lz;
        private static var cM:Lz;
        private static var Jz:Lz;
        private static var 1ue:Lz;
        private static var 0mi:Lz;
        private static var 0yX:Lz;
        private static var 1vu:Lz;
        private static var bJ:Lz;
        private static var kS:Lz;


        public static function 0P6():Lz{
            return ((Mt = ((Mt) || (1sf(1sM.1Lu, 0iq, CENTER, true)))));
        }

        public static function 1LT():Lz{
            return ((kS = ((kS) || (1sf(du.175, sr, LEFT)))));
        }

        public static function 0N1():Lz{
            return ((bJ = ((bJ) || (1sf(du.1vO, sr, RIGHT)))));
        }

        public static function QS():Lz{
            return ((1vu = ((1vu) || (1sf(du.1vx, 0iq, CENTER)))));
        }

        public static function 0gk():Lz{
            return ((0eR = ((0eR) || (1sf(1sM.GS, sr, LEFT)))));
        }

        public static function FX():Lz{
            return ((cM = ((cM) || (1sf(1sM.vC, sr, LEFT)))));
        }

        public static function 1VK():Lz{
            return ((1xV = ((1xV) || (1sf(1sM.1T6, sr, RIGHT)))));
        }

        public static function 1eY():Lz{
            return ((Jz = ((Jz) || (1sf(1sM.1KL, sr, RIGHT)))));
        }

        public static function 1ml():Lz{
            return ((1ue = ((1ue) || (1sf(1sM.15, sr, RIGHT)))));
        }

        public static function 1G0():Lz{
            return ((0mi = ((0mi) || (1sf(1sM.tD, sr, RIGHT)))));
        }

        public static function 12h():Lz{
            return ((0yX = ((0yX) || (1sf(1sM.1BL, sr, LEFT)))));
        }

        private static function 1sf(_arg1:String, _arg2:int, _arg3:String, _arg4:Boolean=false):Lz{
            var _local5:Lz = new Lz(_arg1, _arg2, _arg4);
            _local5.setAutoSize(_arg3);
            _local5.setVerticalAlign(_13j.MIDDLE);
            return (_local5);
        }


    }
}//package 1PB

