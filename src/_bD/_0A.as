// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//bD.0A-

package _bD{
    import flash.display.Sprite;

    public class _0A {

        private static const _26r:Number = 95;
        public static const TE:Number = 25;
        private static const _0Xs:Number = 0.4;
        private static const kE:Number = 0;
        public static const _0Fi:uint = 28;


        public static function gU():Sprite{
            var _local1:Number = _26r;
            var _local2:Number = TE;
            return (_23(_local1, _local2));
        }

        public static function _23(_arg1:Number, _arg2:Number):Sprite{
            var _local3:Sprite = new Sprite();
            return (_07H(_local3, _arg1, _arg2));
        }

        private static function _07H(_arg1:Sprite, _arg2:Number, _arg3:Number):Sprite{
            _arg1.graphics.beginFill(kE, _0Xs);
            _arg1.graphics.drawRoundRect(0, 0, _arg2, _arg3, 12, 12);
            _arg1.graphics.endFill();
            return (_arg1);
        }


    }
}//package bD

