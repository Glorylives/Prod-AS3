// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1t6.TOSPopup

package _1t6{
import _1PB._cO;

import _1n4._1cA;

import _1qg._11S;

import _aq.Account;

import com.company.assembleegameclient.ui._1nN;
import com.company.assembleegameclient.util._0sg;

import flash.display.Sprite;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import flash.display.Shape;
    import _CU._13j;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.parameters.Parameters;
    import _AO._du;
    import flash.events.MouseEvent;
    import flash.display.Graphics;
    import _04_._1JZ;
    import _0BB.Fu;
    public class TOSPopup extends Sprite {

        public static const LEFT_BUTTON:String = "dialogLeftButton";
        public static const _0Tl:int = 0xB3B3B3;
        public static const WIDTH:int = 210;

        protected const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[_1F4, _0B9, path_, com.company.util._tu.END_FILL, com.company.util._tu._1l4];

        public var box_:Sprite;
        public var rect_:Shape;
        public var a:_13j;
        public var _14S:_13j;
        public var offsetX:Number = 0;
        public var offsetY:Number = 20;
        public var Wy:_0sg;
        public var DN:int = 4;
        public var _0Jn:int = 16;
        public var _0AU:int = 22;
        public var _203:int;
        private var _17N:int = 15;
        private var outlineFill_:GraphicsSolidFill;
        private var _1F4:GraphicsStroke;
        private var _0B9:GraphicsSolidFill;
        protected var path_:GraphicsPath;
        protected var _02s:_1nN;
        protected var _0uD:_cO;

        public function TOSPopup(){
            this.box_ = new Sprite();
            this.rect_ = new Shape();
            this._203 = this.setDialogWidth();
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this._1F4 = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this._0B9 = new GraphicsSolidFill(0x363636, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this._0uD = new _cO();
            super();
            this.g5();
            addChild(this.box_);
            this._0uD.complete.addOnce(this.onComplete);
        }

        protected function setDialogWidth():int{
            return (WIDTH);
        }

        private function g5():void{
            this._1sf();
            this.initText();
            this.initText2();
            this._0GR(this.a);
            this._0GR(this._14S);
        }

        protected function initText():void{
            this.a = new _13j().setSize(16).setColor(_0Tl);
            this.a.setTextWidth((this._203 - (this._17N * 2)));
            this.a.x = this._17N;
            this.a.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
            var _local1:_1cA = new _1cA().setParams("Legal.tos1");
            _local1.setPrefix('<p align="center">').setPostfix("</p>");
            this.a.setStringBuilder(_local1);
            this.a.setHTML(true);
            this.a.mouseEnabled = true;
            this.a.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
        }

        protected function initText2():void{
            this._14S = new _13j().setSize(16).setColor(_0Tl);
            this._14S.setTextWidth((this._203 - (this._17N * 2)));
            this._14S.x = this._17N;
            this._14S.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
            var _local1 = (('<font color="#7777EE"><a href="' + Parameters._dynamic) + '" target="_blank">');
            var _local2 = (('<font color="#7777EE"><a href="' + Parameters._0ku) + '" target="_blank">');
            var _local3:_1cA = new _1cA().setParams("Legal.tos2", {
                tou:_local1,
                _tou:"</a></font>",
                policy:_local2,
                _policy:"</a></font>"
            });
            this._14S.setStringBuilder(_local3);
            this._14S.setHTML(true);
            this._14S.mouseEnabled = true;
            this._14S.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
        }

        private function _0GR(_arg1:_13j):void{
            this.box_.addChild(_arg1);
            this._0uD.push(_arg1.textChanged);
        }

        private function _1sf():void{
            this._02s = new _1nN(16, _du._I);
            this._02s.addEventListener(MouseEvent.CLICK, this._0Bt);
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
            };
            this._08w();
            this._26X();
            this._0aJ();
            this.box_.addChildAt(this.rect_, 0);
            this.box_.filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16, 1)];
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
            var _local1:int = (this.box_.height + this._0Jn);
            this.box_.addChild(this._02s);
            this._02s.y = _local1;
            this._02s.x = ((this._203 / 2) - (this._02s.width / 2));
        }

        private function _1mo():void{
            this.a.y = this.DN;
            this._14S.y = ((this.a.y + this.a.height) + 15);
        }

        private function _08w():void{
            if (((this._02s) && (this.box_.contains(this._02s))))
            {
                this.box_.removeChild(this._02s);
            };
        }

        protected function _0Bt(_arg1:MouseEvent):void{
            var _local2:Fu = _1JZ._0JF().getInstance(Fu);
            var _local3:Account = _1JZ._0JF().getInstance(Account);
            var _local4:Object = _local3._1Y();
            _local2.sendRequest("account/acceptTOS", _local4);
            this._02s.removeEventListener(MouseEvent.CLICK, this._0Bt);
            var _local5:_11S = _1JZ._0JF().getInstance(_11S);
            _local5.dispatch();
        }


    }
}//package 1t6

