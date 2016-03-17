// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.11T

package OZ{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import com.company.rotmg.graphics.StarGraphic;
    import flash.display.Graphics;
    import flash.geom.ColorTransform;
    import __AS3__.vec.*;

    public class 11T extends Sprite {

        private static const 02u:int = 5;
        private static const 0qr:int = 4;
        private static const 05-:int = 15;
        private static const 1Vo:uint = 0x252525;
        private static const 1qL:uint = 0x838383;
        private static const 0hB:uint = 0xFFFFFF;

        private const stars:Vector.<StarGraphic> = 11T.0Pt();
        private const background:Sprite = 11T.lg();


        private function 0Pt():Vector.<StarGraphic>{
            var _local1:Vector.<StarGraphic> = this.07K();
            this.1Ye(_local1);
            return (_local1);
        }

        private function 07K():Vector.<StarGraphic>{
            var _local1:Vector.<StarGraphic> = new Vector.<StarGraphic>(02u, true);
            var _local2:int;
            while (_local2 < 02u)
            {
                _local1[_local2] = new StarGraphic();
                addChild(_local1[_local2]);
                _local2++;
            };
            return (_local1);
        }

        private function 1Ye(_arg1:Vector.<StarGraphic>):void{
            var _local2:int;
            while (_local2 < 02u)
            {
                _arg1[_local2].x = (0qr + (_arg1[0].width * _local2));
                _arg1[_local2].y = 0qr;
                _local2++;
            };
        }

        private function lg():Sprite{
            var _local1:Sprite = new Sprite();
            this.0aJ(_local1.graphics);
            addChildAt(_local1, 0);
            return (_local1);
        }

        private function 0aJ(_arg1:Graphics):void{
            var _local2:StarGraphic = this.stars[0];
            var _local3:int = ((_local2.width * 02u) + (2 * 0qr));
            var _local4:int = (_local2.height + (2 * 0qr));
            _arg1.clear();
            _arg1.beginFill(1Vo);
            _arg1.drawRoundRect(0, 0, _local3, _local4, 05-, 05-);
            _arg1.endFill();
        }

        public function setStars(_arg1:int):void{
            var _local2:int;
            while (_local2 < 02u)
            {
                this.04X(_local2, _arg1);
                _local2++;
            };
        }

        private function 04X(_arg1:int, _arg2:int):void{
            var _local3:StarGraphic = this.stars[_arg1];
            var _local4:ColorTransform = _local3.transform.colorTransform;
            _local4.color = (((_arg1 < _arg2)) ? 0hB : 1qL);
            _local3.transform.colorTransform = _local4;
        }


    }
}//package OZ

