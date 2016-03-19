// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.5f

package _0uE{
import _0IN._1qO;
import _0IN._h;

import _0qj._1ae;

import _0xo._1Js;

import _1n4._1cA;

import _5z._0NW;

import _5z._0tK;
import _5z._1dH;
import _5z._25U;

import com.company.assembleegameclient.ui._1p;

import flash.display.Sprite;
    import _CU._13j;
    import flash.display.Bitmap;

    public class _5f extends _1ae {

        private const _catch:Sprite = new Sprite();
        private const US:_13j = _1qO._1H(0xFFFFFF, 16, true);
        private const J6:_13j = _1qO._1H(0xB3B3B3, 12, false);
        private const er:_13j = _1qO._1H(0xB3B3B3, 12, false);
        private const _0hg:_1p = _1qO._1X0();

        private var _1tY:Bitmap;
        private var petVO:_0tK;

        public function _5f(_arg1:_0tK){
            this.petVO = _arg1;
            super(0x363636, 1, 0xFFFFFF, 1, true);
            this._catch.name = _1Js._24;
        }

        public function init():void{
            this._1tY = this.petVO._15c();
            this._Fl();
            this._1Z5();
            this._0Ha();
            this._81();
        }

        private function _81():void{
            this.US.setStringBuilder(new _1cA().setParams(this.petVO.getName()));
            this.J6.setStringBuilder(new _1cA().setParams(this.petVO._1qz()));
            this.er.setStringBuilder(new _1cA().setParams(_0NW._1So(this.petVO._1m7())));
        }

        private function _Fl():void{
            this._catch.graphics.beginFill(0, 0);
            this._catch.graphics.drawRect(0, 0, _h._1Ex, _h._0uf);
            this._catch.addChild(this._1tY);
            this._catch.addChild(this.US);
            this._catch.addChild(this.J6);
            this._catch.addChild(this.er);
            this._catch.addChild(this._0hg);
            addChild(this._catch);
        }

        private function _1Z5():void{
            var _local1:uint;
            var _local3:_25U;
            var _local4:_82;
            var _local2:uint = 3;
            _local1 = 0;
            while (_local1 < _local2)
            {
                _local3 = this.petVO._0S1[_local1];
                _local4 = new _82(_local3, 174);
                _local4.x = 8;
                _local4.y = (86 + (17 * _local1));
                this._catch.addChild(_local4);
                _local1++;
            };
        }

        private function _16p():uint{
            var _local1:Boolean = (((this.petVO._1qz() == _1dH.cn.value)) || ((this.petVO._1qz() == _1dH.z.value)));
            if (_local1)
            {
                return (2);
            };
            return (3);
        }

        private function _0Ha():void{
            this.US.x = 55;
            this.US.y = 21;
            this.J6.x = 55;
            this.J6.y = 35;
            this.er.x = 55;
            this.er.y = 48;
        }


    }
}//package 0uE

