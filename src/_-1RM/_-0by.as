// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1RM.0by

package 1RM{
    import flash.display.Sprite;
    import flash.display.Shape;
    import _CU._13j;
    import flash.text.TextFieldAutoSize;
    import flashx.textLayout.formats.VerticalAlign;
    import 1n4.1cA;
    import 1js.1fP;
    import 1js.4w;

    public class 0by extends Sprite {

        private const WIDTH:int = 235;
        private const HEIGHT:int = 252;
        private const BEVEL:int = 4;
        private const KM:int = 6;
        private const 0wU:int = 25;
        private const 1ss:int = 8;
        private const 4g:Shape = new Shape();
        private const 1el:_13j = 0by.makeText();

        public function 0by(){
            addChild(this.4g);
            addChild(this.1el);
        }

        private function makeText():_13j{
            var _local1:_13j = new _13j().setSize(16).setLeading(3).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(VerticalAlign.TOP).setMultiLine(true).setWordWrap(true).setPosition(this.1ss, this.1ss).setTextWidth((this.WIDTH - (2 * this.1ss))).setTextHeight((this.HEIGHT - (2 * this.1ss)));
            return (_local1);
        }

        public function 1wG(_arg1:String):void{
            this.1el.setStringBuilder(new 1cA().setParams(_arg1));
            this.1el.textChanged.add(this.1FH);
        }

        private function 1FH():void{
            this.1BK();
        }

        private function 1BK():void{
            var _local1:1fP = new 1fP();
            var _local2:4w = new 4w(this.WIDTH, (this.1el.height + 16), this.BEVEL);
            this.4g.graphics.beginFill(0xE0E0E0);
            _local1.0Zx(0, 0, _local2, this.4g.graphics);
            this.4g.graphics.endFill();
            this.4g.graphics.beginFill(0xE0E0E0);
            this.4g.graphics.moveTo((this.0wU - this.KM), 0);
            this.4g.graphics.lineTo(this.0wU, -(this.KM));
            this.4g.graphics.lineTo((this.0wU + this.KM), 0);
            this.4g.graphics.endFill();
        }


    }
}//package 1RM

