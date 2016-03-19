// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//oa.Dy

package oa{
    import flash.utils.Dictionary;
    import flash.geom.Rectangle;
    import flash.geom.Point;
    import flash.display.BitmapData;
    import __AS3__.vec.Vector;
    import flash.display.Shape;
    import com.company.assembleegameclient.objects.GameObject;
    import 0qj.1kb;
    import 099.1Bn;
    import flash.geom.Matrix;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.map.1qi;
    import com.company.util.AssetLibrary;
    import flash.geom.ColorTransform;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import com.company.assembleegameclient.map.0s6;
    import flash.display.Graphics;
    import com.company.util.PointUtil;
    import com.company.assembleegameclient.objects.Character;
    import com.company.assembleegameclient.objects.Portal;
    import com.company.assembleegameclient.objects.GuildHallPortal;
    import com.company.util._Ck;
    import __AS3__.vec.*;

    public class Dy extends 1a4 {

        public static const final:int = (5 * 5);//25

        private static var 0Ws:Dictionary = new Dictionary();

        public var k4:int;
        public var _height:int;
        public var 0od:int = 0;
        public var 1nJ:Rectangle;
        public var active:Boolean = true;
        public var 1ZK:Point;
        public var 0fy:BitmapData;
        public var 17X:Vector.<Number>;
        public var 0rr:BitmapData;
        public var mH:Shape;
        public var 1ID:Shape;
        private var focus:GameObject;
        private var 0-P:0oH;
        private var h4:Boolean = false;
        private var tooltip:1kb = null;
        private var menu:1Bn = null;
        private var 012:Matrix;
        private var 26O:Matrix;
        private var 1K:Vector.<Player>;
        private var 1rV:Point;
        private var 1gR:Boolean;

        public function Dy(_arg1:int, _arg2:int){
            this.17X = new Vector.<Number>();
            this.012 = new Matrix();
            this.26O = new Matrix();
            this.1K = new Vector.<Player>();
            this.1rV = new Point();
            super();
            this.k4 = _arg1;
            this._height = _arg2;
            this.1gR = Parameters.data_.allowMiniMapRotation;
            this.0p4();
            this.1TG();
        }

        public static function 1aR(_arg1:GameObject):uint{
            var _local2:* = _arg1.objectType_;
            if (!0Ws.hasOwnProperty(_local2))
            {
                0Ws[_local2] = _arg1.getColor();
            }
            return (0Ws[_local2]);
        }


        override public function setMap(_arg1:1qi):void{
            this.map = _arg1;
            this.84();
        }

        override public function setFocus(_arg1:GameObject):void{
            this.focus = _arg1;
        }

        private function 84():void{
            this.1nJ = new Rectangle((-(this.k4) / 2), (-(this._height) / 2), this.k4, this._height);
            this.1ZK = new Point(map.width_, map.height_);
            this.0fy = new HL(this.1ZK.x, this.1ZK.y, false, 0);
            var _local1:Number = Math.max((this.k4 / this.1ZK.x), (this._height / this.1ZK.y));
            var _local2:Number = 4;
            while (_local2 > _local1)
            {
                this.17X.push(_local2);
                _local2 = (_local2 / 2);
            }
            this.17X.push(_local1);
            ((this.0-P) && (this.0-P.1ZR(this.17X.length)));
        }

        private function 0p4():void{
            this.0rr = AssetLibrary.1JR("lofiInterface", 54).clone();
            this.0rr.colorTransform(this.0rr.rect, new ColorTransform(0, 0, 1));
            graphics.clear();
            graphics.beginFill(0x1B1B1B);
            graphics.drawRect(0, 0, this.k4, this._height);
            graphics.endFill();
            this.mH = new Shape();
            this.mH.x = (this.k4 / 2);
            this.mH.y = (this._height / 2);
            addChild(this.mH);
            this.1ID = new Shape();
            this.1ID.x = (this.k4 / 2);
            this.1ID.y = (this._height / 2);
            addChild(this.1ID);
            this.0-P = new 0oH();
            this.0-P.x = (this.k4 - 20);
            this.0-P.0jT.add(this.1FF);
            this.0-P.1ZR(this.17X.length);
            addChild(this.0-P);
        }

        private function 1TG():void{
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            addEventListener(MouseEvent.RIGHT_CLICK, this.QA);
            addEventListener(MouseEvent.CLICK, this.hj);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.active = false;
            this.1UZ();
        }

        public function dispose():void{
            this.0fy.dispose();
            this.0fy = null;
            this.1UZ();
        }

        private function 1FF(_arg1:int):void{
            this.0od = _arg1;
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.h4 = true;
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.h4 = false;
        }

        private function QA(_arg1:MouseEvent):void{
            this.1gR = ((!(this.1gR)) && (Parameters.data_.allowMiniMapRotation));
        }

        private function hj(_arg1:MouseEvent):void{
            if ((((((((this.tooltip == null)) || ((this.tooltip.parent == null)))) || ((this.tooltip.1K == null)))) || ((this.tooltip.1K.length == 0))))
            {
                return;
            }
            this.K2();
            this.4y();
            this.1Di();
        }

        private function 4y():void{
            this.menu = new 1Bn(map, this.tooltip.1K);
            this.menu.x = (this.tooltip.x + 12);
            this.menu.y = this.tooltip.y;
            1Lx.addChild(this.menu);
        }

        override public function setGroundTile(_arg1:int, _arg2:int, _arg3:uint):void{
            var _local4:uint = 0s6.getColor(_arg3);
            this.0fy.setPixel(_arg1, _arg2, _local4);
        }

        override public function setGameObjectTile(_arg1:int, _arg2:int, _arg3:GameObject):void{
            var _local4:uint = 1aR(_arg3);
            this.0fy.setPixel(_arg1, _arg2, _local4);
        }

        private function 1UZ():void{
            this.1Di();
            this.K2();
        }

        private function 1Di():void{
            if (this.tooltip != null)
            {
                if (this.tooltip.parent != null)
                {
                    this.tooltip.parent.removeChild(this.tooltip);
                }
                this.tooltip = null;
            }
        }

        private function K2():void{
            if (this.menu != null)
            {
                if (this.menu.parent != null)
                {
                    this.menu.parent.removeChild(this.menu);
                }
                this.menu = null;
            }
        }

        override public function draw():void{
            var _local7:Graphics;
            var _local10:GameObject;
            var _local15:uint;
            var _local16:Player;
            var _local17:Number;
            var _local18:Number;
            var _local19:Number;
            var _local20:Number;
            var _local21:Number;
            this.1gR = ((this.1gR) && (Parameters.data_.allowMiniMapRotation));
            this.mH.graphics.clear();
            this.1ID.graphics.clear();
            if (!this.focus)
            {
                return;
            }
            if (!this.active)
            {
                return;
            }
            var _local1:Number = this.17X[this.0od];
            this.012.identity();
            this.012.translate(-(this.focus.x_), -(this.focus.y_));
            this.012.scale(_local1, _local1);
            var _local2:Point = this.012.transformPoint(PointUtil.1EH);
            var _local3:Point = this.012.transformPoint(this.1ZK);
            var _local4:Number = 0;
            if (_local2.x > this.1nJ.left)
            {
                _local4 = (this.1nJ.left - _local2.x);
            } else
            {
                if (_local3.x < this.1nJ.right)
                {
                    _local4 = (this.1nJ.right - _local3.x);
                }
            }
            var _local5:Number = 0;
            if (_local2.y > this.1nJ.top)
            {
                _local5 = (this.1nJ.top - _local2.y);
            } else
            {
                if (_local3.y < this.1nJ.bottom)
                {
                    _local5 = (this.1nJ.bottom - _local3.y);
                }
            }
            this.012.translate(_local4, _local5);
            _local2 = this.012.transformPoint(PointUtil.1EH);
            if ((((_local1 >= 1)) && (this.1gR)))
            {
                this.012.rotate(-(Parameters.data_.cameraAngle));
            }
            var _local6:Rectangle = new Rectangle();
            _local6.x = Math.max(this.1nJ.x, _local2.x);
            _local6.y = Math.max(this.1nJ.y, _local2.y);
            _local6.right = Math.min(this.1nJ.right, (_local2.x + (this.1ZK.x * _local1)));
            _local6.bottom = Math.min(this.1nJ.bottom, (_local2.y + (this.1ZK.y * _local1)));
            _local7 = this.mH.graphics;
            _local7.beginBitmapFill(this.0fy, this.012, false);
            _local7.drawRect(_local6.x, _local6.y, _local6.width, _local6.height);
            _local7.endFill();
            _local7 = this.1ID.graphics;
            var _local8:Number = (mouseX - (this.k4 / 2));
            var _local9:Number = (mouseY - (this._height / 2));
            this.1K.length = 0;
            for each (_local10 in map.goDict_)
            {
                if (!((_local10.props_.rP) || ((_local10 == this.focus))))
                {
                    _local16 = (_local10 as Player);
                    if (_local16 != null)
                    {
                        if (_local16.isPaused())
                        {
                            _local15 = 0x7F7F7F;
                        } else
                        {
                            if (_local16.0kh)
                            {
                                _local15 = 0xFF00;
                            } else
                            {
                                _local15 = 0xFFFF00;
                            }
                        }
                    } else
                    {
                        if ((_local10 is Character))
                        {
                            if (_local10.props_.isEnemy_)
                            {
                                _local15 = 0xFF0000;
                            } else
                            {
                                _local15 = 1aR(_local10);
                            }
                        } else
                        {
                            if ((((_local10 is Portal)) || ((_local10 is GuildHallPortal))))
                            {
                                _local15 = 0xFF;
                            } else
                            {
                                continue;
                            }
                        }
                    }
                    _local17 = (((this.012.a * _local10.x_) + (this.012.c * _local10.y_)) + this.012.tx);
                    _local18 = (((this.012.b * _local10.x_) + (this.012.d * _local10.y_)) + this.012.ty);
                    if ((((((((_local17 <= (-(this.k4) / 2))) || ((_local17 >= (this.k4 / 2))))) || ((_local18 <= (-(this._height) / 2))))) || ((_local18 >= (this._height / 2)))))
                    {
                        Ck.1c(this.1nJ, 0, 0, _local17, _local18, this.1rV);
                        _local17 = this.1rV.x;
                        _local18 = this.1rV.y;
                    }
                    if (((((!((_local16 == null))) && (this.h4))) && ((((this.menu == null)) || ((this.menu.parent == null))))))
                    {
                        _local19 = (_local8 - _local17);
                        _local20 = (_local9 - _local18);
                        _local21 = ((_local19 * _local19) + (_local20 * _local20));
                        if (_local21 < final)
                        {
                            this.1K.push(_local16);
                        }
                    }
                    _local7.beginFill(_local15);
                    _local7.drawRect((_local17 - 2), (_local18 - 2), 4, 4);
                    _local7.endFill();
                }
            }
            if (this.1K.length != 0)
            {
                if (this.tooltip == null)
                {
                    this.tooltip = new 1kb(this.1K);
                    1Lx.addChild(this.tooltip);
                } else
                {
                    if (!this.1gG(this.tooltip.1K, this.1K))
                    {
                        this.tooltip.1jb(this.1K);
                    }
                }
            } else
            {
                if (this.tooltip != null)
                {
                    if (this.tooltip.parent != null)
                    {
                        this.tooltip.parent.removeChild(this.tooltip);
                    }
                    this.tooltip = null;
                }
            }
            var _local11:Number = this.focus.x_;
            var _local12:Number = this.focus.y_;
            var _local13:Number = (((this.012.a * _local11) + (this.012.c * _local12)) + this.012.tx);
            var _local14:Number = (((this.012.b * _local11) + (this.012.d * _local12)) + this.012.ty);
            this.26O.identity();
            this.26O.translate(-4, -5);
            this.26O.scale((8 / this.0rr.width), (32 / this.0rr.height));
            if (!(((_local1 >= 1)) && (this.1gR)))
            {
                this.26O.rotate(Parameters.data_.cameraAngle);
            }
            this.26O.translate(_local13, _local14);
            _local7.beginBitmapFill(this.0rr, this.26O, false);
            _local7.drawRect((_local13 - 16), (_local14 - 16), 32, 32);
            _local7.endFill();
        }

        private function 1gG(_arg1:Vector.<Player>, _arg2:Vector.<Player>):Boolean{
            var _local3:int = _arg1.length;
            if (_local3 != _arg2.length)
            {
                return (false);
            }
            var _local4:int;
            while (_local4 < _local3)
            {
                if (_arg1[_local4] != _arg2[_local4])
                {
                    return (false);
                }
                _local4++;
            }
            return (true);
        }

        override public function zoomIn():void{
            this.0od = this.0-P.10C((this.0od - 1));
        }

        override public function zoomOut():void{
            this.0od = this.0-P.10C((this.0od + 1));
        }

        override public function deactivate():void{
        }


    }
}//package oa

