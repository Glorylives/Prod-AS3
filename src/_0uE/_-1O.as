﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1O

package 0uE{
    import flash.display.Sprite;
    import flash.display.Shape;
    import 1js.1fP;
    import 1js.4w;
    import _CU._13j;
    import flash.text.TextFieldAutoSize;
    import flashx.textLayout.formats.VerticalAlign;
    import 1n4.1cA;

    public class 1O extends Sprite {

        private const WIDTH:int = 174;
        private const HEIGHT:int = 42;
        private const BEVEL:int = 4;
        private const KM:int = 6;

        public function 1O(_arg1:String){
            addChild(this.1BK());
            addChild(this.makeText(_arg1));
        }

        private function 1BK():Shape{
            var _local1:Shape = new Shape();
            this.0O1(_local1);
            return (_local1);
        }

        private function 0O1(_arg1:Shape):void{
            var _local2:1fP = new 1fP();
            var _local3:4w = new 4w(this.WIDTH, this.HEIGHT, this.BEVEL);
            var _local4:int = (this.HEIGHT / 2);
            _arg1.graphics.beginFill(0xE0E0E0);
            _local2.0Zx(0, 0, _local3, _arg1.graphics);
            _arg1.graphics.endFill();
            _arg1.graphics.beginFill(0xE0E0E0);
            _arg1.graphics.moveTo(0, (_local4 - this.KM));
            _arg1.graphics.lineTo(-(this.KM), _local4);
            _arg1.graphics.lineTo(0, (_local4 + this.KM));
            _arg1.graphics.endFill();
        }

        private function makeText(_arg1:String):_13j{
            var _local2:_13j = new _13j().setSize(16).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(VerticalAlign.MIDDLE).setPosition((this.WIDTH / 2), (this.HEIGHT / 2));
            _local2.setStringBuilder(new 1cA().setParams(_arg1));
            return (_local2);
        }


    }
}//package 0uE
