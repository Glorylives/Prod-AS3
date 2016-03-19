// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0nG.PetPanel

package _0nG{
import _0IN._1qO;
import _0IN._h;

import _0kv._pq;

import _0qj._1ae;

import _0uE._5f;

import _1n4._1cA;

import _5z._0tK;

import _AO._du;

import _CU._13j;

import _Jy._1HZ;

import _XF._1eq;

import _ZE.Panel;

import flash.display.Sprite;
    import flash.display.Bitmap;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.game.nx;

    public class PetPanel extends Panel {

        private static const VJ:int = 16;
        private static const _11M:int = 6;
        private static const _0wN:int = 5;

        public const _1z6:_1HZ = new _1HZ(_1ae);
        private const _0jw:_13j = _1qO._1H(0xFFFFFF, 16, true);
        private const _1gC:_13j = _1qO._1H(0xB6B6B6, 12, false);

        public var _1oa:_1eq;
        public var _0rw:Sprite;
        public var _0RB:_pq;
        public var _089:_pq;
        public var _6g:_pq;
        public var petVO:_0tK;
        private var _1tY:Bitmap;

        public function PetPanel(_arg1:nx, _arg2:_0tK){
            this._0rw = new Sprite();
            super(_arg1);
            this.petVO = _arg2;
            this._1oa = new _1eq(this._0rw, MouseEvent.MOUSE_OVER);
            this._1oa.add(this._0bV);
            this._1tY = _arg2._15c();
            this.Fl();
            this._0Ha();
            this._81();
            this.QT();
        }

        private static function _0Ma(_arg1:_pq):void{
            _arg1.y = ((HEIGHT - _arg1.height) - 4);
        }


        private function QT():void{
            this._0RB = this._1sf(_du._0KO);
            this._089 = this._1sf(_du._12L);
            this._6g = this._1sf(_du._1Kk);
            this._1S();
        }

        private function _1sf(_arg1:String):_pq{
            var _local2:_pq = new _pq(VJ, _arg1);
            addChild(_local2);
            return (_local2);
        }

        public function setState(_arg1:uint):void{
            this.kz((_arg1 == _h.YE));
        }

        public function kz(_arg1:Boolean):void{
            this._0RB.visible = _arg1;
            this._089.visible = _arg1;
            this._6g.visible = !(_arg1);
        }

        private function Fl():void{
            this._0rw.addChild(this._1tY);
            addChild(this._0rw);
            addChild(this._0jw);
            addChild(this._1gC);
        }

        private function _81():void{
            this._0jw.setStringBuilder(new _1cA().setParams(this.petVO.getName()));
            this._1gC.setStringBuilder(new _1cA().setParams(this.petVO._1qz()));
        }

        private function _0Ha():void{
            this._1tY.x = 4;
            this._1tY.y = -3;
            this._0jw.x = 58;
            this._0jw.y = 23;
            this._1gC.x = 58;
            this._1gC.y = 35;
        }

        private function _1S():void{
            this._1H0();
            this._23j();
            this._1y3();
        }

        private function _1H0():void{
            this._0RB.x = _11M;
            _0Ma(this._0RB);
        }

        private function _23j():void{
            this._089.x = (((WIDTH - this._089.width) - _11M) - _0wN);
            _0Ma(this._089);
        }

        private function _1y3():void{
            this._6g.x = ((WIDTH - this._6g.width) / 2);
            _0Ma(this._6g);
        }

        private function _0bV(_arg1:MouseEvent):void{
            var _local2:_5f = new _5f(this.petVO);
            _local2._0tW(this);
            this._1z6.dispatch(_local2);
        }


    }
}//package 0nG

