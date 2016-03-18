// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1rq

package _0uE{
import _0IN._1qO;
import _0IN._h;

import _0qj._1ae;

import _1n4._1cA;

import _5z._25U;

import flash.display.Sprite;
    import _CU._13j;

    public class _1rq extends _1ae {

        private const _0E:Sprite = new Sprite();
        private const US:_13j = _1qO._18(0xFFFFFF, 16, true, true);
        private const j8:_13j = _1qO._18(0xFFFFFF, 14, false, true);

        private var Ay:_25U;

        public function _1rq(_arg1:_25U){
            super(0x363636, 1, 0xFFFFFF, 1, true);
            this.j8.setTextWidth(200).setWordWrap(true);
            this.Ay = _arg1;
            this.Fl();
            this._81();
        }

        private function _81():void{
            _1he.push(this.US.textChanged);
            _1he.push(this.j8.textChanged);
            this.US.setStringBuilder(new _1cA().setParams(this.Ay.name));
            this.j8.setStringBuilder(new _1cA().setParams(this.Ay.description));
        }

        private function Fl():void{
            this._0E.addChild(this.US);
            this._0E.addChild(this.j8);
            addChild(this._0E);
        }

        override protected function alignUI():void{
            this.US.x = _h._1Ib;
            this.US.y = _h._18Z;
            this.j8.x = _h._1Ib;
            this.j8.y = (this.US.y + this.US.height);
        }


    }
}//package 0uE

