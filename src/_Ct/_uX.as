// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct._uX

package _Ct{
import _0IN._1qO;
import _0IN._h;

import _0Z._0Aq;

import _0uE._0Gd;
import _0uE._Py;

import _1n4._1cA;

import _2_._08G;

import _5z._0tK;

import _XF._1eq;

import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import _5z._2w;

import flash.events.MouseEvent;

public class _uX extends Sprite {

        private const _1iT:uint = 55;
        public const initComplete:_1HZ = new _1HZ();

        private var _1gC:_13j;
        private var _5y:Sprite;
        private var _1fc:Sprite;
        private var _2x:uint = 0;
        private var _1LR:uint = 0;
        private var _1Q6:_2w;
        private var Qc:_0Aq;
        private var _0LG:Vector.<_0Aq>;
        public var _0aH:_1HZ;
        public var disabled:Boolean = false;
        public var index:uint;

        public function _uX(_arg1:uint){
            this._1gC = _1qO._1H(0xFFFFFF, 18, true);
            this._5y = new Sprite();
            this._1fc = new Sprite();
            this._0LG = new Vector.<_0Aq>();
            this._0aH = new _1HZ(_0tK);
            super();
            this.index = _arg1;
        }

        public function init(_arg1:_2w):void{
            this._1Q6 = _arg1;
            this._1gC.setStringBuilder(new _1cA().setParams(_arg1._1tR));
            this._1Lg();
            this.Fl();
            this._0Ha();
            this.initComplete.dispatch();
        }

        private function _0Ha():void{
            this._5y.x = ((_h._1h9 - this._5y.width) / 2);
            this._1fc.x = ((_h._1h9 - this._1fc.width) / 2);
            this._1fc.y = 50;
        }

        private function Fl():void{
            addChild(this._1gC);
            addChild(this._5y);
            addChild(this._1fc);
        }

        private function _1Lg():void{
            var _local1:uint;
            var _local3:_Py;
            var _local4:_08G;
            var _local5:_0Aq;
            var _local6:_1eq;
            var _local2:uint = this._1Q6._18N.length;
            _local1 = 0;
            while (_local1 < _local2)
            {
                _local3 = this._1D8(this._1Q6._18N[_local1], 48);
                _local4 = new _08G();
                _local4.mL(_local3);
                _local5 = new _0Aq();
                _local5.mouseChildren = false;
                _local5.setIcon(_local4);
                _local6 = new _1eq(_local5, MouseEvent.CLICK, MouseEvent);
                _local6.add(this._1lS);
                if ((_local1 < 4))
                {
                    this._1xi(_local5);
                } else
                {
                    this._1Al(_local5);
                }
                this._0LG.push(_local5);
                if (this.disabled)
                {
                    _local4.disable();
                    _local5.mouseChildren = false;
                    _local5.mouseEnabled = false;
                }
                _local1++;
            }
        }

        private function _1D8(_arg1:_0tK, _arg2:int):_Py{
            var _local3:_0Gd = new _0Gd();
            var _local4:_Py = _local3.create(_arg1, _arg2);
            _local4.Ta(false);
            return (_local4);
        }

        private function _1lS(_arg1:MouseEvent):void{
            this._0aH.dispatch(_08G(_arg1.target.getIcon()).getPetVO());
        }

        private function _1xi(_arg1:Sprite):void{
            _arg1.x = (this._1iT * this._2x);
            this._5y.addChild(_arg1);
            this._2x++;
        }

        private function _1Al(_arg1:Sprite):void{
            _arg1.x = (this._1iT * this._1LR);
            this._1fc.addChild(_arg1);
            this._1LR++;
        }

        public function _0vg(_arg1:int):void{
            var _local2:_0Aq;
            var _local3:int;
            var _local4:uint;
            while (_local4 < this._0LG.length)
            {
                _local2 = _0Aq(this._0LG[_local4]);
                _local3 = _08G(_local2.getIcon()).getPetVO().u5();
                _local2._1ZU((_local3 == _arg1));
                _local4++;
            }
        }


    }
}//package Ct

