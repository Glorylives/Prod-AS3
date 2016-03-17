// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1so.0yC

package 1so{
    import flash.display.Sprite;
    import 099.Menu;
    import flash.display.DisplayObjectContainer;
    import com.company.assembleegameclient.objects.GameObject;
    import __AS3__.vec.Vector;
    import flash.display.Shape;
    import 0qj.1ae;
    import flash.geom.Point;
    import flash.events.MouseEvent;
    import flash.filters.DropShadowFilter;
    import flash.geom.Rectangle;
    import com.company.util.Ck;
    import com.company.util.Trig;
    import com.company.assembleegameclient.map.1C8;
    import flash.display.Graphics;
    import __AS3__.vec.*;

    public class 0yC extends Sprite {

        public static const pi:int = 8;
        public static const continue:int = 11;
        public static const i9:int = 3;

        private static var 0NM:Menu = null;

        public var 1Lx:DisplayObjectContainer;
        public var 1Ux:uint;
        public var 0ah:uint;
        public var go_:GameObject = null;
        public var 0Tt:Vector.<GameObject>;
        public var 01-:Boolean = false;
        private var tP:Boolean;
        private var 1NH:Shape;
        protected var 0Xr:1ae = null;
        private var 1rV:Point;

        public function 0yC(_arg1:uint, _arg2:uint, _arg3:Boolean){
            this.0Tt = new Vector.<GameObject>();
            this.1NH = new Shape();
            this.1rV = new Point();
            super();
            this.1Ux = _arg1;
            this.0ah = _arg2;
            this.tP = _arg3;
            addChild(this.1NH);
            this.24v();
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            visible = false;
        }

        public static function K2():void{
            if (0NM != null)
            {
                if (0NM.parent != null)
                {
                    0NM.parent.removeChild(0NM);
                };
                0NM = null;
            };
        }


        protected function onMouseOver(_arg1:MouseEvent):void{
            this.01- = true;
            this.24v();
        }

        protected function onMouseOut(_arg1:MouseEvent):void{
            this.01- = false;
            this.24v();
        }

        protected function onMouseDown(_arg1:MouseEvent):void{
            _arg1.stopImmediatePropagation();
        }

        protected function hZ(_arg1:1ae):void{
            this.1Di();
            this.0Xr = _arg1;
            if (this.0Xr != null)
            {
                addChild(this.0Xr);
                this.00W(this.0Xr);
            };
        }

        protected function 1Di():void{
            if (this.0Xr != null)
            {
                if (this.0Xr.parent != null)
                {
                    this.0Xr.parent.removeChild(this.0Xr);
                };
                this.0Xr = null;
            };
        }

        protected function YK(_arg1:Menu):void{
            this.1Di();
            0NM = _arg1;
            this.1Lx.addChild(0NM);
        }

        public function 1Ix(_arg1:GameObject):void{
            if (this.go_ != _arg1)
            {
                this.go_ = _arg1;
            };
            this.0Tt.length = 0;
            if (this.go_ == null)
            {
                visible = false;
            };
        }

        public function 1uN(_arg1:GameObject):void{
            this.0Tt.push(_arg1);
        }

        public function draw(_arg1:int, _arg2:1C8):void{
            var _local3:Rectangle;
            var _local4:Number;
            var _local5:Number;
            if (this.go_ == null)
            {
                visible = false;
                return;
            };
            this.go_.14-(_arg2);
            _local3 = _arg2.0KH;
            _local4 = this.go_.4M[0];
            _local5 = this.go_.4M[1];
            if (!Ck.1c(_arg2.0KH, 0, 0, _local4, _local5, this.1rV))
            {
                this.go_ = null;
                visible = false;
                return;
            };
            x = this.1rV.x;
            y = this.1rV.y;
            var _local6:Number = Trig.AR((270 - (Trig.1y * Math.atan2(_local4, _local5))));
            if (this.1rV.x < (_local3.left + 5))
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
                if (this.1rV.x > (_local3.right - 5))
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
            if (this.1rV.y < (_local3.top + 5))
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
                if (this.1rV.y > (_local3.bottom - 5))
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
            this.1NH.rotation = _local6;
            if (this.0Xr != null)
            {
                this.00W(this.0Xr);
            };
            visible = true;
        }

        private function 00W(_arg1:1ae):void{
            var _local5:Number;
            var _local8:Number;
            var _local9:Number;
            var _local2:Number = this.1NH.rotation;
            var _local3:int = ((i9 + continue) + 12);
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

        private function 24v():void{
            var _local1:Graphics = this.1NH.graphics;
            _local1.clear();
            var _local2:int = ((((this.tP) || (this.01-))) ? continue : pi);
            _local1.lineStyle(1, this.1Ux);
            _local1.beginFill(this.0ah);
            _local1.moveTo(i9, 0);
            _local1.lineTo((_local2 + i9), _local2);
            _local1.lineTo((_local2 + i9), -(_local2));
            _local1.lineTo(i9, 0);
            _local1.endFill();
            _local1.lineStyle();
        }


    }
}//package 1so

