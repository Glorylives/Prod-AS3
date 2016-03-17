// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.KR

package 0uE{
    import flash.display.Sprite;
    import flash.display.DisplayObjectContainer;
    import _CU._13j;
    import 1n4.1cA;
    import flash.text.TextFieldAutoSize;

    public class KR {

        private static const VJ:int = 14;


        public static function K():DisplayObjectContainer{
            var _local1:Sprite = new Sprite();
            _local1.graphics.beginFill(0x535353);
            _local1.graphics.drawRoundRect(0, 0, 222, 40, 10, 10);
            _local1.graphics.endFill();
            return (_local1);
        }

        public static function makeText():_13j{
            var _local1:_13j = new _13j();
            _local1.setStringBuilder(new 1cA().setParams("FusionStrength.text")).setAutoSize(TextFieldAutoSize.LEFT).setColor(FusionStrength.Oj);
            0kn(_local1);
            return (_local1);
        }

        public static function 1l8():_13j{
            var _local1:_13j = new _13j().setAutoSize(TextFieldAutoSize.RIGHT);
            0kn(_local1);
            return (_local1);
        }

        private static function 0kn(_arg1:_13j):void{
            _arg1.setVerticalAlign(_13j.MIDDLE).setSize(VJ).setBold(true);
        }


    }
}//package 0uE

