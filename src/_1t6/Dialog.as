// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1t6.Dialog

package _1t6{
    import flash.display.Sprite;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import flash.display.Shape;
    import _CU._13j;
    import com.company.assembleegameclient.util._0sg;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import _1PB._cO;
    import com.company.assembleegameclient.ui._1nN;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import _1n4._1cA;
    import _1n4._1Jo;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import com.company.googleanalytics.GA;
    import flash.display.Graphics;
    import flash.events.Event;

    public class Dialog extends Sprite {

        public static const LEFT_BUTTON:String = "dialogLeftButton";
        public static const RIGHT_BUTTON:String = "dialogRightButton";
        public static const _0Tl:int = 0xB3B3B3;
        public static const WIDTH:int = 300;

        protected const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[_1F4, _0B9, path_, com.company.util._tu.END_FILL, com.company.util._tu._1l4];

        public var box_:Sprite;
        public var rect_:Shape;
        public var a:_13j;
        public var _064:_13j = null;
        public var ZM:String = null;
        public var offsetX:Number = 0;
        public var offsetY:Number = 0;
        public var Wy:_0sg;
        public var Tw:int = 2;
        public var Iw:int = 8;
        public var _0Jn:int = 16;
        public var _0AU:int = 10;
        public var _203:int;
        private var outlineFill_:GraphicsSolidFill;
        private var _1F4:GraphicsStroke;
        private var _0B9:GraphicsSolidFill;
        protected var path_:GraphicsPath;
        protected var _0uD:_cO;
        protected var leftButton:_1nN;
        protected var rightButton:_1nN;
        private var _1dt:String;
        private var _1PP:String;
        private var _1oW:Object;

        public function Dialog(_arg1:String, _arg2:String, _arg3:String, _arg4:String, _arg5:String, _arg6:Object=null){
            this.box_ = new Sprite();
            this.rect_ = new Shape();
            this._203 = this.setDialogWidth();
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this._1F4 = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this._0B9 = new GraphicsSolidFill(0x363636, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this._0uD = new _cO();
            this._1oW = _arg6;
            this._1dt = _arg3;
            this._1PP = _arg4;
            super();
            this.Wy = new _0sg(this);
            this.ZM = _arg5;
            this.g5(_arg2, _arg1);
            this.makeUIAndAdd();
            this._0uD.complete.addOnce(this.onComplete);
            addChild(this.box_);
        }

        public function _1f3():String{
            return (this._1dt);
        }

        public function hH():String{
            return (this._1PP);
        }

        public function _12Z(_arg1:String, _arg2:Object):void{
            this.a.setStringBuilder(new _1cA().setParams(_arg1, _arg2));
        }

        public function _0mh(_arg1:_1Jo):void{
            this._064.setStringBuilder(_arg1);
        }

        protected function setDialogWidth():int{
            return (WIDTH);
        }

        private function g5(_arg1:String, _arg2:String):void{
            this.initText(_arg1);
            this._0GR(this.a);
            this._0Ry(_arg2);
            this._0fe();
        }

        protected function makeUIAndAdd():void{
        }

        protected function initText(_arg1:String):void{
            this.a = new _13j().setSize(14).setColor(_0Tl);
            this.a.setTextWidth((this._203 - 40));
            this.a.x = 20;
            this.a.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.a.setHTML(true);
            var _local2:_1cA = new _1cA().setParams(_arg1).setPrefix('<p align="center">').setPostfix("</p>");
            if (this._1oW)
            {
                _local2.setParams(_arg1, this._1oW);
            }
            this.a.setStringBuilder(_local2);
            this.a.mouseEnabled = true;
            this.a.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
        }

        private function _0GR(_arg1:_13j):void{
            this.box_.addChild(_arg1);
            this._0uD.push(_arg1.textChanged);
        }

        private function _0Ry(_arg1:String):void{
            if (_arg1 != null)
            {
                this._064 = new _13j().setSize(18).setColor(5746018);
                this._064.setBold(true);
                this._064.setAutoSize(TextFieldAutoSize.CENTER);
                this._064.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 1)];
                this._064.setStringBuilder(new _1cA().setParams(_arg1));
                this._0GR(this._064);
            }
        }

        private function _0fe():void{
            if (this._1dt != null)
            {
                this.leftButton = new _1nN(16, this._1dt, 120);
                this.leftButton.addEventListener(MouseEvent.CLICK, this._0Bt);
            }
            if (this._1PP != null)
            {
                this.rightButton = new _1nN(16, this._1PP, 120);
                this.rightButton.addEventListener(MouseEvent.CLICK, this.hV);
            }
        }

        private function onComplete():void{
            this.draw();
            this.Yw();
        }

        private function Yw():void{
            this.box_.x = ((this.offsetX + (this.Wy._5m() / 2)) - (this.box_.width / 2));
            this.box_.y = ((this.offsetY + (this.Wy.Hc() / 2)) - (this.getBoxHeight() / 2));
            if (this.ZM != null)
            {
                this.t6();
            }
        }

        private function t6():void{
            try
            {
                GA.global().trackPageview(this.ZM);
            } catch(error:Error)
            {
            }
        }

        private function draw():void{
            this._1mo();
            this.drawAdditionalUI();
            this._23x();
        }

        protected function drawAdditionalUI():void{
        }

        protected function _23x():void{
            if (this.box_.contains(this.rect_))
            {
                this.box_.removeChild(this.rect_);
            }
            this._08w();
            this._26X();
            this._0aJ();
            this.drawGraphicsTemplate();
            this.box_.addChildAt(this.rect_, 0);
            this.box_.filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16, 1)];
        }

        protected function drawGraphicsTemplate():void{
        }

        private function _0aJ():void{
            tu.ln(this.path_);
            _tu._0S(0, 0, this._203, (this.getBoxHeight() + this._0AU), 4, [1, 1, 1, 1], this.path_);
            var _local1:Graphics = this.rect_.graphics;
            _local1.clear();
            _local1.drawGraphicsData(this.graphicsData_);
        }

        protected function getBoxHeight():Number{
            return (this.box_.height);
        }

        private function _26X():void{
            var _local1:int;
            if (this.leftButton != null)
            {
                _local1 = (this.box_.height + this._0Jn);
                this.box_.addChild(this.leftButton);
                this.leftButton.y = _local1;
                if (this.rightButton == null)
                {
                    this.leftButton.x = ((this._203 / 2) - (this.leftButton.width / 2));
                } else
                {
                    this.leftButton.x = ((this._203 / 4) - (this.leftButton.width / 2));
                    this.box_.addChild(this.rightButton);
                    this.rightButton.x = (((3 * this._203) / 4) - (this.rightButton.width / 2));
                    this.rightButton.y = _local1;
                }
            }
        }

        private function _1mo():void{
            if (this._064 != null)
            {
                this._064.x = (this._203 / 2);
                this._064.y = this.Tw;
                this.a.y = (this._064.height + this.Iw);
            } else
            {
                this.a.y = 4;
            }
        }

        private function _08w():void{
            if (((this.leftButton) && (this.box_.contains(this.leftButton))))
            {
                this.box_.removeChild(this.leftButton);
            }
            if (((this.rightButton) && (this.box_.contains(this.rightButton))))
            {
                this.box_.removeChild(this.rightButton);
            }
        }

        protected function _0Bt(_arg1:MouseEvent):void{
            dispatchEvent(new Event(LEFT_BUTTON));
        }

        protected function hV(_arg1:Event):void{
            dispatchEvent(new Event(RIGHT_BUTTON));
        }


    }
}//package 1t6

