// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.0DR

package OZ{
    import flash.display.Sprite;
    import flash.display.BitmapData;
    import kabam.rotmg.assets.services.02W;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;

    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import 1PB.cO;
    import _CU._13j;
    import 1n4.1WS;
    import 1n4.1cA;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.util.Currency;
    import 1n4.1Jo;


    public class 0DR extends Sprite {

        private static const BEVEL:int = 4;
        private static const 1ss:int = 2;
        public static const D6:BitmapData = 02W.makeCoin();
        public static const fame:BitmapData = 02W.19i();
        public static const LG:BitmapData = 02W.26N();
        private static const 1c9:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.1Z6);

        private const 09A:GraphicsSolidFill = new GraphicsSolidFill(0xFFFFFF, 1);
        private const 1Ak:GraphicsSolidFill = new GraphicsSolidFill(0x7F7F7F, 1);
        private const 07a:GraphicsPath = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        private const graphicsData:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[0DR.09A, 0DR.07a, com.company.util._tu.END_FILL];
        private const 1he:cO = new cO();

        public var 24n:String;
        public var text:_13j;
        private var 0f5:1WS;
        private var zM:1cA;
        public var icon:Bitmap;
        public var price:int = -1;
        public var currency:int = -1;
        public var k4:int = -1;
        private var dQ:Number = 100;
        private var  else:Number = 100;

        public function 0DR(_arg1:Number, _arg2:Number){
            this.0f5 = new 1WS("");
            this.zM = new 1cA();
            super();
            this.24n = "   ";
            this.dQ = _arg1;
            this. else = _arg2;
            this.price = 1;
            this.currency = Currency.1Jg;
            this.text = new _13j().setSize(_arg1).setColor(0x363636).setBold(true);
            this.1he.push(this.text.textChanged);
            var _local3:1Jo = (((this.24n)!="") ? this.zM.setParams(this.24n, {cost:this.price.toString()}) : this.0f5.setString(this.price.toString()));
            this.text.setStringBuilder(_local3);
            this.1he.complete.add(this.vi);
            addChild(this.text);
        }

        public function setEnabled(_arg1:Boolean):void{
            if (_arg1 != mouseEnabled)
            {
                mouseEnabled = _arg1;
                filters = ((_arg1) ? [] : [1c9]);
                this.draw();
            }
        }

        private function vi():void{
            this.044();
            this.draw();
        }

        private function 044():void{
            tu.ln(this.07a);
            _tu.0S-(0, 0, this.Pj(), this.getHeight(), BEVEL, [1, 1, 1, 1], this.07a);
        }

        private function draw():void{
            this.graphicsData[0] = ((mouseEnabled) ? this.09A : this.1Ak);
            graphics.clear();
            graphics.drawGraphicsData(this.graphicsData);
        }

        private function Pj():int{
            return (this.dQ);
        }

        private function getHeight():int{
            return (this. else);
        }


    }
}//package OZ

