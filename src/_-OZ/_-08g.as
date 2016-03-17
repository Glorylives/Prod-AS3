// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.08g

package OZ{
    import WL.Lr;
    import flash.display.BitmapData;
    import kabam.rotmg.assets.services.02W;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import 1PB.cO;
    import _CU._13j;
    import 1n4.1WS;
    import 1n4.1cA;
    import flash.display.Bitmap;
    import 1n4.1Jo;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.util.Currency;
    import flash.display.GraphicsStroke;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.display.Graphics;
    import __AS3__.vec.*;

    public class 08g extends Lr {

        private static const BEVEL:int = 4;
        private static const 1ss:int = 2;
        public static const D6:BitmapData = 02W.makeCoin();
        public static const fortune:BitmapData = 02W.1vS();
        public static const fame:BitmapData = 02W.19i();
        public static const LG:BitmapData = 02W.26N();
        private static const 1c9:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.1Z6);

        private const 09A:GraphicsSolidFill = new GraphicsSolidFill(0xFFFFFF, 1);
        private const 1Ak:GraphicsSolidFill = new GraphicsSolidFill(0x7F7F7F, 1);
        private const 07a:GraphicsPath = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        private const graphicsData:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[08g.09A, 08g.07a, com.company.util._tu.END_FILL];
        private const 1he:cO = new cO();

        public var 24n:String;
        public var text:_13j;
        private var 0f5:1WS;
        private var zM:1cA;
        public var icon:Bitmap;
        public var price:int = -1;
        public var currency:int = -1;
        public var k4:int = -1;
        private var PT:Boolean = false;
        private var YL:int = 0x545454;
        private var 0PW:int = -1;
        private var 0TG:int = -1;
        private var 09p:int = 4;

        public function 08g(_arg1:String, _arg2:int, _arg3:int, _arg4:int, _arg5:Boolean=false){
            this.0f5 = new 1WS("");
            this.zM = new 1cA();
            super();
            this.24n = _arg1;
            this.text = new _13j().setSize(_arg2).setColor(0x363636).setBold(true);
            this.1he.push(this.text.textChanged);
            var _local6:1Jo = (((_arg1)!="") ? this.zM.setParams(_arg1, {cost:_arg3.toString()}) : this.0f5.setString(_arg3.toString()));
            this.text.setStringBuilder(_local6);
            this.1he.complete.add(this.vi);
            this.1he.complete.addOnce(this.1Ss);
            addChild(this.text);
            this.icon = new Bitmap();
            addChild(this.icon);
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            this.setPrice(_arg3, _arg4);
            this.PT = _arg5;
        }

        override public function setPrice(_arg1:int, _arg2:int):void{
            var _local3:1Jo;
            if (((!((this.price == _arg1))) || (!((this.currency == _arg2)))))
            {
                this.price = _arg1;
                this.currency = _arg2;
                _local3 = (((this.24n)!="") ? this.zM.setParams(this.24n, {cost:_arg1.toString()}) : this.0f5.setString(_arg1.toString()));
                this.text.setStringBuilder(_local3);
                this.vi();
            };
        }

        public function setStringBuilder(_arg1:1Jo){
            this.text.setStringBuilder(_arg1);
            this.vi();
        }

        public function 1V1():int{
            return (this.price);
        }

        public function 1wG(_arg1:String):void{
            this.text.setStringBuilder(new 1WS(_arg1));
            this.vi();
        }

        override public function setEnabled(_arg1:Boolean):void{
            if (_arg1 != mouseEnabled)
            {
                mouseEnabled = _arg1;
                filters = ((_arg1) ? [] : [1c9]);
                this.draw();
            };
        }

        override public function setWidth(_arg1:int):void{
            this.k4 = _arg1;
            this.vi();
        }

        private function vi():void{
            this.1Id();
            this.0B-();
            this.044();
            this.draw();
        }

        private function 1Ss():void{
            this.vi();
            fh.dispatch();
        }

        private function 0B-():void{
            switch (this.currency)
            {
                case Currency.1Jg:
                    this.icon.bitmapData = D6;
                    break;
                case Currency.FAME:
                    this.icon.bitmapData = fame;
                    break;
                case Currency.py:
                    this.icon.bitmapData = LG;
                    break;
                case Currency.Ls:
                    this.icon.bitmapData = fortune;
                    break;
                default:
                    this.icon.bitmapData = null;
            };
            this.24E();
        }

        private function 044():void{
            tu.ln(this.07a);
            tu.0S-(0, 0, this.Pj(), this.getHeight(), BEVEL, [1, 1, 1, 1], this.07a);
        }

        private function 1Id():void{
            this.text.x = ((((this.Pj() - this.icon.width) - this.text.width) - 1ss) * 0.5);
            this.text.y = this.09p;
        }

        private function 24E():void{
            this.icon.x = ((this.text.x + this.text.width) + 1ss);
            this.icon.y = (((this.getHeight() - this.icon.height) - 1) * 0.5);
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.09A.color = 16768133;
            this.draw();
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.09A.color = 0xFFFFFF;
            this.draw();
        }

        public function draw():void{
            this.graphicsData[0] = ((mouseEnabled) ? this.09A : this.1Ak);
            graphics.clear();
            graphics.drawGraphicsData(this.graphicsData);
            if (this.PT)
            {
                this.ih(graphics);
            };
        }

        private function Pj():int{
            return ((((this.0PW)!=-1) ? this.0PW : Math.max(this.k4, ((this.text.width + this.icon.width) + (3 * 1ss)))));
        }

        private function getHeight():int{
            return ((((this.0TG)!=-1) ? this.0TG : (this.text.height + (this.09p * 2))));
        }

        public function 1gl():void{
            this.0TG = this.getHeight();
            this.0PW = this.Pj();
        }

        public function QK():void{
            this.0TG = -1;
            this.0PW = -1;
        }

        public function 1FM(_arg1:Number):void{
            this.0PW = (this.Pj() * _arg1);
            this.vi();
        }

        public function 0tY(_arg1:Number):void{
            this.09p = (this.09p * _arg1);
            this.vi();
        }

        public function 05w(_arg1:int):void{
            this.YL = _arg1;
        }

        private function ih(_arg1:Graphics):void{
            var _local2:GraphicsSolidFill = new GraphicsSolidFill(0, 0.01);
            var _local3:GraphicsSolidFill = new GraphicsSolidFill(this.YL, 0.6);
            var _local4:GraphicsStroke = new GraphicsStroke(4, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, _local3);
            var _local5:GraphicsPath = new GraphicsPath();
            tu.0S-(0, 0, this.Pj(), this.getHeight(), 4, tu.0TX, _local5);
            var _local6:Vector.<IGraphicsData> = new <IGraphicsData>[_local4, _local2, _local5, tu.END_FILL, tu.1l4];
            _arg1.drawGraphicsData(_local6);
        }


    }
}//package OZ

