// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.CharacterSelectionAndNewsScreen

package _1aA{
    import flash.display.Sprite;
    import flash.filters.DropShadowFilter;
    import _Jy._1HZ;
    import 0Ux.0tu;
    import WZ.0Te;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1im;
    import BG.02I;
    import flash.display.Shape;
    import com.company.assembleegameclient.ui.0DJ;
    import TN.PackageButton;
    import zD.1mY;
    import 1PB.oj;
    import zD.05l;
    import 1mO.0Uy;
    import flash.events.Event;
    import 1n4.1cA;
    import AO.du;
    import flash.events.MouseEvent;
    import flash.text.TextFieldAutoSize;
    import 1n4.1WS;
    import flash.geom.Rectangle;
    import flash.display.DisplayObject;

    public class CharacterSelectionAndNewsScreen extends Sprite {

        private static const 0s7:int = 475;
        private static const 0Tg:uint = 0xB3B3B3;
        private static const 0Ik:uint = 0xFFFFFF;

        private const js:Number = 400;
        private const 0Cc:int = 108;
        private const 1FU:int = 18;
        private const 1F1:DropShadowFilter = new DropShadowFilter(0, 0, 0, 1, 8, 8);

        public var close:_1HZ;
        public var k5:_1HZ;
        public var newCharacter:_1HZ;
        public var chooseName:_1HZ;
        public var 7V:_1HZ;
        public var 4u:0tu;
        private var model:0Te;
        private var 171:Boolean;
        private var 06B:_13j;
        private var 0Tv:1im;
        private var 0-d:02I;
        private var 0e:_13j;
        private var 1FC:_13j;
        private var 1dZ:_13j;
        private var mn:0Nk;
        private var 0q6:int = 1;
        private var fM:Number;
        private var 1Tv:Shape;
        private var 1I-:0DJ;
        private var N0:PackageButton;
        private var Mt:Lz;
        private var kS:Lz;
        private var 1MK:Lz;
        private var 0uA:1mY;
        private var 1Kt:int = 106;

        public function CharacterSelectionAndNewsScreen(){
            this.newCharacter = new _1HZ();
            this.chooseName = new _1HZ();
            this.7V = new _1HZ();
            this.Mt = oj.0P6();
            this.kS = oj.1LT();
            this.1MK = oj.0N1();
            super();
            this.close = this.1MK.clicked;
            this.k5 = this.kS.clicked;
            addChild(new 05l());
            addChild(new 01l());
        }

        public function initialize(_arg1:0Te):void{
            if (this.171)
            {
                return;
            }
            this.171 = true;
            this.model = _arg1;
            this.UP(_arg1);
        }

        private function UP(_arg1:0Te):void{
            this.iS();
            this.XT();
            this.SX();
            this._1zp();
            this.0Fy();
            this.x8();
            var _local2:0dG = new 0dG(_arg1);
            if (_local2.2-8())
            {
                this.0e.setColor(0Ik);
                this.02k();
            }
            this.10v();
            this.XD();
            if (!_arg1.3n())
            {
                this.SQ();
            }
        }

        private function XD():void{
            this.Mt.clicked.add(this.Zd);
            this.0uA = new 1mY();
            this.0uA.0J-(this.Mt, 1mY.CENTER);
            this.0uA.0J-(this.1MK, 1mY.LEFT);
            this.0uA.0J-(this.kS, 1mY.RIGHT);
            addChild(this.0uA);
        }

        private function _1zp():void{
            var _local1:0Uy;
            _local1 = new 0Uy();
            _local1.x = 0s7;
            _local1.y = 112;
            addChild(_local1);
        }

        private function Pt():void{
            this.1I- = new 0DJ(16, 399);
            this.1I-.x = 443;
            this.1I-.y = 113;
            this.1I-.1OQ(399, this.mn.height);
            this.1I-.addEventListener(Event.CHANGE, this.ef);
            addChild(this.1I-);
        }

        private function SX():void{
            this.1dZ = new _13j().setSize(18).setColor(0Tg);
            this.1dZ.setBold(true);
            this.1dZ.setStringBuilder(new 1cA().setParams(du.24D));
            this.1dZ.filters = [this.1F1];
            this.1dZ.x = 0s7;
            this.1dZ.y = 79;
            addChild(this.1dZ);
        }

        private function 10v():void{
            this.0q6 = 0Nk.Hi;
            this.mn = new 0Nk(this.model, 0Nk.Hi);
            this.mn.x = this.1FU;
            this.mn.y = this.0Cc;
            this.fM = this.mn.height;
            if (this.fM > this.js)
            {
                this.Pt();
            }
            addChild(this.mn);
        }

        private function 1UY():void{
            this.0q6 = 0Nk.kL;
            this.mn = new 0Nk(this.model, 0Nk.kL);
            this.mn.x = this.1FU;
            this.mn.y = this.0Cc;
            this.fM = this.mn.height;
            if (this.fM > this.js)
            {
                this.Pt();
            }
            addChild(this.mn);
        }

        private function 0mz():void{
            if (this.mn != null)
            {
                removeChild(this.mn);
                this.mn = null;
            }
            if (this.1I- != null)
            {
                removeChild(this.1I-);
                this.1I- = null;
            }
        }

        private function x8():void{
            this.0e = new _13j().setSize(18).setColor(0Tg);
            this.0e.setBold(true);
            this.0e.setStringBuilder(new 1cA().setParams(du.fZ));
            this.0e.filters = [this.1F1];
            this.0e.x = this.1FU;
            this.0e.y = 79;
            this.0e.addEventListener(MouseEvent.CLICK, this.finally);
            addChild(this.0e);
        }

        private function finally(_arg1:MouseEvent):void{
            if (this.0q6 != 0Nk.Hi)
            {
                this.0mz();
                this.0e.setColor(0Ik);
                this.1FC.setColor(0Tg);
                this.10v();
            }
        }

        private function 02k():void{
            this.1FC = new _13j().setSize(18).setColor(0Tg);
            this.1FC.setBold(true);
            this.1FC.setStringBuilder(new 1cA().setParams(du.15f));
            this.1FC.filters = [this.1F1];
            this.1FC.x = (this.1FU + 150);
            this.1FC.y = 79;
            this.1FC.addEventListener(MouseEvent.CLICK, this.05s);
            addChild(this.1FC);
        }

        private function 05s(_arg1:MouseEvent):void{
            if (this.0q6 != 0Nk.kL)
            {
                this.0mz();
                this.0e.setColor(0Tg);
                this.1FC.setColor(0Ik);
                this.1UY();
            }
        }

        private function XT():void{
            this.0-d = new 02I();
            this.0-d.draw(this.model.0ce(), this.model.15g());
            this.0-d.x = this.0ee().width;
            this.0-d.y = 20;
            addChild(this.0-d);
        }

        private function SQ():void{
            this.0Tv = new 1im(16, false, du.204);
            this.0Tv.y = 50;
            this.0Tv.setAutoSize(TextFieldAutoSize.CENTER);
            this.0Tv.x = (this.0ee().width / 2);
            this.0Tv.addEventListener(MouseEvent.CLICK, this.pE);
            addChild(this.0Tv);
        }

        private function iS():void{
            this.06B = new _13j().setSize(22).setColor(0xB3B3B3);
            this.06B.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.06B.setStringBuilder(new 1WS(this.model.getName()));
            this.06B.filters = [this.1F1];
            this.06B.y = 24;
            this.06B.x = ((this.0ee().width - this.06B.width) / 2);
            addChild(this.06B);
        }

        function 0ee():Rectangle{
            var _local1:Rectangle = new Rectangle();
            if (stage)
            {
                _local1 = new Rectangle(0, 0, stage.stageWidth, stage.stageHeight);
            }
            return (_local1);
        }

        private function 0Fy():void{
            this.1Tv = new Shape();
            this.1Tv.graphics.clear();
            this.1Tv.graphics.lineStyle(2, 0x545454);
            this.1Tv.graphics.moveTo(0, this.1Kt);
            this.1Tv.graphics.lineTo(this.0ee().width, this.1Kt);
            this.1Tv.graphics.moveTo(466, 107);
            this.1Tv.graphics.lineTo(466, 526);
            this.1Tv.graphics.lineStyle();
            addChild(this.1Tv);
        }

        private function pE(_arg1:MouseEvent):void{
            this.chooseName.dispatch();
        }

        private function ef(_arg1:Event):void{
            if (this.mn != null)
            {
                this.mn.Gx((-(this.1I-.0md()) * (this.fM - 400)));
            }
        }

        public function FI():void{
            this.4u = new 0tu();
            this.4u.x = 14;
            this.4u.y = 40;
            addChild(this.4u);
            this.0s(this.N0);
        }

        public function xm():void{
            this.N0 = new PackageButton();
            this.N0.init();
            this.N0.x = 6;
            this.N0.y = 40;
            addChild(this.N0);
            this.0s(this.4u);
        }

        private function 0s(_arg1:DisplayObject):void{
            if (((_arg1) && (contains(_arg1))))
            {
                removeChild(_arg1);
            }
        }

        private function Zd():void{
            if (this.model.1pq() == 0)
            {
                this.newCharacter.dispatch();
            } else
            {
                this.7V.dispatch();
            }
        }

        public function setName(_arg1:String):void{
            this.06B.setStringBuilder(new 1WS(this.model.getName()));
            this.06B.x = ((this.0ee().width - this.06B.width) * 0.5);
            if (this.0Tv)
            {
                removeChild(this.0Tv);
                this.0Tv = null;
            }
        }


    }
}//package _1aA

