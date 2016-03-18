// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.PetAbilityMeter

package _0uE{
import _0IN._0Mf;
import _0IN._1qO;
import _0IN._h;

import _1Bg._1hy;
import _1Bg._of;

import _1PB._cO;

import _1aA.pS;

import _1n4._1cA;

import _1r._1L6;

import _1r._u;

import _5z._25U;

import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import flash.events.Event;
    import _AO._du;
    import flash.filters.DropShadowFilter;
    public class PetAbilityMeter extends Sprite implements _u {

        public const _0O:_1HZ = new _1HZ(PetAbilityMeter, Boolean);
        private const lc:_13j = _1qO._18(0xB3B3B3, 14, true, true);
        private const _0Yw:_13j = _1qO._18(0xB3B3B3, 14, true, true);
        private const _08D:_253 = new _253(_h._1Aw, _h._1Hv);

        private var _0MT:Boolean = true;
        private var _19h:int = 0;
        private var _0JX:int = 0;
        private var _0aG:Number = 0;
        public var _1yi:_1HZ;
        public var max:int;
        public var index:int;
        private var _1DY:_1L6;

        public function PetAbilityMeter(){
            this._1yi = new _1HZ();
            this._1DY = new _1L6();
            super();
            this._08D._0O.add(this._1Vk);
            this._04K();
            this.Fl();
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this._1DY._1pS(this);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this._08D._0O.remove(this._1Vk);
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function _1PF(_arg1:_25U):void{
            var _local2:int;
            var _local3:int;
            this._19h = _arg1.points;
            this._0JX = _arg1.level;
            this._1Nv(_arg1.name);
            this.setUnlocked(_arg1._1AV());
            this.le(((this._0MT) ? _arg1.level : 0));
            this._1Vk(false);
            this._1DY.tooltip = new _1rq(_arg1);
            if (this._0MT)
            {
                _local2 = Math.max(0, _0Mf._0s(_arg1.points, _arg1.level));
                _local3 = _0Mf._008(_arg1.level);
                _local2 = (((_arg1.level >= this.max)) ? _local3 : _local2);
                this._0u6(_local2, _local3);
            };
            _arg1._1iq.add(this._0v1);
        }

        private function _0v1(_arg1:_25U):void{
            var _local2:Number;
            this.setUnlocked(_arg1._1AV());
            if ((((_arg1.points > this._19h)) && (this._0MT)))
            {
                this._19h = _arg1.points;
                this._0aG = _0Mf._0s(_arg1.points, this._0JX);
                _local2 = _0Mf._008(this._0JX);
                if (((!((_local2 == 0))) && ((this._0aG > _local2))))
                {
                    this._0aG = (this._0aG - _local2);
                    this._08D._0zw.add(this._0Q);
                    this._08D.fill();
                    this._1Vk(true);
                } else
                {
                    this._0u6(this._0aG, _local2);
                };
            };
        }

        private function _0Q():void{
            var _local2:Number;
            var _local1:Boolean;
            if (!_local1)
            {
                this._0JX++;
                this.le(this._0JX, true);
                _local2 = _0Mf._008(this._0JX);
                if (this._0aG > _local2)
                {
                    this._08D.reset();
                    this._0aG = (this._0aG - _local2);
                    this._08D.fill();
                } else
                {
                    this._08D._0zw.remove(this._0Q);
                    if (this._0JX >= this.max)
                    {
                        this._08D._0qP(null);
                        this._0aG = 0;
                    } else
                    {
                        this._08D.reset();
                        this._0u6(this._0aG, _local2);
                    };
                };
            };
        }

        public function _1Nv(_arg1:String):void{
            this._0Yw.setStringBuilder(new _1cA().setParams(_arg1));
        }

        public function le(_arg1:int, _arg2:Boolean=false):void{
            var _local3:String = (((_arg1 >= this.max)) ? _du._1Oq : _du._0eK);
            this.lc.setColor(((_arg2) ? 1572859 : (((_arg1 >= this.max)) ? _h.YP : 0xB3B3B3)));
            this.lc.setStringBuilder(new _1cA().setParams(_local3, {level:_arg1.toString()}));
            this.lc.textChanged.addOnce(this.Jg);
        }

        public function _0u6(_arg1:int, _arg2:int):void{
            this._08D._1gg(_arg2);
            this._08D._11i(_arg1);
        }

        public function setUnlocked(_arg1:Boolean):void{
            var _local2:int;
            var _local3:Array;
            if (this._0MT != _arg1)
            {
                this._0MT = _arg1;
                _local2 = ((_arg1) ? 0xB3B3B3 : 0x565656);
                _local3 = ((_arg1) ? [new DropShadowFilter(0, 0, 0)] : []);
                this._0Yw.setColor(_local2);
                this._0Yw.filters = _local3;
                this.lc.visible = _arg1;
            };
        }

        private function Fl():void{
            addChild(this._0Yw);
            addChild(this.lc);
            addChild(this._08D);
        }

        private function _04K():void{
            var _local1:_cO = new _cO();
            _local1.push(this.lc.textChanged);
            _local1.push(this._0Yw.textChanged);
            _local1.complete.addOnce(this.FO);
        }

        private function Jg():void{
            this._08D.y = 21;
            this.lc.x = (_h._1Aw - this.lc.width);
        }

        private function FO():void{
            this.Jg();
            this._1yi.dispatch();
        }

        private function _1Vk(_arg1:Boolean):void{
            this.lc.setColor(((_arg1) ? 1572859 : (((this._0JX >= this.max)) ? _h.YP : 0xB3B3B3)));
            this._0Yw.setColor(((_arg1) ? 1572859 : (((this._0JX >= 100)) ? _h.YP : 0xB3B3B3)));
            if (((!(_arg1)) && ((this._0JX >= 100))))
            {
                this._08D._02J(_h.YP);
            };
            this._0O.dispatch(this, _arg1);
        }

        public function _4(_arg1:_1hy):void{
            this._1DY._4(_arg1);
        }

        public function Bs():_1hy{
            return (this._1DY.Bs());
        }

        public function na(_arg1:_of):void{
            this._1DY.na(_arg1);
        }

        public function w1():_of{
            return (this._1DY.w1());
        }


    }
}//package 0uE

