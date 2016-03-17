// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//bD.0A-

package bD{
    import flash.display.Sprite;

    public class 0A- {

        private static const 26r:Number = 95;
        public static const TE:Number = 25;
        private static const 0Xs:Number = 0.4;
        private static const kE:Number = 0;
        public static const 0Fi:uint = 28;


        public static function gU():Sprite{
            var _local1:Number = 26r;
            var _local2:Number = TE;
            return (23(_local1, _local2));
        }

        public static function 23(_arg1:Number, _arg2:Number):Sprite{
            var _local3:Sprite = new Sprite();
            return (07H(_local3, _arg1, _arg2));
        }

        private static function 07H(_arg1:Sprite, _arg2:Number, _arg3:Number):Sprite{
            _arg1.graphics.beginFill(kE, 0Xs);
            _arg1.graphics.drawRoundRect(0, 0, _arg2, _arg3, 12, 12);
            _arg1.graphics.endFill();
            return (_arg1);
        }


    }
}//package bD

