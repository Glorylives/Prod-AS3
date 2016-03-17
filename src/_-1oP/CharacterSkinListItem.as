// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1oP.CharacterSkinListItem

package 1oP{
    import flash.display.Sprite;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.display.Shape;
    import _CU._13j;
    import OZ.1VE;
    import flash.display.Bitmap;
    import _Jy._1HZ;
    import XF.lY;
    import flash.events.MouseEvent;
    import tn.1iY;
    import tn.Lm;
    import WL.Lr;
    import flash.filters.DropShadowFilter;
    import flash.display.BitmapData;
    import 1n4.1cA;
    import com.company.assembleegameclient.util.Currency;
    import 1n4.1WS;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormatAlign;
    import AO.du;
    import 1n4.1Jo;
    import flash.geom.ColorTransform;
    import flash.display.Graphics;

    public class CharacterSkinListItem extends Sprite {

        public static const WIDTH:int = 420;
        public static const 1ss:int = 16;
        public static const HEIGHT:int = 60;
        private static const 0XH:uint = 0x7B7B7B;
        private static const 0hM:uint = 0x5A5A5A;
        private static const Kk:uint = 0x282828;

        private const 1q-:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.1Z6);
        private const background:Shape = CharacterSkinListItem.lg();
        private const 26Q:Sprite = CharacterSkinListItem.007();
        private const 06B:_13j = CharacterSkinListItem.l3();
        private const 0Qd:1VE = CharacterSkinListItem.N9();
        private const 06z:Bitmap = CharacterSkinListItem.mu();
        private const VN:_13j = CharacterSkinListItem.0l3();
        private const 1hj:Sprite = CharacterSkinListItem.bB();
        private const 1pz:1ux = CharacterSkinListItem.aV();
        public const buy:_1HZ = new XF.lY(CharacterSkinListItem.1hj, flash.events.MouseEvent.CLICK);
        public const 01f:_1HZ = new _1HZ();
        public const out:_1HZ = new _1HZ();
        public const selected:_1HZ = CharacterSkinListItem.0Qd.n4;

        private var model:1iY;
        private var state:Lm;
        private var jf:Boolean = false;
        private var 1li:Bitmap;
        private var buyButton:Lr;
        private var 0Ga:Boolean;

        public function CharacterSkinListItem(){
            this.state = Lm.NULL;
            super();
        }

        private function lg():Shape{
            var _local1:Shape = new Shape();
            this.0aJ(_local1.graphics, WIDTH);
            addChild(_local1);
            return (_local1);
        }

        private function 007():Sprite{
            var _local1:Sprite;
            _local1 = new Sprite();
            _local1.x = 8;
            _local1.y = 4;
            addChild(_local1);
            return (_local1);
        }

        private function l3():_13j{
            var _local1:_13j;
            _local1 = new _13j().setSize(18).setColor(0xFFFFFF).setBold(true);
            _local1.x = 75;
            _local1.y = 15;
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            addChild(_local1);
            return (_local1);
        }

        private function N9():1VE{
            var _local1:1VE;
            _local1 = new 1VE();
            _local1.setSelected(false);
            _local1.x = ((WIDTH - _local1.width) - 15);
            _local1.y = ((HEIGHT / 2) - (_local1.height / 2));
            addChild(_local1);
            return (_local1);
        }

        private function mu():Bitmap{
            var _local1:Bitmap = new Bitmap();
            _local1.scaleX = 2;
            _local1.scaleY = 2;
            _local1.visible = false;
            addChild(_local1);
            return (_local1);
        }

        public function 0MI(_arg1:BitmapData):void{
            this.06z.bitmapData = _arg1;
            this.06z.x = ((this.VN.x - this.06z.width) - 5);
            this.06z.y = ((HEIGHT / 2) - (this.06z.height * 0.5));
        }

        private function 0l3():_13j{
            var _local1:_13j = new _13j().setSize(14).setColor(0xFFFFFF);
            _local1.setVerticalAlign(_13j.MIDDLE);
            addChild(_local1);
            return (_local1);
        }

        private function bB():Sprite{
            var _local1:Sprite = new Sprite();
            _local1.x = (WIDTH - 1ss);
            _local1.y = (HEIGHT * 0.5);
            addChild(_local1);
            return (_local1);
        }

        private function aV():1ux{
            var _local1:1ux;
            _local1 = new 1ux();
            _local1.0xh.addOnce(this.dl);
            _local1.y = -1;
            _local1.visible = false;
            addChild(_local1);
            return (_local1);
        }

        public function 06C(_arg1:Lr):void{
            this.buyButton = _arg1;
            _arg1.fh.add(this.bZ);
            ((this.model) && (this.1zM()));
            this.1hj.addChild(_arg1);
            _arg1.x = -(_arg1.width);
            _arg1.y = (-(_arg1.height) * 0.5);
            this.1hj.visible = (this.state == Lm.PURCHASABLE);
            this.dl();
        }

        private function bZ():void{
            this.buyButton.x = -(this.buyButton.width);
        }

        public function 1es(_arg1:Bitmap):void{
            ((this.1li) && (this.26Q.removeChild(this.1li)));
            this.1li = _arg1;
            ((this.1li) && (this.26Q.addChild(this.1li)));
        }

        public function Bb():1iY{
            return (this.model);
        }

        public function 0oJ(_arg1:1iY):void{
            ((this.model) && (this.model.n4.remove(this.bs)));
            this.model = _arg1;
            ((this.model) && (this.model.n4.add(this.bs)));
            this.bs(this.model);
            addEventListener(MouseEvent.MOUSE_OVER, this.1eJ);
            addEventListener(MouseEvent.MOUSE_OUT, this.mf);
        }

        private function bs(_arg1:1iY):void{
            this.state = ((this.model) ? this.model.0QA() : Lm.NULL);
            this.088();
            this.6x();
            ((this.buyButton) && (this.1zM()));
            this.ez();
            this.dl();
            this.eR(((this.model) && (this.model.1DB())));
        }

        public function 0QA():Lm{
            return (this.state);
        }

        private function 088():void{
            this.06B.setStringBuilder(new 1cA().setParams(((this.model) ? this.model.name : "")));
        }

        private function 6x():void{
            this.1V();
            this.044();
            this.2-P();
            this.xV();
        }

        private function dl():void{
            this.1pz.visible = ((((((this.model) && (this.model.limited))) && (!((this.state == Lm.OWNED))))) && (!((this.state == Lm.PURCHASING))));
            this.1pz.x = ((((((this.state == Lm.LOCKED)) || (!(this.buyButton)))) ? (this.06z.x - 5) : ((this.1hj.x + this.buyButton.x) - 15)) - this.1pz.width);
        }

        private function 1V():void{
            var _local1 = (this.state == Lm.OWNED);
            var _local2 = (this.state == Lm.PURCHASABLE);
            var _local3 = (this.state == Lm.PURCHASING);
            var _local4 = (this.state == Lm.LOCKED);
            this.0Qd.visible = _local1;
            ((this.1hj) && ((this.1hj.visible = _local2)));
            this.06z.visible = _local4;
            this.VN.visible = ((_local4) || (_local3));
        }

        private function 2-P():void{
            if (this.state == Lm.OWNED)
            {
                this.addEventListeners();
            } else
            {
                this.gl();
            };
        }

        private function 1zM():void{
            var _local1:int = ((this.model) ? this.model.cost : 0);
            this.buyButton.setPrice(_local1, Currency.1Jg);
        }

        public function 1DB():Boolean{
            return (this.jf);
        }

        public function eR(_arg1:Boolean):void{
            this.jf = ((_arg1) && ((this.state == Lm.OWNED)));
            this.0Qd.setSelected(_arg1);
            this.044();
        }

        private function ez():void{
            if (((!((this.model == null))) && (!((this.model.CM == null)))))
            {
                this.VN.setStringBuilder(new 1WS(this.model.CM));
                this.VN.setTextWidth(110);
                this.VN.setWordWrap(true);
                this.VN.setMultiLine(true);
                this.VN.setAutoSize(TextFieldAutoSize.LEFT);
                this.VN.setHorizontalAlign(TextFormatAlign.LEFT);
                this.VN.setVerticalAlign(TextFieldAutoSize.CENTER);
                this.VN.y = (HEIGHT / 7);
            } else
            {
                this.VN.setStringBuilder((((this.state)==Lm.PURCHASING) ? new 1cA().setParams(du.T) : this.switch()));
                this.VN.y = (HEIGHT / 2);
            };
            this.VN.x = ((WIDTH - this.VN.width) - 15);
            this.06z.x = ((this.VN.x - this.06z.width) - 5);
        }

        private function switch():1Jo{
            var _local1:1cA = new 1cA();
            var _local2:String = ((this.model) ? this.model.unlockLevel.toString() : "");
            return (_local1.setParams(du.1R0, {level:_local2}));
        }

        private function addEventListeners():void{
            addEventListener(MouseEvent.CLICK, this.0eJ);
        }

        function gl():void{
            removeEventListener(MouseEvent.CLICK, this.0eJ);
        }

        private function 0eJ(_arg1:MouseEvent):void{
            this.eR(true);
        }

        private function 1eJ(_arg1:MouseEvent):void{
            this.0Ga = true;
            this.044();
            this.01f.dispatch();
        }

        private function mf(_arg1:MouseEvent):void{
            this.0Ga = false;
            this.044();
            this.out.dispatch();
        }

        private function 044():void{
            var _local1:ColorTransform = this.background.transform.colorTransform;
            _local1.color = this.getColor();
            this.background.transform.colorTransform = _local1;
        }

        private function getColor():uint{
            if (this.state.0Rh())
            {
                return (Kk);
            };
            if (((this.jf) || (this.0Ga)))
            {
                return (0XH);
            };
            return (0hM);
        }

        private function xV():void{
            filters = (((this.state)==Lm.PURCHASING) ? [this.1q-] : []);
        }

        public function setWidth(_arg1:int):void{
            this.1hj.x = (_arg1 - 1ss);
            this.VN.x = ((_arg1 - this.VN.width) - 15);
            this.06z.x = ((this.VN.x - this.06z.width) - 5);
            this.0Qd.x = ((_arg1 - this.0Qd.width) - 15);
            this.dl();
            this.0aJ(this.background.graphics, _arg1);
        }

        private function 0aJ(_arg1:Graphics, _arg2:int):void{
            _arg1.clear();
            _arg1.beginFill(0hM);
            _arg1.drawRect(0, 0, _arg2, HEIGHT);
            _arg1.endFill();
        }


    }
}//package 1oP

