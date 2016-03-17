// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.Map

package com.company.assembleegameclient.map{
import _04w.Background;

import _1Np._0F;

import _1Wd._01j;

import _1Wd._uo;

import _1m9._0lt;

import _1m9._14d;

import _1m9._BK;

import _1so._QF;

import _5n._1aE;

import _9T._Zf;

import _Jt._4b;

import _gx._1Nb;

import com.company.assembleegameclient.objects._08T;

import flash.filters.ColorMatrixFilter;
    import flash.geom.ColorTransform;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.objects.BasicObject;

import flash.geom.Rectangle;
import flash.utils.Dictionary;
    import flash.display.DisplayObject;
    import flash.display.IGraphicsData;
    import _04_._1JZ;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.game.nx;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.geom.Point;
    import flash.display.GraphicsBitmapFill;
    import flash.display.GraphicsSolidFill;
    import com.company.assembleegameclient.util.ConditionEffect;
    import flash.filters.BlurFilter;

import kabam.rotmg.assets._0EP;

public class Map extends _1qi {

        public static const _0nP:String = "Cloth Bazaar";
        public static const _1U3:String = "Nexus";
        public static const _1aw:String = "Daily Quest Room";
        public static const PET_YARD_1:String = "Pet Yard";
        public static const PET_YARD_2:String = "Pet Yard 2";
        public static const PET_YARD_3:String = "Pet Yard 3";
        public static const PET_YARD_4:String = "Pet Yard 4";
        public static const PET_YARD_5:String = "Pet Yard 5";
        public static const mb:String = "Guild Hall";
        public static const tJ:String = "Nexus_Explanation";
        public static const _1YS:String = "Vault";
        private static const _1uA:Array = ["sortVal_", "objectId_"];
        private static const _113:Array = [Array.NUMERIC, Array.NUMERIC];
        protected static const _1LB:ColorMatrixFilter = new ColorMatrixFilter([0.05, 0.05, 0.05, 0, 0, 0.05, 0.05, 0.05, 0, 0, 0.05, 0.05, 0.05, 0, 0, 0.05, 0.05, 0.05, 1, 0]);

        public static var dD:Boolean = false;
        protected static var _0sr:ColorTransform = new ColorTransform((0xFF / 0xFF), (55 / 0xFF), (0 / 0xFF), 0);
        public static var texture:BitmapData;

        public var xs:Boolean = true;
        private var JM:_1aE;
        private var _0yp:Boolean = false;
        private var _22N:Vector.<BasicObject>;
        private var Wm:Vector.<int>;
        private var Hz:Dictionary;
        private var _14h:Boolean = false;
        private var _0Yo:DisplayObject;
        private var graphicsData_:Vector.<IGraphicsData>;
        private var _0wL:Vector.<IGraphicsData>;
        private var _0yx:Vector.<_4b>;
        public var _1rK:Array;
        public var po:Array;
        public var _1Nz:Vector.<Square>;
        public var _1IV:Vector.<Square>;

        public function Map(_arg1:nx){
            this._22N = new Vector.<BasicObject>();
            this.Wm = new Vector.<int>();
            this.Hz = new Dictionary();
            this._0Yo = new _0EP.DarknessBackground();
            this.graphicsData_ = new Vector.<IGraphicsData>();
            this._0wL = new Vector.<IGraphicsData>();
            this._0yx = new Vector.<_4b>();
            this._1rK = new Array();
            this.po = new Array();
            this._1Nz = new Vector.<Square>();
            this._1IV = new Vector.<Square>();
            super();
            gs_ = _arg1;
            _0Jb = new Js();
            _0I4 = new _1Bu();
            mapOverlay_ = new _Zf();
            partyOverlay_ = new _QF(this);
            party_ = new _08T(this);
            quest_ = new Quest(this);
            this.JM = _1JZ._0JF().getInstance(_1aE);
            _1JZ._0JF().getInstance(_1Nb).gameObjects = goDict_;
            this.Hz[PET_YARD_1] = true;
            this.Hz[PET_YARD_2] = true;
            this.Hz[PET_YARD_3] = true;
            this.Hz[PET_YARD_4] = true;
            this.Hz[PET_YARD_5] = true;
            this.Hz["Nexus"] = true;
            this.Hz["Tomb of the Ancients"] = true;
            this.Hz["Mad Lab"] = true;
            this.Hz["Guild Hall"] = true;
            this.Hz["Guild Hall 2"] = true;
            this.Hz["Guild Hall 3"] = true;
            this.Hz["Guild Hall 4"] = true;
            this.Hz["Cloth Bazaar"] = true;
            _0O4 = Parameters.TP();
        }

        override public function setProps(_arg1:int, _arg2:int, _arg3:String, _arg4:int, _arg5:Boolean, _arg6:Boolean):void{
            width_ = _arg1;
            height_ = _arg2;
            name_ = _arg3;
            _1Uc = _arg4;
            allowPlayerTeleport_ = _arg5;
            showDisplays_ = _arg6;
            this._1n1(name_);
        }

        private function _1n1(_arg1:String):void{
            dD = ((!((this.Hz[_arg1] == null))) || ((WebMain._0Kr.stage3Ds[0].context3D == null)));
        }

        override public function initialize():void{
            squares_.length = (width_ * height_);
            background_ = Background.UN(_1Uc);
            if (background_ != null)
            {
                addChild(background_);
            };
            addChild(map_);
            addChild(_0Jb);
            addChild(_0I4);
            addChild(mapOverlay_);
            addChild(partyOverlay_);
            isPetYard = (name_.substr(0, 8) == "Pet Yard");
        }

        override public function dispose():void{
            var _local1:Square;
            var _local2:GameObject;
            var _local3:BasicObject;
            gs_ = null;
            background_ = null;
            map_ = null;
            _0Jb = null;
            _0I4 = null;
            mapOverlay_ = null;
            partyOverlay_ = null;
            for each (_local1 in 64)
            {
                _local1.dispose();
            };
            _64.length = 0;
            _64 = null;
            squares_.length = 0;
            squares_ = null;
            for each (_local2 in goDict_)
            {
                _local2.dispose();
            };
            goDict_ = null;
            for each (_local3 in _1n5)
            {
                _local3.dispose();
            };
            _1n5 = null;
            merchLookup_ = null;
            player_ = null;
            party_ = null;
            quest_ = null;
            this._22N = null;
            this.Wm = null;
            _uo.Xx();
            _14d.dispose();
            _01j.getInstance().dispose();
        }

        override public function update(_arg1:int, _arg2:int):void{
            var _local3:BasicObject;
            var _local4:int;
            this._0yp = true;
            for each (_local3 in goDict_)
            {
                if (!_local3.update(_arg1, _arg2))
                {
                    this.Wm.push(_local3.objectId_);
                };
            };
            for each (_local3 in _1n5)
            {
                if (!_local3.update(_arg1, _arg2))
                {
                    this.Wm.push(_local3.objectId_);
                };
            };
            this._0yp = false;
            for each (_local3 in this._22N)
            {
                this.internalAddObj(_local3);
            };
            this._22N.length = 0;
            for each (_local4 in this.Wm)
            {
                this.internalRemoveObj(_local4);
            };
            this.Wm.length = 0;
            party_.update(_arg1, _arg2);
        }

        override public function pSTopW(_arg1:Number, _arg2:Number):Point{
            var _local3:Square;
            for each (_local3 in this._1Nz)
            {
                if (((!((_local3.faces_.length == 0))) && (_local3.faces_[0].face_.contains(_arg1, _arg2))))
                {
                    return (new Point(_local3.center_.x, _local3.center_.y));
                };
            };
            return (null);
        }

        override public function setGroundTile(_arg1:int, _arg2:int, _arg3:uint):void{
            var _local8:int;
            var _local9:int;
            var _local10:Square;
            var _local4:Square = this.getSquare(_arg1, _arg2);
            _local4.bI(_arg3);
            var _local5:int = (((_arg1 < (width_ - 1))) ? (_arg1 + 1) : _arg1);
            var _local6:int = (((_arg2 < (height_ - 1))) ? (_arg2 + 1) : _arg2);
            var _local7:int = (((_arg1 > 0)) ? (_arg1 - 1) : _arg1);
            while (_local7 <= _local5)
            {
                _local8 = (((_arg2 > 0)) ? (_arg2 - 1) : _arg2);
                while (_local8 <= _local6)
                {
                    _local9 = (_local7 + (_local8 * width_));
                    _local10 = squares_[_local9];
                    if (((!((_local10 == null))) && (((_local10.props_._0Ly) || (!((_local10.tileType_ == _arg3)))))))
                    {
                        _local10.faces_.length = 0;
                    };
                    _local8++;
                };
                _local7++;
            };
        }

        override public function addObj(_arg1:BasicObject, _arg2:Number, _arg3:Number):void{
            _arg1.x_ = _arg2;
            _arg1.y_ = _arg3;
            if ((_arg1 is _0F))
            {
                (_arg1 as _0F)._1Jm = !(Parameters.data_.particleEffect);
            };
            if (this._0yp)
            {
                this._22N.push(_arg1);
            } else
            {
                this.internalAddObj(_arg1);
            };
        }

        public function internalAddObj(_arg1:BasicObject):void{
            if (!_arg1.addTo(this, _arg1.x_, _arg1.y_))
            {
                return;
            };
            var _local2:Dictionary = (((_arg1 is GameObject)) ? goDict_ : _1n5);
            if (_local2[_arg1.objectId_] != null)
            {
                if (!isPetYard)
                {
                    return;
                };
            };
            _local2[_arg1.objectId_] = _arg1;
        }

        override public function removeObj(_arg1:int):void{
            if (this._0yp)
            {
                this.Wm.push(_arg1);
            } else
            {
                this.internalRemoveObj(_arg1);
            };
        }

        public function internalRemoveObj(_arg1:int):void{
            var _local2:Dictionary = goDict_;
            var _local3:BasicObject = _local2[_arg1];
            if (_local3 == null)
            {
                _local2 = _1n5;
                _local3 = _local2[_arg1];
                if (_local3 == null)
                {
                    return;
                };
            };
            _local3.removeFromMap();
            delete _local2[_arg1];
        }

        public function getSquare(_arg1:Number, _arg2:Number):Square{
            if ((((((((_arg1 < 0)) || ((_arg1 >= width_)))) || ((_arg2 < 0)))) || ((_arg2 >= height_))))
            {
                return (null);
            };
            var _local3:int = (int(_arg1) + (int(_arg2) * width_));
            var _local4:Square = squares_[_local3];
            if (_local4 == null)
            {
                _local4 = new Square(this, int(_arg1), int(_arg2));
                squares_[_local3] = _local4;
                _64.push(_local4);
            };
            return (_local4);
        }

        public function lookupSquare(_arg1:int, _arg2:int):Square{
            if ((((((((_arg1 < 0)) || ((_arg1 >= width_)))) || ((_arg2 < 0)))) || ((_arg2 >= height_))))
            {
                return (null);
            };
            return (squares_[(_arg1 + (_arg2 * width_))]);
        }

        override public function draw(_arg1:_1C8, _arg2:int):void{
            var _local6:Square;
            var _local13:GameObject;
            var _local14:BasicObject;
            var _local15:int;
            var _local16:Number;
            var _local17:Number;
            var _local18:Number;
            var _local19:Number;
            var _local20:Number;
            var _local21:uint;
            var _local22:_BK;
            var _local23:int;
            var _local24:Array;
            var _local25:Number;
            if (_0O4 != Parameters.TP())
            {
                if ((((((_0O4 == true)) && (!((WebMain._0Kr.stage3Ds[0].context3D == null))))) && (!(((!((WebMain._0Kr.stage3Ds[0].context3D == null))) && (!((WebMain._0Kr.stage3Ds[0].context3D.driverInfo.toLowerCase().indexOf("disposed") == -1))))))))
                {
                    WebMain._0Kr.stage3Ds[0].context3D.clear();
                    WebMain._0Kr.stage3Ds[0].context3D.present();
                } else
                {
                    map_.graphics.clear();
                };
                signalRenderSwitch.dispatch(_0O4);
                _0O4 = Parameters.TP();
            };
            var _local3:Rectangle = _arg1._0KH;
            x = -(_local3.x);
            y = -(_local3.y);
            var _local4:Number = ((-(_local3.y) - (_local3.height / 2)) / 50);
            var _local5:Point = new Point((_arg1.x_ + (_local4 * Math.cos((_arg1.angleRad_ - (Math.PI / 2))))), (_arg1.y_ + (_local4 * Math.sin((_arg1.angleRad_ - (Math.PI / 2))))));
            if (background_ != null)
            {
                background_.draw(_arg1, _arg2);
            };
            this._1rK.length = 0;
            this.po.length = 0;
            this._1Nz.length = 0;
            this._1IV.length = 0;
            var _local7:int = _arg1.maxDist_;
            var _local8:int = Math.max(0, (_local5.x - _local7));
            var _local9:int = Math.min((width_ - 1), (_local5.x + _local7));
            var _local10:int = Math.max(0, (_local5.y - _local7));
            var _local11:int = Math.min((height_ - 1), (_local5.y + _local7));
            this.graphicsData_.length = 0;
            this._0wL.length = 0;
            this._0yx.length = 0;
            var _local12:int = _local8;
            while (_local12 <= _local9)
            {
                _local15 = _local10;
                while (_local15 <= _local11)
                {
                    _local6 = squares_[(_local12 + (_local15 * width_))];
                    if (_local6 != null)
                    {
                        _local16 = (_local5.x - _local6.center_.x);
                        _local17 = (_local5.y - _local6.center_.y);
                        _local18 = ((_local16 * _local16) + (_local17 * _local17));
                        if (_local18 > _arg1._03g)
                        {
                        } else
                        {
                            _local6._05K = _arg2;
                            _local6.draw(this.graphicsData_, _arg1, _arg2);
                            this._1Nz.push(_local6);
                            if (_local6.i6 != null)
                            {
                                this._1IV.push(_local6);
                            };
                        };
                    };
                    _local15++;
                };
                _local12++;
            };
            for each (_local13 in goDict_)
            {
                _local13._1th = false;
                if (!_local13.RK)
                {
                    _local6 = _local13.xy;
                    if (!(((_local6 == null)) || (!((_local6._05K == _arg2)))))
                    {
                        _local13._1th = true;
                        _local13._14(_arg1);
                        if (_local13.props_._1Gr)
                        {
                            if (_local13.props_.EP)
                            {
                                _local13.draw(this.graphicsData_, _arg1, _arg2);
                            } else
                            {
                                this.po.push(_local13);
                            };
                        } else
                        {
                            this._1rK.push(_local13);
                        };
                    };
                };
            };
            for each (_local14 in _1n5)
            {
                _local14._1th = false;
                _local6 = _local14.xy;
                if ((((_local6 == null)) || (!((_local6._05K == _arg2)))))
                {
                } else
                {
                    _local14._1th = true;
                    _local14._14(_arg1);
                    this._1rK.push(_local14);
                };
            };
            if (this.po.length > 0)
            {
                this.po.sortOn(_1uA, _113);
                for each (_local14 in this.po)
                {
                    _local14.draw(this.graphicsData_, _arg1, _arg2);
                };
            };
            this._1rK.sortOn(_1uA, 113);
            if (Parameters.data_.drawShadows)
            {
                for each (_local14 in this._1rK)
                {
                    if (!_local14._1QM)
                    {
                    } else
                    {
                        _local14.drawShadow(this.graphicsData_, _arg1, _arg2);
                    };
                };
            };
            for each (_local14 in this._1rK)
            {
                _local14.draw(this.graphicsData_, _arg1, _arg2);
                if (Parameters.TP())
                {
                    _local14.draw3d(this._0yx);
                };
            };
            if (this._1IV.length > 0)
            {
                for each (_local6 in this._1IV)
                {
                    _local6._1tC(this.graphicsData_, _arg1, _arg2);
                };
            };
            if (((((!((player_ == null))) && ((player_.breath_ >= 0)))) && ((player_.breath_ < Parameters.kk))))
            {
                _local19 = ((Parameters.kk - player_.breath_) / Parameters.kk);
                _local20 = (Math.abs(Math.sin((_arg2 / 300))) * 0.75);
                _0sr.alphaMultiplier = (_local19 * _local20);
                _0Jb.transform.colorTransform = _0sr;
                _0Jb.visible = true;
                _0Jb.x = _local3.left;
                _0Jb.y = _local3.top;
            } else
            {
                _0Jb.visible = false;
            };
            if (((!((player_ == null))) && (!(Parameters._1Wc))))
            {
                _0I4.visible = true;
                _0I4.x = (_local3.right - 10);
                _0I4.y = _local3.top;
            } else
            {
                _0I4.visible = false;
            };
            if (((Parameters.TP()) && (_0lt._0uZ)))
            {
                _local21 = this._0ye();
                _local22 = _1JZ._0JF().getInstance(_BK);
                _local22.dispatch(this.graphicsData_, this._0yx, width_, height_, _arg1, _local21);
                _local23 = 0;
                while (_local23 < this.graphicsData_.length)
                {
                    if ((((this.graphicsData_[_local23] is GraphicsBitmapFill)) && (_14d.M8(GraphicsBitmapFill(this.graphicsData_[_local23])))))
                    {
                        this._0wL.push(this.graphicsData_[_local23]);
                        this._0wL.push(this.graphicsData_[(_local23 + 1)]);
                        this._0wL.push(this.graphicsData_[(_local23 + 2)]);
                    }
                else
                    {
                        if ((((this.graphicsData_[_local23] is GraphicsSolidFill)) && (_14d.eK(GraphicsSolidFill(this.graphicsData_[_local23])))))
                        {
                            this._0wL.push(this.graphicsData_[_local23]);
                            this._0wL.push(this.graphicsData_[(_local23 + 1)]);
                            this._0wL.push(this.graphicsData_[(_local23 + 2)]);
                        };
                    };
                    _local23++;
                };
                if (this._0wL.length > 0)
                {
                    map_.graphics.clear();
                    map_.graphics.drawGraphicsData(this._0wL);
                    if (this._14h)
                    {
                        this._14h = false;
                    };
                } else
                {
                    if (!this._14h)
                    {
                        map_.graphics.clear();
                        this._14h = true;
                    };
                };
                if ((_arg2 % 149) == 0)
                {
                    _14d._1GN();
                };
            } else
            {
                map_.graphics.clear();
                map_.graphics.drawGraphicsData(this.graphicsData_);
            };
            map_.filters.length = 0;
            if (((!((player_ == null))) && (!(((player_.condition_[ConditionEffect._26x] & ConditionEffect._1De) == 0)))))
            {
                _local24 = [];
                if (player_.isDrunk())
                {
                    _local25 = (20 + (10 * Math.sin((_arg2 / 1000))));
                    _local24.push(new BlurFilter(_local25, _local25));
                };
                if (player_.isBlind())
                {
                    _local24.push(_1LB);
                };
                map_.filters = _local24;
            } else
            {
                if (map_.filters.length > 0)
                {
                    map_.filters = [];
                };
            };
            mapOverlay_.draw(_arg1, _arg2);
            partyOverlay_.draw(_arg1, _arg2);
            if (((player_) && (player_.isDarkness())))
            {
                this._0Yo.x = -300;
                this._0Yo.y = ((Parameters.data_.centerOnPlayer) ? -525 : -515);
                this._0Yo.alpha = 0.95;
                addChild(this._0Yo);
            } else
            {
                if (contains(this._0Yo))
                {
                    removeChild(this._0Yo);
                };
            };
        }

        private function _0ye():uint{
            var _local1:uint;
            if (((!((player_ == null))) && (!(((player_.condition_[ConditionEffect._26x] & ConditionEffect._1De) == 0)))))
            {
                if (player_.isPaused())
                {
                    _local1 = _0lt.STAGE3D_FILTER_PAUSE;
                } else
                {
                    if (player_.isBlind())
                    {
                        _local1 = _0lt.STAGE3D_FILTER_BLIND;
                    } else
                    {
                        if (player_.isDrunk())
                        {
                            _local1 = _0lt.STAGE3D_FILTER_DRUNK;
                        };
                    };
                };
            };
            return (_local1);
        }


    }
}//package com.company.assembleegameclient.map

