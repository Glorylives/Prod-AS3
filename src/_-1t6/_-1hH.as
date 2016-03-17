// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1t6.1hH

package 1t6{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import flash.display.Shape;
    import _CU._13j;
    import com.company.assembleegameclient.util.0sg;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import 1PB.cO;
    import com.company.assembleegameclient.ui.1nN;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import 1n4.1WS;
    import 1n4.1Jo;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import com.company.googleanalytics.GA;
    import flash.display.Graphics;
    import flash.events.Event;
    import __AS3__.vec.*;

    public class 1hH extends Sprite {

        public static const LEFT_BUTTON:String = "dialogLeftButton";
        public static const RIGHT_BUTTON:String = "dialogRightButton";
        public static const 0Tl:int = 0xB3B3B3;
        public static const WIDTH:int = 300;

        protected const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[1hH.1F4, 1hH.0B9, 1hH.path_, com.company.util._tu.END_FILL, com.company.util._tu.1l4];

        public var box_:Sprite;
        public var rect_:Shape;
        public var a:_13j;
        public var 064:_13j = null;
        public var ZM:String = null;
        public var offsetX:Number = 0;
        public var offsetY:Number = 0;
        public var Wy:0sg;
        public var Tw:int = 2;
        public var Iw:int = 8;
        public var 0Jn:int = 16;
        public var 0AU:int = 10;
        public var 203:int;
        private var outlineFill_:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var 0B9:GraphicsSolidFill;
        protected var path_:GraphicsPath;
        protected var 0uD:cO;
        protected var leftButton:1nN;
        protected var rightButton:1nN;
        private var 1dt:String;
        private var 1PP:String;
        private var 1oW:Object;

        public function 1hH(_arg1:String, _arg2:String, _arg3:String, _arg4:String, _arg5:String){
            this.box_ = new Sprite();
            this.rect_ = new Shape();
            this.203 = this.setDialogWidth();
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this.1F4 = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.0B9 = new GraphicsSolidFill(0x363636, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this.0uD = new cO();
            this.1oW = this.1oW;
            this.1dt = _arg3;
            this.1PP = _arg4;
            super();
            this.Wy = new 0sg(this);
            this.ZM = _arg5;
            this.g5(_arg2, _arg1);
            this.makeUIAndAdd();
            this.0uD.complete.addOnce(this.onComplete);
            addChild(this.box_);
        }

        public function 1f3():String{
            return (this.1dt);
        }

        public function hH():String{
            return (this.1PP);
        }

        public function 12Z(_arg1:String, _arg2:Object):void{
            this.a.setStringBuilder(new 1WS(_arg1));
        }

        public function 0mh(_arg1:1Jo):void{
            this.064.setStringBuilder(_arg1);
        }

        protected function setDialogWidth():int{
            return (WIDTH);
        }

        private function g5(_arg1:String, _arg2:String):void{
            this.initText(_arg1);
            this.0GR(this.a);
            this.0Ry(_arg2);
            this.0fe();
        }

        protected function makeUIAndAdd():void{
        }

        protected function initText(_arg1:String):void{
            this.a = new _13j().setSize(14).setColor(0Tl);
            this.a.setTextWidth((this.203 - 40));
            this.a.x = 20;
            this.a.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.a.setHTML(true);
            var _local2:1WS = new 1WS(_arg1).setPrefix('<p align="center">').setPostfix("</p>");
            this.a.setStringBuilder(_local2);
            this.a.mouseEnabled = true;
            this.a.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
        }

        private function 0GR(_arg1:_13j):void{
            this.box_.addChild(_arg1);
            this.0uD.push(_arg1.textChanged);
        }

        private function 0Ry(_arg1:String):void{
            if (_arg1 != null)
            {
                this.064 = new _13j().setSize(18).setColor(5746018);
                this.064.setBold(true);
                this.064.setAutoSize(TextFieldAutoSize.CENTER);
                this.064.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 1)];
                this.064.setStringBuilder(new 1WS(_arg1));
                this.0GR(this.064);
            };
        }

        private function 0fe():void{
            if (this.1dt != null)
            {
                this.leftButton = new 1nN(16, this.1dt, 120, true);
                this.leftButton.addEventListener(MouseEvent.CLICK, this.0Bt);
            };
            if (this.1PP != null)
            {
                this.rightButton = new 1nN(16, this.1PP, 120, true);
                this.rightButton.addEventListener(MouseEvent.CLICK, this.hV);
            };
        }

        private function onComplete():void{
            this.draw();
            this.Yw();
        }

        private function Yw():void{
            this.box_.x = ((this.offsetX + (this.Wy.5m() / 2)) - (this.box_.width / 2));
            this.box_.y = ((this.offsetY + (this.Wy.Hc() / 2)) - (this.getBoxHeight() / 2));
            if (this.ZM != null)
            {
                this.t6();
            };
        }

        private function t6():void{
            try
            {
                GA.global().trackPageview(this.ZM);
            } catch(error:Error)
            {
            };
        }

        private function draw():void{
            this.1mo();
            this.drawAdditionalUI();
            this.23x();
        }

        protected function drawAdditionalUI():void{
        }

        protected function 23x():void{
            if (this.box_.contains(this.rect_))
            {
                this.box_.removeChild(this.rect_);
            };
            this.08w();
            this.26X();
            this.0aJ();
            this.drawGraphicsTemplate();
            this.box_.addChildAt(this.rect_, 0);
            this.box_.filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16, 1)];
        }

        protected function drawGraphicsTemplate():void{
        }

        private function 0aJ():void{
            tu.ln(this.path_);
            _tu.0S-(0, 0, this.203, (this.getBoxHeight() + this.0AU), 4, [1, 1, 1, 1], this.path_);
            var _local1:Graphics = this.rect_.graphics;
            _local1.clear();
            _local1.drawGraphicsData(this.graphicsData_);
        }

        protected function getBoxHeight():Number{
            return (this.box_.height);
        }

        private function 26X():void{
            var _local1:int;
            if (this.leftButton != null)
            {
                _local1 = (this.box_.height + this.0Jn);
                this.box_.addChild(this.leftButton);
                this.leftButton.y = _local1;
                if (this.rightButton == null)
                {
                    this.leftButton.x = ((this.203 / 2) - (this.leftButton.width / 2));
                } else
                {
                    this.leftButton.x = ((this.203 / 4) - (this.leftButton.width / 2));
                    this.box_.addChild(this.rightButton);
                    this.rightButton.x = (((3 * this.203) / 4) - (this.rightButton.width / 2));
                    this.rightButton.y = _local1;
                };
            };
        }

        private function 1mo():void{
            if (this.064 != null)
            {
                this.064.x = (this.203 / 2);
                this.064.y = this.Tw;
                this.a.y = (this.064.height + this.Iw);
            } else
            {
                this.a.y = 4;
            };
        }

        private function 08w():void{
            if (((this.leftButton) && (this.box_.contains(this.leftButton))))
            {
                this.box_.removeChild(this.leftButton);
            };
            if (((this.rightButton) && (this.box_.contains(this.rightButton))))
            {
                this.box_.removeChild(this.rightButton);
            };
        }

        protected function 0Bt(_arg1:MouseEvent):void{
            dispatchEvent(new Event(LEFT_BUTTON));
        }

        protected function hV(_arg1:Event):void{
            dispatchEvent(new Event(RIGHT_BUTTON));
        }


    }
}//package 1t6

