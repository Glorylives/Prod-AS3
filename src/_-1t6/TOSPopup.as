// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1t6.TOSPopup

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
    import com.company.assembleegameclient.ui.1nN;
    import 1PB.cO;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.parameters.Parameters;
    import AO.du;
    import flash.events.MouseEvent;
    import flash.display.Graphics;
    import _04_._1JZ;
    import _0BB.Fu;
    import aq.Account;
    import 1qg.11S;
    import __AS3__.vec.*;

    public class TOSPopup extends Sprite {

        public static const LEFT_BUTTON:String = "dialogLeftButton";
        public static const 0Tl:int = 0xB3B3B3;
        public static const WIDTH:int = 210;

        protected const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[TOSPopup.1F4, TOSPopup.0B9, TOSPopup.path_, com.company.util._tu.END_FILL, com.company.util._tu.1l4];

        public var box_:Sprite;
        public var rect_:Shape;
        public var a:_13j;
        public var 14S:_13j;
        public var offsetX:Number = 0;
        public var offsetY:Number = 20;
        public var Wy:0sg;
        public var DN:int = 4;
        public var 0Jn:int = 16;
        public var 0AU:int = 22;
        public var 203:int;
        private var 17N:int = 15;
        private var outlineFill_:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var 0B9:GraphicsSolidFill;
        protected var path_:GraphicsPath;
        protected var 02s:1nN;
        protected var 0uD:cO;

        public function TOSPopup(){
            this.box_ = new Sprite();
            this.rect_ = new Shape();
            this.203 = this.setDialogWidth();
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this.1F4 = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.0B9 = new GraphicsSolidFill(0x363636, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this.0uD = new cO();
            super();
            this.g5();
            addChild(this.box_);
            this.0uD.complete.addOnce(this.onComplete);
        }

        protected function setDialogWidth():int{
            return (WIDTH);
        }

        private function g5():void{
            this.1sf();
            this.initText();
            this.initText2();
            this.0GR(this.a);
            this.0GR(this.14S);
        }

        protected function initText():void{
            this.a = new _13j().setSize(16).setColor(0Tl);
            this.a.setTextWidth((this.203 - (this.17N * 2)));
            this.a.x = this.17N;
            this.a.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
            var _local1:1cA = new 1cA().setParams("Legal.tos1");
            _local1.setPrefix('<p align="center">').setPostfix("</p>");
            this.a.setStringBuilder(_local1);
            this.a.setHTML(true);
            this.a.mouseEnabled = true;
            this.a.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
        }

        protected function initText2():void{
            this.14S = new _13j().setSize(16).setColor(0Tl);
            this.14S.setTextWidth((this.203 - (this.17N * 2)));
            this.14S.x = this.17N;
            this.14S.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
            var _local1 = (('<font color="#7777EE"><a href="' + Parameters.dynamic) + '" target="_blank">');
            var _local2 = (('<font color="#7777EE"><a href="' + Parameters.0ku) + '" target="_blank">');
            var _local3:1cA = new 1cA().setParams("Legal.tos2", {
                tou:_local1,
                _tou:"</a></font>",
                policy:_local2,
                _policy:"</a></font>"
            });
            this.14S.setStringBuilder(_local3);
            this.14S.setHTML(true);
            this.14S.mouseEnabled = true;
            this.14S.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
        }

        private function 0GR(_arg1:_13j):void{
            this.box_.addChild(_arg1);
            this.0uD.push(_arg1.textChanged);
        }

        private function 1sf():void{
            this.02s = new 1nN(16, du.I-);
            this.02s.addEventListener(MouseEvent.CLICK, this.0Bt);
        }

        private function onComplete():void{
            this.draw();
            this.Yw();
        }

        private function Yw():void{
            this.box_.x = ((this.offsetX + (WebMain._0Kr.stageWidth / 2)) - (this.box_.width / 2));
            this.box_.y = ((this.offsetY + (WebMain._0Kr.stageHeight / 2)) - (this.getBoxHeight() / 2));
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
            this.box_.addChildAt(this.rect_, 0);
            this.box_.filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16, 1)];
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
            var _local1:int = (this.box_.height + this.0Jn);
            this.box_.addChild(this.02s);
            this.02s.y = _local1;
            this.02s.x = ((this.203 / 2) - (this.02s.width / 2));
        }

        private function 1mo():void{
            this.a.y = this.DN;
            this.14S.y = ((this.a.y + this.a.height) + 15);
        }

        private function 08w():void{
            if (((this.02s) && (this.box_.contains(this.02s))))
            {
                this.box_.removeChild(this.02s);
            };
        }

        protected function 0Bt(_arg1:MouseEvent):void{
            var _local2:Fu = _1JZ.0JF().getInstance(Fu);
            var _local3:Account = _1JZ.0JF().getInstance(Account);
            var _local4:Object = _local3.1Y();
            _local2.sendRequest("account/acceptTOS", _local4);
            this.02s.removeEventListener(MouseEvent.CLICK, this.0Bt);
            var _local5:11S = _1JZ.0JF().getInstance(11S);
            _local5.dispatch();
        }


    }
}//package 1t6

