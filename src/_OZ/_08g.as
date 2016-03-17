// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.08g

package _OZ{
    import WL.Lr;

import _1PB._cO;

import _1n4._1Jo;

import _1n4._1WS;

import _1n4._1cA;

import flash.display.BitmapData;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import _CU._13j;
    import flash.display.Bitmap;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.util.Currency;
    import flash.display.GraphicsStroke;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.display.Graphics;

import kabam.rotmg.assets.services._02W;

public class _08g extends Lr {

        private static const BEVEL:int = 4;
        private static const _1ss:int = 2;
        public static const D6:BitmapData = _02W.makeCoin();
        public static const fortune:BitmapData = _02W._1vS();
        public static const fame:BitmapData = _02W._19i();
        public static const LG:BitmapData = _02W._26N();
        private static const _1c9:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._1Z6);

        private const _09A:GraphicsSolidFill = new GraphicsSolidFill(0xFFFFFF, 1);
        private const _1Ak:GraphicsSolidFill = new GraphicsSolidFill(0x7F7F7F, 1);
        private const _07a:GraphicsPath = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        private const graphicsData:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[_09A, _07a, com.company.util._tu.END_FILL];
        private const _1he:_cO = new _cO();

        public var _24n:String;
        public var text:_13j;
        private var _0f5:_1WS;
        private var zM:_1cA;
        public var icon:Bitmap;
        public var price:int = -1;
        public var currency:int = -1;
        public var k4:int = -1;
        private var PT:Boolean = false;
        private var YL:int = 0x545454;
        private var _0PW:int = -1;
        private var _0TG:int = -1;
        private var _09p:int = 4;

        public function _08g(_arg1:String, _arg2:int, _arg3:int, _arg4:int, _arg5:Boolean=false){
            this._0f5 = new _1WS("");
            this.zM = new _1cA();
            super();
            this._24n = _arg1;
            this.text = new _13j().setSize(_arg2).setColor(0x363636).setBold(true);
            this._1he.push(this.text.textChanged);
            var _local6:_1Jo = (((_arg1)!="") ? this.zM.setParams(_arg1, {cost:_arg3.toString()}) : this._0f5.setString(_arg3.toString()));
            this.text.setStringBuilder(_local6);
            this._1he.complete.add(this.vi);
            this._1he.complete.addOnce(this._1Ss);
            addChild(this.text);
            this.icon = new Bitmap();
            addChild(this.icon);
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            this.setPrice(_arg3, _arg4);
            this.PT = _arg5;
        }

        override public function setPrice(_arg1:int, _arg2:int):void{
            var _local3:_1Jo;
            if (((!((this.price == _arg1))) || (!((this.currency == _arg2)))))
            {
                this.price = _arg1;
                this.currency = _arg2;
                _local3 = (((this._24n)!="") ? this.zM.setParams(this._24n, {cost:_arg1.toString()}) : this._0f5.setString(_arg1.toString()));
                this.text.setStringBuilder(_local3);
                this.vi();
            };
        }

        public function setStringBuilder(_arg1:_1Jo){
            this.text.setStringBuilder(_arg1);
            this.vi();
        }

        public function _1V1():int{
            return (this.price);
        }

        public function _1wG(_arg1:String):void{
            this.text.setStringBuilder(new _1WS(_arg1));
            this.vi();
        }

        override public function setEnabled(_arg1:Boolean):void{
            if (_arg1 != mouseEnabled)
            {
                mouseEnabled = _arg1;
                filters = ((_arg1) ? [] : [_1c9]);
                this.draw();
            };
        }

        override public function setWidth(_arg1:int):void{
            this.k4 = _arg1;
            this.vi();
        }

        private function vi():void{
            this._1Id();
            this._0B();
            this._044();
            this.draw();
        }

        private function _1Ss():void{
            this.vi();
            fh.dispatch();
        }

        private function _0B():void{
            switch (this.currency)
            {
                case Currency._1Jg:
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
            this._24E();
        }

        private function _044():void{
            tu.ln(this._07a);
            tu._0S(0, 0, this.Pj(), this.getHeight(), BEVEL, [1, 1, 1, 1], this._07a);
        }

        private function _1Id():void{
            this.text.x = ((((this.Pj() - this.icon.width) - this.text.width) - _1ss) * 0.5);
            this.text.y = this._09p;
        }

        private function _24E():void{
            this.icon.x = ((this.text.x + this.text.width) + _1ss);
            this.icon.y = (((this.getHeight() - this.icon.height) - 1) * 0.5);
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this._09A.color = 16768133;
            this.draw();
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this._09A.color = 0xFFFFFF;
            this.draw();
        }

        public function draw():void{
            this.graphicsData[0] = ((mouseEnabled) ? this._09A : this._1Ak);
            graphics.clear();
            graphics.drawGraphicsData(this.graphicsData);
            if (this.PT)
            {
                this.ih(graphics);
            };
        }

        private function Pj():int{
            return ((((this._0PW)!=-1) ? this._0PW : Math.max(this.k4, ((this.text.width + this.icon.width) + (3 * _1ss)))));
        }

        private function getHeight():int{
            return ((((this._0TG)!=-1) ? this._0TG : (this.text.height + (this._09p * 2))));
        }

        public function _1gl():void{
            this._0TG = this.getHeight();
            this._0PW = this.Pj();
        }

        public function QK():void{
            this._0TG = -1;
            this._0PW = -1;
        }

        public function _1FM(_arg1:Number):void{
            this._0PW = (this.Pj() * _arg1);
            this.vi();
        }

        public function _0tY(_arg1:Number):void{
            this._09p = (this._09p * _arg1);
            this.vi();
        }

        public function _05w(_arg1:int):void{
            this.YL = _arg1;
        }

        private function ih(_arg1:Graphics):void{
            var _local2:GraphicsSolidFill = new GraphicsSolidFill(0, 0.01);
            var _local3:GraphicsSolidFill = new GraphicsSolidFill(this.YL, 0.6);
            var _local4:GraphicsStroke = new GraphicsStroke(4, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, _local3);
            var _local5:GraphicsPath = new GraphicsPath();
            tu._0S(0, 0, this.Pj(), this.getHeight(), 4, tu._0TX, _local5);
            var _local6:Vector.<IGraphicsData> = new <IGraphicsData>[_local4, _local2, _local5, tu.END_FILL, tu._1l4];
            _arg1.drawGraphicsData(_local6);
        }


    }
}//package OZ

