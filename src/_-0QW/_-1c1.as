// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.1c1

package 0QW{
    import flash.display.Sprite;
    import 0QW.0Oy;
    import flash.display.BitmapData;
    import flash.utils.Dictionary;
    import 0QW.0bW;
    import flash.display.Shape;
    import com.company.util.IntPoint;
    import flash.display.Bitmap;
    import com.company.util.AssetLibrary;
    import flash.events.Event;
    import 0QW.172;
    import __AS3__.vec.Vector;
    import flash.geom.Rectangle;
    import flash.events.MouseEvent;
    import flash.events.KeyboardEvent;
    import flash.ui.Keyboard;
    import com.company.util.02E;
    import 0QW.1KM;
    import com.company.assembleegameclient.map.0s6;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.map.T8;
    import flash.display.Graphics;
    import flash.geom.Matrix;
    import com.company.util.PointUtil;
    import __AS3__.vec.*;
    import 0QW.*;

    class 1c1 extends Sprite {

        public static const b7:int = 0x0200;
        public static const r1:int = 16;
        public static const 0H4:int = 0x0200;
        public static const 1gw:Number = 0.0625;
        public static const 1vy:Number = 16;

        private static var W0:Class = 0Oy;
        private static var 26a:BitmapData = new W0().bitmapData;

        public var 1Oz:Dictionary;
        public var 1q3:0bW;
        public var lN:BitmapData;
        public var map_:BitmapData;
        public var S:Shape;
        public var ET:IntPoint;
        public var function:Number = 1;
        private var 0B5:IntPoint = null;
        private var 1qe:IntPoint = null;
        private var bQ:int = 0;
        private var 1N-:int = 0;
        private var 1J4:BitmapData;
        private var 16q:BitmapData;
        public var bE:Boolean = false;

        public function 1c1(){
            this.1Oz = new Dictionary();
            this.1q3 = new 0bW((b7 * r1), (b7 * r1), true, 0);
            this.lN = new HL(b7, b7, true, 0);
            this.map_ = new HL(0H4, 0H4, true, 0);
            this.S = new Shape();
            super();
            graphics.beginBitmapFill(26a, null, true);
            graphics.drawRect(0, 0, 0H4, 0H4);
            addChild(new Bitmap(this.map_));
            addChild(this.S);
            this.ET = new IntPoint(((b7 / 2) - (this.0Cr() / 2)), ((b7 / 2) - (this.0Cr() / 2)));
            this.1J4 = AssetLibrary.1JR("invisible", 0);
            this.16q = AssetLibrary.1JR("lofiObj3", 0xFF);
            this.draw();
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function getType(_arg1:int, _arg2:int, _arg3:int):int{
            var _local4:172 = this.0hm(_arg1, _arg2);
            if (_local4 == null)
            {
                return (-1);
            };
            return (_local4.18A[_arg3]);
        }

        public function 0hm(_arg1:int, _arg2:int):172{
            return (this.1Oz[(_arg1 + (_arg2 * b7))]);
        }

        public function 0j0(_arg1:int, _arg2:int, _arg3:int, _arg4:int):void{
            var _local5:172 = this.OR(_arg1, _arg2);
            if (_local5.18A[_arg3] == _arg4)
            {
                return;
            };
            _local5.18A[_arg3] = _arg4;
            this.0Wb(_arg1, _arg2, _local5);
        }

        public function 1sb(_arg1:int, _arg2:int):String{
            var _local3:172 = this.0hm(_arg1, _arg2);
            if (_local3 == null)
            {
                return (null);
            };
            return (_local3.0hD);
        }

        public function 7N(_arg1:int, _arg2:int, _arg3:String):void{
            var _local4:172 = this.OR(_arg1, _arg2);
            _local4.0hD = _arg3;
        }

        public function 21V():Vector.<IntPoint>{
            var _local2:String;
            var _local3:int;
            var _local1:Vector.<IntPoint> = new Vector.<IntPoint>();
            for (_local2 in this.1Oz)
            {
                _local3 = int(_local2);
                _local1.push(new IntPoint((_local3 % b7), (_local3 / b7)));
            };
            return (_local1);
        }

        public function 0r7(_arg1:int, _arg2:int, _arg3:172):void{
            _arg3 = _arg3.clone();
            this.1Oz[(_arg1 + (_arg2 * b7))] = _arg3;
            this.0Wb(_arg1, _arg2, _arg3);
        }

        public function 0lr(_arg1:int, _arg2:int):void{
            this.0wd(_arg1, _arg2);
            this.0Wb(_arg1, _arg2, null);
        }

        public function clear():void{
            var _local1:String;
            var _local2:int;
            for (_local1 in this.1Oz)
            {
                _local2 = int(_local1);
                this.0lr((_local2 % b7), (_local2 / b7));
            };
        }

        public function 1xY():Rectangle{
            var _local5:String;
            var _local6:172;
            var _local7:int;
            var _local8:int;
            var _local9:int;
            var _local1:int = b7;
            var _local2:int = b7;
            var _local3:int;
            var _local4:int;
            for (_local5 in this.1Oz)
            {
                _local6 = this.1Oz[_local5];
                if (!_local6.isEmpty())
                {
                    _local7 = int(_local5);
                    _local8 = (_local7 % b7);
                    _local9 = (_local7 / b7);
                    if (_local8 < _local1)
                    {
                        _local1 = _local8;
                    };
                    if (_local9 < _local2)
                    {
                        _local2 = _local9;
                    };
                    if ((_local8 + 1) > _local3)
                    {
                        _local3 = (_local8 + 1);
                    };
                    if ((_local9 + 1) > _local4)
                    {
                        _local4 = (_local9 + 1);
                    };
                };
            };
            if (_local1 > _local3)
            {
                return (null);
            };
            return (new Rectangle(_local1, _local2, (_local3 - _local1), (_local4 - _local2)));
        }

        private function 0Cr():int{
            return ((0H4 / (r1 * this.function)));
        }

        private function _ZS(_arg1:Number):void{
            if ((((((_arg1 > 1)) && ((this.function >= 1vy)))) || ((((_arg1 < 1)) && ((this.function <= 1gw))))))
            {
                return;
            };
            var _local2:IntPoint = this.1wM();
            this.function = (this.function * _arg1);
            var _local3:IntPoint = this.1wM();
            this.0mN((_local2.x_ - _local3.x_), (_local2.y_ - _local3.y_));
        }

        private function 1ls():Boolean{
            return ((((this.0B5 == null)) && ((this.1qe == null))));
        }

        private function 12Q():void{
            if (!this.1ls())
            {
                return;
            };
            this._ZS(2);
            this.draw();
        }

        private function 18r():void{
            if (!this.1ls())
            {
                return;
            };
            this._ZS(0.5);
            this.draw();
        }

        private function moveLeft():void{
            if (!this.1ls())
            {
                return;
            };
            this.0mN(-1, 0);
            this.draw();
        }

        private function moveRight():void{
            if (!this.1ls())
            {
                return;
            };
            this.0mN(1, 0);
            this.draw();
        }

        private function moveUp():void{
            if (!this.1ls())
            {
                return;
            };
            this.0mN(0, -1);
            this.draw();
        }

        private function moveDown():void{
            if (!this.1ls())
            {
                return;
            };
            this.0mN(0, 1);
            this.draw();
        }

        private function 0mN(_arg1:int, _arg2:int):void{
            var _local3:int;
            var _local4:int = (b7 - this.0Cr());
            this.ET.x_ = Math.max(_local3, Math.min(_local4, (this.ET.x_ + _arg1)));
            this.ET.y_ = Math.max(_local3, Math.min(_local4, (this.ET.y_ + _arg2)));
        }

        private function 1wM():IntPoint{
            var _local1:int = Math.max(0, Math.min((0H4 - 1), mouseX));
            var _local2:int = Math.max(0, Math.min((0H4 - 1), mouseY));
            return (new IntPoint((this.ET.x_ + (_local1 / (r1 * this.function))), (this.ET.y_ + (_local2 / (r1 * this.function)))));
        }

        public function 1wH():Rectangle{
            var _local1:IntPoint = this.1wM();
            if (this.0B5 == null)
            {
                return (new Rectangle(_local1.x_, _local1.y_, 1, 1));
            };
            return (new Rectangle(Math.min(_local1.x_, this.0B5.x_), Math.min(_local1.y_, this.0B5.y_), (Math.abs((_local1.x_ - this.0B5.x_)) + 1), (Math.abs((_local1.y_ - this.0B5.y_)) + 1)));
        }

        private function 11t(_arg1:IntPoint):IntPoint{
            return (new IntPoint((((_arg1.x_ - this.ET.x_) * r1) * this.function), (((_arg1.y_ - this.ET.y_) * r1) * this.function)));
        }

        private function 2-1(_arg1:int):Number{
            return (((_arg1 * this.function) * r1));
        }

        private function 0e5():Rectangle{
            var _local1:Rectangle = this.1wH();
            var _local2:IntPoint = this.11t(new IntPoint(_local1.x, _local1.y));
            _local1.x = _local2.x_;
            _local1.y = _local2.y_;
            _local1.width = (this.2-1(_local1.width) - 1);
            _local1.height = (this.2-1(_local1.height) - 1);
            return (_local1);
        }

        private function onAddedToStage(_arg1:Event):void{
            addEventListener(MouseEvent.MOUSE_WHEEL, this.1Av);
            addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            addEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            stage.addEventListener(KeyboardEvent.KEY_UP, this.0M9);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(MouseEvent.MOUSE_WHEEL, this.1Av);
            removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            removeEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            stage.removeEventListener(KeyboardEvent.KEY_UP, this.0M9);
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            switch (_arg1.keyCode)
            {
                case Keyboard.SHIFT:
                    if (this.0B5 != null) break;
                    this.0B5 = this.1wM();
                    break;
                case Keyboard.CONTROL:
                    if (this.1qe != null)
                    {
                        break;
                    };
                    this.1qe = this.1wM();
                    break;
                case Keyboard.LEFT:
                    this.moveLeft();
                    break;
                case Keyboard.RIGHT:
                    this.moveRight();
                    break;
                case Keyboard.UP:
                    this.moveUp();
                    break;
                case Keyboard.DOWN:
                    this.moveDown();
                    break;
                case 02E.16Y:
                    this.18r();
                    break;
                case 02E.1oQ:
                    this.12Q();
                    break;
            };
            this.draw();
        }

        private function 0M9(_arg1:KeyboardEvent):void{
            switch (_arg1.keyCode)
            {
                case Keyboard.SHIFT:
                    this.0B5 = null;
                    break;
                case Keyboard.CONTROL:
                    this.1qe = null;
                    break;
            };
            this.draw();
        }

        private function 1Av(_arg1:MouseEvent):void{
            if (_arg1.delta > 0)
            {
                this.12Q();
            } else
            {
                if (_arg1.delta < 0)
                {
                    this.18r();
                };
            };
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            var _local7:int;
            var _local2:Rectangle = this.1wH();
            var _local3:Vector.<IntPoint> = new Vector.<IntPoint>();
            var _local4:int = Math.max((_local2.x + this.bQ), _local2.right);
            var _local5:int = Math.max((_local2.y + this.1N-), _local2.bottom);
            var _local6:int = _local2.x;
            while (_local6 < _local4)
            {
                _local7 = _local2.y;
                while (_local7 < _local5)
                {
                    _local3.push(new IntPoint(_local6, _local7));
                    _local7++;
                };
                _local6++;
            };
            dispatchEvent(new je(_local3));
        }

        public function 0n8():void{
            var _local1:Rectangle = this.1wH();
            this.bQ = _local1.width;
            this.1N- = _local1.height;
        }

        public function 1jY():void{
            this.1N- = 0;
            this.bQ = 0;
        }

        private function onMouseMove(_arg1:MouseEvent):void{
            var _local2:IntPoint;
            if (!_arg1.shiftKey)
            {
                this.0B5 = null;
            } else
            {
                if (this.0B5 == null)
                {
                    this.0B5 = this.1wM();
                };
            };
            if (!_arg1.ctrlKey)
            {
                this.1qe = null;
            } else
            {
                if (this.1qe == null)
                {
                    this.1qe = this.1wM();
                };
            };
            if (_arg1.buttonDown)
            {
                dispatchEvent(new je(new <IntPoint>[this.1wM()]));
            };
            if (this.1qe != null)
            {
                _local2 = this.1wM();
                this.0mN((this.1qe.x_ - _local2.x_), (this.1qe.y_ - _local2.y_));
                this.draw();
            } else
            {
                this.1KN();
            };
        }

        private function OR(_arg1:int, _arg2:int):172{
            var _local3:int = (_arg1 + (_arg2 * b7));
            var _local4:172 = this.1Oz[_local3];
            if (_local4 != null)
            {
                return (_local4);
            };
            _local4 = new 172();
            this.1Oz[_local3] = _local4;
            return (_local4);
        }

        private function 0wd(_arg1:int, _arg2:int):void{
            delete this.1Oz[(_arg1 + (_arg2 * b7))];
        }

        private function 0Wb(_arg1:int, _arg2:int, _arg3:172):void{
            var _local5:BitmapData;
            var _local6:BitmapData;
            var _local7:uint;
            var _local4:Rectangle = new Rectangle((_arg1 * r1), (_arg2 * r1), r1, r1);
            this.1q3.09R(_local4);
            this.lN.setPixel32(_arg1, _arg2, 0);
            if (_arg3 == null)
            {
                return;
            };
            if (_arg3.18A[1KM.1Xh] != -1)
            {
                _local5 = 0s6.getBitmapData(_arg3.18A[1KM.1Xh]);
                this.1q3.copyTo(_local5, _local5.rect, _local4);
            };
            if (_arg3.18A[1KM.ti] != -1)
            {
                _local6 = ObjectLibrary.getTextureFromType(_arg3.18A[1KM.ti]);
                if ((((_local6 == null)) || ((_local6 == this.1J4))))
                {
                    this.1q3.copyTo(this.16q, this.16q.rect, _local4);
                } else
                {
                    this.1q3.copyTo(_local6, _local6.rect, _local4);
                };
            };
            if (_arg3.18A[1KM.0eT] != -1)
            {
                _local7 = T8.getColor(_arg3.18A[1KM.0eT]);
                this.lN.setPixel32(_arg1, _arg2, (0x5F000000 | _local7));
            };
        }

        private function 1KN():void{
            var _local1:Rectangle = this.0e5();
            var _local2:Graphics = this.S.graphics;
            _local2.clear();
            _local2.lineStyle(1, 0xFFFFFF);
            _local2.beginFill(0xFFFFFF, 0.1);
            _local2.drawRect(_local1.x, _local1.y, _local1.width, _local1.height);
            _local2.endFill();
            _local2.lineStyle();
        }

        public function draw():void{
            var _local2:Matrix;
            var _local3:int;
            var _local4:BitmapData;
            var _local1:int = (0H4 / this.function);
            this.map_.fillRect(this.map_.rect, 0);
            this.1q3.Hn(new Rectangle((this.ET.x_ * r1), (this.ET.y_ * r1), _local1, _local1), this.map_, this.map_.rect);
            _local2 = new Matrix();
            _local2.identity();
            _local3 = (r1 * this.function);
            if (this.function > 2)
            {
                _local4 = new HL((0H4 / _local3), (0H4 / _local3));
                _local4.copyPixels(this.lN, new Rectangle(this.ET.x_, this.ET.y_, _local1, _local1), PointUtil.1EH);
                _local2.scale(_local3, _local3);
                this.map_.draw(_local4, _local2);
            } else
            {
                _local2.translate(-(this.ET.x_), -(this.ET.y_));
                _local2.scale(_local3, _local3);
                this.map_.draw(this.lN, _local2, null, null, this.map_.rect);
            };
            this.1KN();
        }


    }
}//package 0QW

