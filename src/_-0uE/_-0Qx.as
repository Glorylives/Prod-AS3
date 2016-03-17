// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.0Qx

package 0uE{
    import flash.display.Sprite;
    import 2--.CaretakerQueryDialog;
    import 1js.1fP;
    import 1js.4w;
    import flash.display.Shape;
    import _CU._13j;
    import _Jy._1HZ;
    import 1n4.1cA;
    import flash.text.TextFieldAutoSize;
    import flash.events.MouseEvent;

    public class 0Qx extends Sprite {

        private static const WIDTH:int = (CaretakerQueryDialog.WIDTH - 40);//234
        private static const HEIGHT:int = 40;
        private static const BEVEL:int = 2;
        private static const OUT:uint = 0x5C5C5C;
        private static const 0mD:uint = 0x7F7F7F;

        private const Dz:1fP = new 1fP();
        private const rect:4w = new 4w(WIDTH, HEIGHT, BEVEL);
        private const background:Shape = 0Qx.lg();
        private const 1el:_13j = 0Qx.22();
        public const textChanged:_1HZ = 0Qx.1el.textChanged;

        public var info:String;

        public function 0Qx(_arg1:String, _arg2:String){
            this.info = _arg2;
            this.1el.setStringBuilder(new 1cA().setParams(_arg1));
            this.1KX();
        }

        private function lg():Shape{
            var _local1:Shape = new Shape();
            this.0aJ(_local1, OUT);
            addChild(_local1);
            return (_local1);
        }

        private function 0aJ(_arg1:Shape, _arg2:uint):void{
            _arg1.graphics.clear();
            _arg1.graphics.beginFill(_arg2);
            this.Dz.0Zx(0, 0, this.rect, _arg1.graphics);
            _arg1.graphics.endFill();
        }

        private function 22():_13j{
            var _local1:_13j = new _13j().setSize(16).setColor(0xFFFFFF).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE).setPosition((WIDTH / 2), (HEIGHT / 2));
            _local1.mouseEnabled = false;
            addChild(_local1);
            return (_local1);
        }

        private function 1KX():void{
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.0aJ(this.background, 0mD);
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.0aJ(this.background, OUT);
        }


    }
}//package 0uE

