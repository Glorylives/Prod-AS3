// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.82

package _0uE{
import _0IN._1qO;
import _0IN._h;

import _0qj._1ae;

import _1PB._cO;

import _1n4._1cA;

import _5z._25U;

import _AO._du;

import _Jy._201;

import _XF._1eq;

import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import flash.events.MouseEvent;

    public class _82 extends Sprite {

        public const _1z6:_1HZ = new _1HZ(_1ae);

        public var Rz:_13j;
        private var _19T:_201;
        private var _65:_13j;
        private var vo:_25U;
        private var _1nH:int;
        private var textColor:int;
        private var tooltip:_1rq;

        public function _82(_arg1:_25U, _arg2:int){
            this.vo = _arg1;
            this._1nH = _arg2;
            this._19T = new _1eq(this, MouseEvent.MOUSE_OVER).add(this._0bV);
            this.textColor = ((_arg1._1AV()) ? 0xB3B3B3 : 0x666666);
            this._81();
            this._08E();
            _arg1._1iq.add(this._11f);
        }

        public function destroy():void{
            this.vo._1iq.remove(this._11f);
        }

        private function _11f(_arg1:_25U):void{
            this.bW();
        }

        private function _0bV(_arg1:MouseEvent):void{
            this.tooltip = new _1rq(this.vo);
            this.tooltip._0tW(this);
            this._1z6.dispatch(this.tooltip);
        }

        private function _08E():void{
            graphics.beginFill(this.textColor);
            graphics.drawCircle(0, -5, 1.5);
        }

        private function _81():void{
            this._1VH();
            if (this.vo._1AV())
            {
                this._0Lw();
            }
        }

        private function _0Lw():void{
            this.Rz = _1qO._1H(this.textColor, 13, true);
            addChild(this.Rz);
            this._04K();
            this.bW();
            (((this.vo.level >= _h._00P)) && (this.Rz.setColor(_h.YP)));
        }

        private function bW():void{
            if (this.Rz)
            {
                this.Rz.setStringBuilder(new _1cA().setParams(this._0sI(this.vo), {level:this.vo.level}));
            }
        }

        private function _1VH():void{
            this._65 = _1qO._1H(this.textColor, 13, true);
            this._65.setStringBuilder(new _1cA().setParams(this.vo.name));
            this._65.x = 3;
            addChild(this._65);
        }

        private function _0sI(_arg1:_25U):String{
            return ((((_arg1.level < _h._00P)) ? _du._0E : _du._1Oq));
        }

        private function _04K():void{
            var _local1:_cO = new _cO();
            _local1.push(this.Rz.textChanged);
            _local1.complete.addOnce(this.FO);
        }

        private function FO():void{
            this.Rz.x = (this._1nH - this.Rz.width);
        }


    }
}//package 0uE

