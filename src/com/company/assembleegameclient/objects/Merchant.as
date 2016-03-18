// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Merchant

package com.company.assembleegameclient.objects{
import _0UV._105;

import _0qj._1ae;

import _1jB._1Ha;

import _1n4._1cA;

import _1qQ._0oB;

import com.company.ui._eG;

import flash.geom.Matrix;
    import flash.display.BitmapData;
    import flash.geom.ColorTransform;
    import _04_._1JZ;
    import com.company.util.IntPoint;
    import com.company.assembleegameclient.map.Map;
    import gx.Wl;
    import _0gd.GTween;

    public class Merchant extends SellableObject implements _18p {

        private static const _04u:int = 0;
        private static const _0YL:int = 1;
        private static const lx:int = 2;
        private static const _0Tw:int = 3;
        private static const _1UR:int = 4;
        private static const T:Number = 1;
        private static const _0sv:Matrix = function ():Matrix{
            var _local1:* = new Matrix();
            _local1.translate(10, 5);
            return (_local1);
        }();

        public var _0Wm:int = -1;
        public var wT:int = -1;
        public var _00c:int = -1;
        public var yl:int = 0;
        public var merchandiseTexture_:BitmapData = null;
        public var _5x:int = 0;
        public var alpha_:Number = 1;
        private var addSpeechBalloon:_105;
        private var _0C0:_0oB;
        private var _0yM:Boolean = true;
        private var TU:int = 0;
        private var _1Tp:ColorTransform;

        public function Merchant(_arg1:XML)
        {
            Merchant(_arg1)
            this._1Tp = new ColorTransform(1, 1, 1, 1);
            this.addSpeechBalloon = _1JZ._0JF().getInstance(_105);
            this._0C0 = _1JZ._0JF().getInstance(_0oB);
            _10J = true;
        }

        public function setPrice(_arg1:int):void{
            setPrice(_arg1);
            this._5x = 0;
        }

        public function setRankReq(_arg1:int):void{
            setRankReq(_arg1);
            this._5x = 0;
        }

        override public function addTo(_arg1:Map, _arg2:Number, _arg3:Number):Boolean{
            if (!super.addTo(_arg1, _arg2, _arg3))
            {
                return (false);
            };
            _arg1.merchLookup_[new IntPoint(x_, y_)] = this;
            return (true);
        }

        override public function removeFromMap():void{
            var _local1:IntPoint = new IntPoint(x_, y_);
            if (map_.merchLookup_[_local1] == this)
            {
                map_.merchLookup_[_local1] = null;
            };
            super.removeFromMap();
        }

        public function _0VI(_arg1:int):Wl{
            var _local2:_1cA;
            var _local3:uint;
            var _local4:uint;
            var _local5:uint;
            switch (_arg1)
            {
                case _0YL:
                    _local2 = new _1cA().setParams("Merchant.new");
                    _local3 = 0xE6E6E6;
                    _local4 = 0xFFFFFF;
                    _local5 = 5931045;
                    break;
                case lx:
                    if (this._00c == 0)
                    {
                        _local2 = new _1cA().setParams("Merchant.goingSoon");
                    } else
                    {
                        if (this._00c == 1)
                        {
                            _local2 = new _1cA().setParams("Merchant.goingInOneMinute");
                        } else
                        {
                            _local2 = new _1cA().setParams("Merchant.goingInNMinutes", {minutes:this._00c});
                        };
                    };
                    _local3 = 5973542;
                    _local4 = 16549442;
                    _local5 = 16549442;
                    break;
                case _0Tw:
                    _local2 = new _1cA().setParams("Merchant.limitedStock", {count:this.wT});
                    _local3 = 5973542;
                    _local4 = 16549442;
                    _local5 = 16549442;
                    break;
                case _1UR:
                    _local2 = new _1cA().setParams("Merchant.discount", {discount:this.yl});
                    _local3 = 6324275;
                    _local4 = 16777103;
                    _local5 = 16777103;
                    break;
                    return (null);
            };
            _local2._1jM(this._0C0);
            return (new Wl(this, _local2.getString(), "", false, false, _local3, 1, _local4, 1, _local5, 6, true, false));
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local5:GTween;
            super.update(_arg1, _arg2);
            if (this._0yM)
            {
                if (this._00c == 2147483647)
                {
                    _local5 = new GTween(this, (0.5 * T), {size_:150}, {ease:4t.0uh});
                    _local5._0aM = new GTween(this, (0.5 * T), {size_:100}, {ease:4t.0vp});
                    _local5._0aM.paused = true;
                };
                this._0yM = false;
            };
            this._5x = (this._5x - _arg2);
            if (this._5x > 0)
            {
                return (true);
            };
            this._5x = 5000;
            var _local3:Vector.<int> = new Vector.<int>();
            if (this._00c == 2147483647)
            {
                _local3.push(_0YL);
            } else
            {
                if ((((this._00c >= 0)) && ((this._00c <= 5))))
                {
                    _local3.push(lx);
                };
            };
            if ((((this.wT >= 1)) && ((this.wT <= 2))))
            {
                _local3.push(_0Tw);
            };
            if (this.yl > 0)
            {
                _local3.push(_1UR);
            };
            if (_local3.length == 0)
            {
                return (true);
            };
            this.TU = (++this.TU % _local3.length);
            var _local4:int = _local3[this.TU];
            this.addSpeechBalloon.dispatch(this._0VI(_local4));
            return (true);
        }

        public function soldObjectName():String{
            return (ObjectLibrary._118[this._0Wm]);
        }

        public function soldObjectInternalName():String{
            var _local1:XML = ObjectLibrary.GD[this._0Wm];
            return (_local1.@id.toString());
        }

        public function getTooltip():_1ae{
            var _local1:_1ae = new EquipmentToolTip(this._0Wm, map_.player_, -1, _1Ha.NPC);
            return (_local1);
        }

        public function getSellableType():int{
            return (this._0Wm);
        }

        public function getIcon():BitmapData{
            var _local3:_eG;
            var _local1:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this._0Wm, 80, true);
            var _local2:XML = ObjectLibrary.GD[this._0Wm];
            if (_local2.hasOwnProperty("Doses"))
            {
                _local1 = _local1.clone();
                _local3 = new _eG(12, 0xFFFFFF, false, 0, 0);
                _local3.text = String(_local2.Doses);
                _local3.re();
                _local1.draw(_local3, _0sv);
            };
            return (_local1);
        }

        public function getTex1Id(_arg1:int):int{
            var _local2:XML = ObjectLibrary.GD[this._0Wm];
            if (_local2 == null)
            {
                return (_arg1);
            };
            if ((((_local2.Activate == "Dye")) && (_local2.hasOwnProperty("Tex1"))))
            {
                return (int(_local2.Tex1));
            };
            return (_arg1);
        }

        public function getTex2Id(_arg1:int):int{
            var _local2:XML = ObjectLibrary.GD[this._0Wm];
            if (_local2 == null)
            {
                return (_arg1);
            };
            if ((((_local2.Activate == "Dye")) && (_local2.hasOwnProperty("Tex2"))))
            {
                return (int(_local2.Tex2));
            };
            return (_arg1);
        }

        protected function getTexture(_arg1:1C8, _arg2:int):BitmapData{
            if ((((this.alpha_ == 1)) && ((size_ == 100))))
            {
                return (this.merchandiseTexture_);
            };
            var _local3:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this._0Wm, size_, false, false);
            if (this.alpha_ != 1)
            {
                this._1Tp.alphaMultiplier = this.alpha_;
                _local3.colorTransform(_local3.rect, this._1Tp);
            };
            return (_local3);
        }

        public function setMerchandiseType(_arg1:int):void{
            this._0Wm = _arg1;
            this.merchandiseTexture_ = ObjectLibrary.getRedrawnTextureFromType(this._0Wm, 100, false);
        }


    }
}//package com.company.assembleegameclient.objects

