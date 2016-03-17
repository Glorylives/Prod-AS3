// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1so.0yC

package _1so{
    import flash.display.Sprite;
    import flash.display.DisplayObjectContainer;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.display.Shape;
    import flash.geom.Point;
    import flash.events.MouseEvent;
    import flash.filters.DropShadowFilter;
    import flash.geom.Rectangle;
    import com.company.util.Ck;
    import com.company.util.Trig;
    import com.company.assembleegameclient.map._1C8;
    import flash.display.Graphics;

    public class _0yC extends Sprite {

        public static const pi:int = 8;
        public static const _continue:int = 11;
        public static const i9:int = 3;

        private static var _0NM:Menu = null;

        public var _1Lx:DisplayObjectContainer;
        public var _1Ux:uint;
        public var _0ah:uint;
        public var go_:GameObject = null;
        public var _0Tt:Vector.<GameObject>;
        public var _01:Boolean = false;
        private var tP:Boolean;
        private var _1NH:Shape;
        protected var _0Xr:_1ae = null;
        private var _1rV:Point;

        public function _0yC(_arg1:uint, _arg2:uint, _arg3:Boolean){
            this._0Tt = new Vector.<GameObject>();
            this._1NH = new Shape();
            this._1rV = new Point();
            super();
            this._1Ux = _arg1;
            this._0ah = _arg2;
            this.tP = _arg3;
            addChild(this._1NH);
            this._24v();
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            visible = false;
        }

        public static function K2():void{
            if (_0NM != null)
            {
                if (_0NM.parent != null)
                {
                    _0NM.parent.removeChild(_0NM);
                };
                _0NM = null;
            };
        }


        protected function onMouseOver(_arg1:MouseEvent):void{
            this._01- = true;
            this._24v();
        }

        protected function onMouseOut(_arg1:MouseEvent):void{
            this._01- = false;
            this._24v();
        }

        protected function onMouseDown(_arg1:MouseEvent):void{
            _arg1.stopImmediatePropagation();
        }

        protected function hZ(_arg1:_1ae):void{
            this._1Di();
            this._0Xr = _arg1;
            if (this._0Xr != null)
            {
                addChild(this._0Xr);
                this._00W(this._0Xr);
            };
        }

        protected function _1Di():void{
            if (this._0Xr != null)
            {
                if (this._0Xr.parent != null)
                {
                    this._0Xr.parent.removeChild(this._0Xr);
                };
                this._0Xr = null;
            };
        }

        protected function YK(_arg1:Menu):void{
            this._1Di();
            _0NM = _arg1;
            this._1Lx.addChild(_0NM);
        }

        public function _1Ix(_arg1:GameObject):void{
            if (this.go_ != _arg1)
            {
                this.go_ = _arg1;
            };
            this._0Tt.length = 0;
            if (this.go_ == null)
            {
                visible = false;
            };
        }

        public function _1uN(_arg1:GameObject):void{
            this._0Tt.push(_arg1);
        }

        public function draw(_arg1:int, _arg2:_1C8):void{
            var _local3:Rectangle;
            var _local4:Number;
            var _local5:Number;
            if (this.go_ == null)
            {
                visible = false;
                return;
            };
            this.go_._14(_arg2);
            _local3 = _arg2._0KH;
            _local4 = this.go_._4M[0];
            _local5 = this.go_._4M[1];
            if (!Ck._1c(_arg2._0KH, 0, 0, _local4, _local5, this._1rV))
            {
                this.go_ = null;
                visible = false;
                return;
            };
            x = this._1rV.x;
            y = this._1rV.y;
            var _local6:Number = Trig.AR((270 - (Trig._1y * Math.atan2(_local4, _local5))));
            if (this._1rV.x < (_local3.left + 5))
            {
                if (_local6 > 45)
                {
                    _local6 = 45;
                };
                if (_local6 < -45)
                {
                    _local6 = -45;
                };
            } else
            {
                if (this._1rV.x > (_local3.right - 5))
                {
                    if (_local6 > 0)
                    {
                        if (_local6 < 135)
                        {
                            _local6 = 135;
                        };
                    } else
                    {
                        if (_local6 > -135)
                        {
                            _local6 = -135;
                        };
                    };
                };
            };
            if (this._1rV.y < (_local3.top + 5))
            {
                if (_local6 < 45)
                {
                    _local6 = 45;
                };
                if (_local6 > 135)
                {
                    _local6 = 135;
                };
            } else
            {
                if (this._1rV.y > (_local3.bottom - 5))
                {
                    if (_local6 > -45)
                    {
                        _local6 = -45;
                    };
                    if (_local6 < -135)
                    {
                        _local6 = -135;
                    };
                };
            };
            this._1NH.rotation = _local6;
            if (this._0Xr != null)
            {
                this._00W(this._0Xr);
            };
            visible = true;
        }

        private function _00W(_arg1:_1ae):void{
            var _local5:Number;
            var _local8:Number;
            var _local9:Number;
            var _local2:Number = this._1NH.rotation;
            var _local3:int = ((i9 + _continue) + 12);
            var _local4:Number = (_local3 * Math.cos((_local2 * Trig.kP)));
            _local5 = (_local3 * Math.sin((_local2 * Trig.kP)));
            var _local6:Number = _arg1.Vz;
            var _local7:Number = _arg1.r0;
            if ((((_local2 >= 45)) && ((_local2 <= 135))))
            {
                _local8 = (_local4 + (_local6 / Math.tan((_local2 * Trig.kP))));
                _arg1.x = (((_local4 + _local8) / 2) - (_local6 / 2));
                _arg1.y = _local5;
            } else
            {
                if ((((_local2 <= -45)) && ((_local2 >= -135))))
                {
                    _local8 = (_local4 - (_local6 / Math.tan((_local2 * Trig.kP))));
                    _arg1.x = (((_local4 + _local8) / 2) - (_local6 / 2));
                    _arg1.y = (_local5 - _local7);
                } else
                {
                    if ((((_local2 < 45)) && ((_local2 > -45))))
                    {
                        _arg1.x = _local4;
                        _local9 = (_local5 + (_local7 * Math.tan((_local2 * Trig.kP))));
                        _arg1.y = (((_local5 + _local9) / 2) - (_local7 / 2));
                    } else
                    {
                        _arg1.x = (_local4 - _local6);
                        _local9 = (_local5 - (_local7 * Math.tan((_local2 * Trig.kP))));
                        _arg1.y = (((_local5 + _local9) / 2) - (_local7 / 2));
                    };
                };
            };
        }

        private function _24v():void{
            var _local1:Graphics = this._1NH.graphics;
            _local1.clear();
            var _local2:int = ((((this.tP) || (this._01-))) ? _continue : pi);
            _local1.lineStyle(1, this._1Ux);
            _local1.beginFill(this._0ah);
            _local1.moveTo(i9, 0);
            _local1.lineTo((_local2 + i9), _local2);
            _local1.lineTo((_local2 + i9), -(_local2));
            _local1.lineTo(i9, 0);
            _local1.endFill();
            _local1.lineStyle();
        }


    }
}//package 1so

