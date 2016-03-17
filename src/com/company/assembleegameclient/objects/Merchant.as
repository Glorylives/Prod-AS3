// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Merchant

package com.company.assembleegameclient.objects{
    import flash.geom.Matrix;
    import flash.display.BitmapData;
    import 0UV.105;
    import 1qQ.0oB;
    import flash.geom.ColorTransform;
    import _04_._1JZ;
    import com.company.util.IntPoint;
    import com.company.assembleegameclient.map.Map;
    import 1n4.1cA;
    import gx.Wl;
    import 0gd.GTween;
    import 0G6.4t;
    import __AS3__.vec.Vector;
    import 0qj.EquipmentToolTip;
    import 1jB.1Ha;
    import 0qj.1ae;
    import com.company.ui.eG;
    import com.company.assembleegameclient.map.1C8;
    import __AS3__.vec.*;

    public class Merchant extends SellableObject implements 18p {

        private static const 04u:int = 0;
        private static const 0YL:int = 1;
        private static const lx:int = 2;
        private static const 0Tw:int = 3;
        private static const 1UR:int = 4;
        private static const T:Number = 1;
        private static const 0sv:Matrix = function ():Matrix{
            var _local1:* = new Matrix();
            _local1.translate(10, 5);
            return (_local1);
        }();

        public var 0Wm:int = -1;
        public var wT:int = -1;
        public var 00c:int = -1;
        public var yl:int = 0;
        public var merchandiseTexture_:BitmapData = null;
        public var 5x:int = 0;
        public var alpha_:Number = 1;
        private var addSpeechBalloon:105;
        private var 0C0:0oB;
        private var 0yM:Boolean = true;
        private var TU:int = 0;
        private var 1Tp:ColorTransform;

        public function Merchant(_arg1:XML){
            this.1Tp = new ColorTransform(1, 1, 1, 1);
            this.addSpeechBalloon = _1JZ.0JF().getInstance(105);
            this.0C0 = _1JZ.0JF().getInstance(0oB);
            super(_arg1);
            10J = true;
        }

        override public function setPrice(_arg1:int):void{
            super.setPrice(_arg1);
            this.5x = 0;
        }

        override public function setRankReq(_arg1:int):void{
            super.setRankReq(_arg1);
            this.5x = 0;
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

        public function 0VI(_arg1:int):Wl{
            var _local2:1cA;
            var _local3:uint;
            var _local4:uint;
            var _local5:uint;
            switch (_arg1)
            {
                case 0YL:
                    _local2 = new 1cA().setParams("Merchant.new");
                    _local3 = 0xE6E6E6;
                    _local4 = 0xFFFFFF;
                    _local5 = 5931045;
                    break;
                case lx:
                    if (this.00c == 0)
                    {
                        _local2 = new 1cA().setParams("Merchant.goingSoon");
                    } else
                    {
                        if (this.00c == 1)
                        {
                            _local2 = new 1cA().setParams("Merchant.goingInOneMinute");
                        } else
                        {
                            _local2 = new 1cA().setParams("Merchant.goingInNMinutes", {minutes:this.00c});
                        };
                    };
                    _local3 = 5973542;
                    _local4 = 16549442;
                    _local5 = 16549442;
                    break;
                case 0Tw:
                    _local2 = new 1cA().setParams("Merchant.limitedStock", {count:this.wT});
                    _local3 = 5973542;
                    _local4 = 16549442;
                    _local5 = 16549442;
                    break;
                case 1UR:
                    _local2 = new 1cA().setParams("Merchant.discount", {discount:this.yl});
                    _local3 = 6324275;
                    _local4 = 16777103;
                    _local5 = 16777103;
                    break;
                    return (null);
            };
            _local2.1jM(this.0C0);
            return (new Wl(this, _local2.getString(), "", false, false, _local3, 1, _local4, 1, _local5, 6, true, false));
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local5:GTween;
            super.update(_arg1, _arg2);
            if (this.0yM)
            {
                if (this.00c == 2147483647)
                {
                    _local5 = new GTween(this, (0.5 * T), {size_:150}, {ease:4t.0uh});
                    _local5.0aM = new GTween(this, (0.5 * T), {size_:100}, {ease:4t.0vp});
                    _local5.0aM.paused = true;
                };
                this.0yM = false;
            };
            this.5x = (this.5x - _arg2);
            if (this.5x > 0)
            {
                return (true);
            };
            this.5x = 5000;
            var _local3:Vector.<int> = new Vector.<int>();
            if (this.00c == 2147483647)
            {
                _local3.push(0YL);
            } else
            {
                if ((((this.00c >= 0)) && ((this.00c <= 5))))
                {
                    _local3.push(lx);
                };
            };
            if ((((this.wT >= 1)) && ((this.wT <= 2))))
            {
                _local3.push(0Tw);
            };
            if (this.yl > 0)
            {
                _local3.push(1UR);
            };
            if (_local3.length == 0)
            {
                return (true);
            };
            this.TU = (++this.TU % _local3.length);
            var _local4:int = _local3[this.TU];
            this.addSpeechBalloon.dispatch(this.0VI(_local4));
            return (true);
        }

        override public function soldObjectName():String{
            return (ObjectLibrary.118[this.0Wm]);
        }

        override public function soldObjectInternalName():String{
            var _local1:XML = ObjectLibrary.GD[this.0Wm];
            return (_local1.@id.toString());
        }

        override public function getTooltip():1ae{
            var _local1:1ae = new EquipmentToolTip(this.0Wm, map_.player_, -1, 1Ha.NPC);
            return (_local1);
        }

        override public function getSellableType():int{
            return (this.0Wm);
        }

        override public function getIcon():BitmapData{
            var _local3:eG;
            var _local1:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.0Wm, 80, true);
            var _local2:XML = ObjectLibrary.GD[this.0Wm];
            if (_local2.hasOwnProperty("Doses"))
            {
                _local1 = _local1.clone();
                _local3 = new eG(12, 0xFFFFFF, false, 0, 0);
                _local3.text = String(_local2.Doses);
                _local3.re();
                _local1.draw(_local3, 0sv);
            };
            return (_local1);
        }

        public function getTex1Id(_arg1:int):int{
            var _local2:XML = ObjectLibrary.GD[this.0Wm];
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
            var _local2:XML = ObjectLibrary.GD[this.0Wm];
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

        override protected function getTexture(_arg1:1C8, _arg2:int):BitmapData{
            if ((((this.alpha_ == 1)) && ((size_ == 100))))
            {
                return (this.merchandiseTexture_);
            };
            var _local3:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.0Wm, size_, false, false);
            if (this.alpha_ != 1)
            {
                this.1Tp.alphaMultiplier = this.alpha_;
                _local3.colorTransform(_local3.rect, this.1Tp);
            };
            return (_local3);
        }

        public function setMerchandiseType(_arg1:int):void{
            this.0Wm = _arg1;
            this.merchandiseTexture_ = ObjectLibrary.getRedrawnTextureFromType(this.0Wm, 100, false);
        }


    }
}//package com.company.assembleegameclient.objects

