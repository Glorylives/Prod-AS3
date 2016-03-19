// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1t6.ErrorDialog

package 1t6{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import _Jy._1HZ;
    import flash.display.Shape;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1nN;
    import com.company.assembleegameclient.util.0sg;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import 1PB.cO;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import XF.lY;
    import flash.text.TextFieldAutoSize;
    import 1n4.1WS;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import com.company.googleanalytics.GA;
    import flash.display.Graphics;
    import flash.events.Event;
    import __AS3__.vec.*;

    public class ErrorDialog extends Sprite {

        public static const 0Tl:int = 0xB3B3B3;
        protected static const WIDTH:int = 300;

        protected const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[ErrorDialog.1F4, ErrorDialog.0B9, ErrorDialog.path_, com.company.util._tu.END_FILL, com.company.util._tu.1l4];

        public var ok:_1HZ;
        public var box_:Sprite;
        public var rect_:Shape;
        public var a:_13j;
        public var 064:_13j = null;
        public var button1_:1nN = null;
        public var button2_:1nN = null;
        public var ZM:String = null;
        public var offsetX:Number = 0;
        public var offsetY:Number = 0;
        public var Wy:0sg;
        private var outlineFill_:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var 0B9:GraphicsSolidFill;
        protected var path_:GraphicsPath;
        protected var 0uD:cO;

        public function ErrorDialog(_arg1:String){
            this.box_ = new Sprite();
            this.rect_ = new Shape();
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this.1F4 = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.0B9 = new GraphicsSolidFill(0x363636, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this.0uD = new cO();
            super();
            var _local2:String = ["An error has occured:", _arg1].join("\n");
            this.Wy = new 0sg(this);
            this.ZM = "/error";
            this.g5(_local2, "D'oh, this isn't good", "ErrorWindow.buttonOK", null);
            this.makeUIAndAdd();
            this.0uD.complete.addOnce(this.onComplete);
            addChild(this.box_);
            this.ok = new lY(this, Dialog.LEFT_BUTTON);
        }

        private function g5(_arg1:String, _arg2:String, _arg3:String, _arg4:String):void{
            this.initText(_arg1);
            this.0GR(this.a);
            this.0Ry(_arg2);
            this.0fe(_arg3, _arg4);
        }

        protected function makeUIAndAdd():void{
        }

        protected function initText(_arg1:String):void{
            this.a = new _13j().setSize(14).setColor(0Tl);
            this.a.setTextWidth((WIDTH - 40));
            this.a.x = 20;
            this.a.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.a.setStringBuilder(new 1WS(_arg1));
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
                this.064.setTextWidth(WIDTH);
                this.064.setBold(true);
                this.064.setAutoSize(TextFieldAutoSize.CENTER);
                this.064.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 1)];
                this.064.setStringBuilder(new 1WS(_arg1));
                this.0GR(this.064);
            }
        }

        private function 0fe(_arg1:String, _arg2:String):void{
            if (_arg1 != null)
            {
                this.button1_ = new 1nN(16, _arg1, 120);
                this.button1_.addEventListener(MouseEvent.CLICK, this.onButton1Click);
            }
            if (_arg2 != null)
            {
                this.button2_ = new 1nN(16, _arg2, 120);
                this.button2_.addEventListener(MouseEvent.CLICK, this.onButton2Click);
            }
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
            }
            this.08w();
            this.26X();
            this.0aJ();
            this.box_.addChildAt(this.rect_, 0);
            this.box_.filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16, 1)];
        }

        private function 0aJ():void{
            tu.ln(this.path_);
            _tu.0S-(0, 0, WIDTH, (this.getBoxHeight() + 10), 4, [1, 1, 1, 1], this.path_);
            var _local1:Graphics = this.rect_.graphics;
            _local1.clear();
            _local1.drawGraphicsData(this.graphicsData_);
        }

        protected function getBoxHeight():Number{
            return (this.box_.height);
        }

        private function 26X():void{
            var _local1:int;
            if (this.button1_ != null)
            {
                _local1 = (this.box_.height + 16);
                this.box_.addChild(this.button1_);
                this.button1_.y = _local1;
                if (this.button2_ == null)
                {
                    this.button1_.x = ((WIDTH / 2) - (this.button1_.width / 2));
                } else
                {
                    this.button1_.x = ((WIDTH / 4) - (this.button1_.width / 2));
                    this.box_.addChild(this.button2_);
                    this.button2_.x = (((3 * WIDTH) / 4) - (this.button2_.width / 2));
                    this.button2_.y = _local1;
                }
            }
        }

        private function 08w():void{
            if (((this.button1_) && (this.box_.contains(this.button1_))))
            {
                this.box_.removeChild(this.button1_);
            }
            if (((this.button2_) && (this.box_.contains(this.button2_))))
            {
                this.box_.removeChild(this.button2_);
            }
        }

        private function 1mo():void{
            if (this.064 != null)
            {
                this.064.y = 2;
                this.a.y = (this.064.height + 8);
            } else
            {
                this.a.y = 4;
            }
        }

        private function onButton1Click(_arg1:MouseEvent):void{
            dispatchEvent(new Event(Dialog.LEFT_BUTTON));
        }

        private function onButton2Click(_arg1:Event):void{
            dispatchEvent(new Event(Dialog.RIGHT_BUTTON));
        }

        public function bV(_arg1:Number):void{
            this.rect_.alpha = (((_arg1 > 1)) ? 1 : (((_arg1 < 0)) ? 0 : _arg1));
        }


    }
}//package 1t6

