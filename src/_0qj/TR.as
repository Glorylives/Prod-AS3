// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.TR

package _0qj{
    public class TR {

        public static const _1HG:uint = 0xFF00;
        public static const _1Bj:uint = 0xFF0000;
        public static const _1U4:uint = 16777103;


        public static function v9(_arg1:String, _arg2:String):String{
            var _local3 = (((('<font color="' + _arg2) + '">') + _arg1) + "</font>");
            return (_local3);
        }

        public static function _1pw(_arg1:uint):String{
            return ((('<font color="#' + _arg1.toString(16)) + '">'));
        }

        public static function _17H():String{
            return ("</font>");
        }

        public static function rI(_arg1:Number):String{
            var _local2:Number = (_arg1 - int(_arg1));
            return ((((int((_local2 * 10)))==0) ? int(_arg1).toString() : _arg1.toFixed(1)));
        }

        public static function _1kE(_arg1:Number):uint{
            if (_arg1 < 0)
            {
                return (_1Bj);
            };
            if (_arg1 > 0)
            {
                return (_1HG);
            };
            return (_1U4);
        }


    }
}//package 0qj

