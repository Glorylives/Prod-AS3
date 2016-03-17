// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.qZ

package _0uE{
import _1n4._1cA;

import _OZ._08g;

import flash.display.Sprite;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import _Jy._1HZ;
    import _Jy.g4;
    import _CU._13j;
    import com.company.assembleegameclient.util.Currency;
    import _AO._du;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import flash.filters.DropShadowFilter;

    public class _qZ extends Sprite {

        private static const _1c9:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._1Z6);

        public const _1yi:_1HZ = new _1HZ();
        public const _0su:_1HZ = new _1HZ(int);
        public const q1:_1HZ = new _1HZ(int);
        public const clicked:g4 = new _1HZ();
        private const _1nH:int = 7;

        public var _0Hi:_08g;
        public var bx:_08g;
        private var _24n:_13j;
        private var or:_13j;
        private var disabled:Boolean = false;

        public function _qZ(){
            this._0Hi = new _08g("", 14, 0, Currency._1Jg);
            this.bx = new  _08g("", 14, 0, Currency.FAME);
            this._24n = this._1zR();
            this.or = this._1zR().setStringBuilder(new _1cA().setParams(_du._1RF));
            super();
            this._0Hi.addEventListener(MouseEvent.CLICK, this.sY);
            this.bx.addEventListener(MouseEvent.CLICK, this._1XX);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.bx.fh.add(this.sk);
            this._0Hi.fh.add(this.sk);
            this._24n.textChanged.add(this.sk);
        }

        public function r3(_arg1:Boolean):void{
            if (this.disabled != _arg1)
            {
                this.disabled = _arg1;
                this._0Hi.setEnabled(!(this.disabled));
                this.bx.setEnabled(!(this.disabled));
            };
        }

        public function _0Rh():Boolean{
            return (this.disabled);
        }

        public function _0RN(_arg1:int):void{
            this._0Hi.setPrice(_arg1, Currency._1Jg);
            ((!(contains(this._0Hi))) && (addChild(this._0Hi)));
        }

        public function _1Xw():int{
            return (this._0Hi._1V1());
        }

        public function setPrefix(_arg1:String):void{
            this._24n.setStringBuilder(new _1cA().setParams(_arg1));
            ((!(contains(this._24n))) && (addChild(this._24n)));
        }

        public function Yo():void{
            ((contains(this._0Hi)) && (removeChild(this._0Hi)));
            ((contains(this.bx)) && (removeChild(this.bx)));
            ((contains(this.or)) && (removeChild(this.or)));
        }

        private function sk():void{
            if (contains(this._0Hi))
            {
                this._0Hi.x = (this._24n.width + this._1nH);
            };
            if (contains(this.bx))
            {
                if (contains(this._0Hi))
                {
                    ((!(contains(this.or))) && (addChild(this.or)));
                    this.or.textChanged.addOnce(this.sk);
                    this.or.x = ((this._0Hi.x + this._0Hi.width) + this._1nH);
                    this.bx.x = ((this.or.x + this.or.width) + this._1nH);
                } else
                {
                    this.bx.x = (this._24n.width + this._1nH);
                };
            };
            this._1yi.dispatch();
        }

        public function _1vA(_arg1:int):void{
            this.bx.setPrice(_arg1, Currency.FAME);
            ((!(contains(this.bx))) && (addChild(this.bx)));
        }

        public function _1ip():int{
            return (this.bx._1V1());
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this._0Hi.removeEventListener(MouseEvent.CLICK, this.sY);
            this.bx.removeEventListener(MouseEvent.CLICK, this._1XX);
            this.bx.fh.remove(this.sk);
            this._0Hi.fh.remove(this.sk);
            this._24n.textChanged.remove(this.sk);
        }

        private function _1XX(_arg1:MouseEvent):void{
            if (!this.disabled)
            {
                this.q1.dispatch(this.bx.price);
                this.clicked.dispatch();
            };
            this.r3(true);
        }

        private function sY(_arg1:MouseEvent):void{
            if (!this.disabled)
            {
                this._0su.dispatch(this._0Hi.price);
                this.clicked.dispatch();
            };
            this.r3(true);
        }

        private function _1zR():_13j{
            var _local1:_13j = new _13j().setSize(16).setColor(0xB3B3B3).setBold(true);
            _local1.filters = [new DropShadowFilter(0, 0, 0)];
            _local1.y = 3;
            return (_local1);
        }


    }
}//package 0uE

