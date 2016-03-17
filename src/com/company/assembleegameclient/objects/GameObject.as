// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.GameObject

package com.company.assembleegameclient.objects{
import _0W4.Animations;

import _1Np._0F;

import _Jt._4b;

import com.company.assembleegameclient.engine3d._0oE;

import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.geom.Matrix;
    import flash.display.BitmapData;
    import flash.display.GraphicsBitmapFill;
    import flash.display.GraphicsPath;
    import com.company.assembleegameclient.util._BJ;
    import flash.utils.Dictionary;
    import flash.geom.Point;
    import flash.geom.Vector3D;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsGradientFill;
    import com.company.util._tu;
    import com.company.util.ConversionUtil;
    import com.company.assembleegameclient.util.ConditionEffect;
    import com.company.util.BitmapUtil;
    import com.company.assembleegameclient.map.Map;
    import com.company.assembleegameclient.map.Square;
    import _04_._1JZ;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map._1C8;
    import com.company.util.AssetLibrary;
    import com.company.assembleegameclient.util._0s0;
    import com.company.util.hd;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.utils.getTimer;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.geom.ColorTransform;
    import flash.display.GradientType;
    import flash.utils.getQualifiedClassName;

    public class GameObject extends BasicObject {

        protected static const _1hD:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._1Z6);
        protected static const kH:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._1OG);
        protected static const _1Ab:Matrix = new Matrix();
        private static const sq:Number = 1E-5;
        private static const _0BR:Number = -(sq);
        public static const _25X:int = 300;

        public var _1LO:BitmapData = null;
        private var _0mZ:GraphicsBitmapFill = null;
        private var _1wR:GraphicsPath = null;
        public var _06o:_0Xn;
        private var _0Fg:Boolean;
        private var Xd:Boolean = false;
        private var ty:Boolean;
        private var _0iG:Boolean = false;
        public var props_:ObjectProperties;
        public var name_:String;
        public var radius_:Number = 0.5;
        public var Kn:Number = 0;
        public var flying_:Boolean = false;
        public var SB:Number = 0;
        public var _0FE:int = 0;
        public var _3q:_BJ = null;
        public var texture_:BitmapData = null;
        public var mask_:BitmapData = null;
        public var t9:Vector.<_27S> = null;
        public var _0rb:_0oE = null;
        public var _6Q:_4b = null;
        public var effect_:_0F = null;
        public var _0dP:Animations = null;
        public var RK:Boolean = false;
        protected var _0Sz:BitmapData = null;
        protected var _0Rx:Dictionary = null;
        public var ba:int = 200;
        public var _1VZ:int = 200;
        public var size_:int = 100;
        public var _0Sj:int = -1;
        public var _1vs:int = 0;
        public var px:Vector.<int> = null;
        public var _1Wz:Vector.<int> = null;
        public var condition_:Vector.<uint>;
        protected var tex1Id_:int = 0;
        protected var tex2Id_:int = 0;
        public var _10J:Boolean = false;
        public var objectType_:int;
        private var _0ed:uint = 1;
        private var _1MJ:Number = 1;
        public var _0Km:int = 0;
        public var _1R6:BitmapData = null;
        public var _1Ia:_0Qy = null;
        public var _0mm:int = -1;
        private var _1Du:Boolean = false;
        private var _0to:Boolean = false;
        private var _0Iw:Boolean = false;
        protected var _1rj:int = 0;
        protected var _0Tz:int = -1;
        protected var _1VG:Point;
        protected var _00D:Point;
        protected var moveVec_:Vector3D;
        protected var bitmapFill_:GraphicsBitmapFill;
        protected var path_:GraphicsPath;
        protected var vS_:Vector.<Number>;
        protected var yL:Vector.<Number>;
        protected var _1rx:Matrix;
        private var _1h7:GraphicsSolidFill = null;
        private var V:GraphicsPath = null;
        private var _1M:GraphicsSolidFill = null;
        private var _0IY:GraphicsPath = null;
        private var _1e:Vector.<BitmapData> = null;
        private var _0id:Vector.<GraphicsBitmapFill> = null;
        private var _1pH:Vector.<GraphicsPath> = null;
        protected var _0xz:GraphicsGradientFill = null;
        protected var _0ND:GraphicsPath = null;

        public function GameObject(_arg1:XML){
            var _local4:int;
            this.props_ = ObjectLibrary._8v;
            this.condition_ = new <uint>[0, 0];
            this._1VG = new Point();
            this._00D = new Point();
            this.moveVec_ = new Vector3D();
            this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
            this.path_ = new GraphicsPath(_tu._0xS, null);
            this.vS_ = new Vector.<Number>();
            this.yL = new Vector.<Number>();
            this._1rx = new Matrix();
            super();
            if (_arg1 == null)
            {
                return;
            };
            this.objectType_ = int(_arg1.@type);
            this.props_ = ObjectLibrary._0Ri[this.objectType_];
            _1QM = (this.props_._0Qf > 0);
            var _local2:_27S = ObjectLibrary.hE[this.objectType_];
            this.texture_ = _local2.texture_;
            this.mask_ = _local2.mask_;
            this._3q = _local2._3q;
            this.t9 = _local2.t9;
            if (_local2._0Wd != null)
            {
                this.effect_ = _0F-._1qK(_local2._0Wd, this);
            };
            if (this.texture_ != null)
            {
                this._1MJ = (this.texture_.height / 8);
            };
            if (_arg1.hasOwnProperty("Model"))
            {
                this._0rb = _1hA._0ux(String(_arg1.Model));
                this._6Q = _1hA._2e(String(_arg1.Model));
                if (this.texture_ != null)
                {
                    this._6Q._11F(this.texture_);
                };
            };
            var _local3:Zv = ObjectLibrary.Kx[this.objectType_];
            if (_local3 != null)
            {
                this._0dP = new Animations(_local3);
            };
            z_ = this.props_.z_;
            this.flying_ = this.props_.flying_;
            if (_arg1.hasOwnProperty("MaxHitPoints"))
            {
                this._1VZ = (this.ba = int(_arg1.MaxHitPoints));
            };
            if (_arg1.hasOwnProperty("Defense"))
            {
                this._1vs = int(_arg1.Defense);
            };
            if (_arg1.hasOwnProperty("SlotTypes"))
            {
                this.px = ConversionUtil._0HU(_arg1.SlotTypes);
                this._1Wz = new Vector.<int>(this.px.length);
                _local4 = 0;
                while (_local4 < this._1Wz.length)
                {
                    this._1Wz[_local4] = -1;
                    _local4++;
                };
            };
            if (_arg1.hasOwnProperty("Tex1"))
            {
                this.tex1Id_ = int(_arg1.Tex1);
            };
            if (_arg1.hasOwnProperty("Tex2"))
            {
                this.tex2Id_ = int(_arg1.Tex2);
            };
            if (_arg1.hasOwnProperty("StunImmune"))
            {
                this._1Du = true;
            };
            if (_arg1.hasOwnProperty("ParalyzeImmune"))
            {
                this._0to = true;
            };
            if (_arg1.hasOwnProperty("DazedImmune"))
            {
                this._0Iw = true;
            };
            this.props_._0l5();
        }

        public static function _0PH(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:Vector.<uint>):int{
            var _local5:int = _arg2;
            if (((_arg3) || (!(((_arg4[ConditionEffect._26x] & ConditionEffect._0Sa) == 0)))))
            {
                _local5 = 0;
            } else
            {
                if ((_arg4[ConditionEffect._26x] & ConditionEffect._1Z4) != 0)
                {
                    _local5 = (_local5 * 2);
                };
            };
            var _local6:int = ((_arg1 * 3) / 20);
            var _local7:int = Math.max(_local6, (_arg1 - _local5));
            if ((_arg4[ConditionEffect._26x] & ConditionEffect.uW) != 0)
            {
                _local7 = 0;
            };
            if ((_arg4[ConditionEffect.ex] & ConditionEffect._1GL) != 0)
            {
                _local7 = (_local7 * 0.9);
            };
            if ((_arg4[ConditionEffect.ex] & ConditionEffect._0Du) != 0)
            {
                _local7 = (_local7 * 1.2);
            };
            return (_local7);
        }


        public function setObjectId(_arg1:int):void{
            var _local2:_27S;
            objectId_ = _arg1;
            if (this.t9 != null)
            {
                _local2 = this.t9[(objectId_ % this.t9.length)];
                this.texture_ = _local2.texture_;
                this.mask_ = _local2.mask_;
                this._3q = _local2._3q;
                if (this._6Q != null)
                {
                    this._6Q._11F(this.texture_);
                };
            };
        }

        public function _0OD(_arg1:int):void{
            var _local3:_27S;
            var _local2:_27S = ObjectLibrary.hE[this.objectType_];
            if (_arg1 == 0)
            {
                _local3 = _local2;
            } else
            {
                _local3 = _local2.getAltTextureData(_arg1);
                if (_local3 == null)
                {
                    return;
                };
            };
            this.texture_ = _local3.texture_;
            this.mask_ = _local3.mask_;
            this._3q = _local3._3q;
            if (this.effect_ != null)
            {
                map_.removeObj(this.effect_.objectId_);
                this.effect_ = null;
            };
            if (_local3._0Wd != null)
            {
                this.effect_ = _0F._1qK(_local3._0Wd, this);
                if (map_ != null)
                {
                    map_.addObj(this.effect_, x_, y_);
                };
            };
        }

        public function setTex1(_arg1:int):void{
            if (_arg1 == this.tex1Id_)
            {
                return;
            };
            this.tex1Id_ = _arg1;
            this._0Rx = new Dictionary();
            this._0Sz = null;
        }

        public function setTex2(_arg1:int):void{
            if (_arg1 == this.tex2Id_)
            {
                return;
            };
            this.tex2Id_ = _arg1;
            this._0Rx = new Dictionary();
            this._0Sz = null;
        }

        public function _0pw(_arg1:int):void{
            _0ZC.play(this.props_._1MX[_arg1]);
        }

        override public function dispose():void{
            var _local1:Object;
            var _local2:BitmapData;
            var _local3:Dictionary;
            var _local4:Object;
            var _local5:BitmapData;
            super.dispose();
            this.texture_ = null;
            if (this._0Sz != null)
            {
                this._0Sz.dispose();
                this._0Sz = null;
            };
            if (this._0Rx != null)
            {
                for each (_local1 in this._0Rx)
                {
                    _local2 = (_local1 as BitmapData);
                    if (_local2 != null)
                    {
                        _local2.dispose();
                    } else
                    {
                        _local3 = (_local1 as Dictionary);
                        for each (_local4 in _local3)
                        {
                            _local5 = (_local4 as BitmapData);
                            if (_local5 != null)
                            {
                                _local5.dispose();
                            };
                        };
                    };
                };
                this._0Rx = null;
            };
            if (this._0rb != null)
            {
                this._0rb.dispose();
                this._0rb = null;
            };
            if (this.6Q != null)
            {
                this.6Q.dispose();
                this.6Q = null;
            };
            this.px = null;
            this._1Wz = null;
            if (this._1LO != null)
            {
                this._1LO.dispose();
                this._1LO = null;
            };
            this._0mZ = null;
            this._1wR = null;
            this.bitmapFill_ = null;
            this.path_.commands = null;
            this.path_.data = null;
            this.vS_ = null;
            this.yL = null;
            this._1rx = null;
            this._1e = null;
            this._0id = null;
            this._1pH = null;
            this._0xz = null;
            if (this._0ND != null)
            {
                this._0ND.commands = null;
                this._0ND.data = null;
                this._0ND = null;
            };
        }

        public function 1tx():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._0Iy) == 0)));
        }

        public function 0RC():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1a6) == 0)));
        }

        public function 19q():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._0dL) == 0)));
        }

        public function 1Mb():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._124) == 0)));
        }

        public function c6():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect.wl) == 0)));
        }

        public function 05R():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1LC) == 0)));
        }

        public function isBlind():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1dB) == 0)));
        }

        public function isDrunk():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect.wO) == 0)));
        }

        public function 3g():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect.Ox) == 0)));
        }

        public function Fq():Boolean{
            return (((!(((this.condition_[ConditionEffect._26x] & ConditionEffect._0MN) == 0))) || (this._1Du)));
        }

        public function 1vK():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._2-d) == 0)));
        }

        public function 0G7():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._189) == 0)));
        }

        public function 0Wy():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1Vc) == 0)));
        }

        public function ul():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1Cl) == 0)));
        }

        public function 1VL():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1M2) == 0)));
        }

        public function 0tJ():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect.mk) == 0)));
        }

        public function 1Ka():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect.sf) == 0)));
        }

        public function  use():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._0Tq) == 0)));
        }

        public function isPaused():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1WM) == 0)));
        }

        public function 0Iz():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1bo) == 0)));
        }

        public function 0mQ():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._0pU) == 0)));
        }

        public function 1lC():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect.uW) == 0)));
        }

        public function V6():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1Z4) == 0)));
        }

        public function jK():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._0Sa) == 0)));
        }

        public function 1ag():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1m) == 0)));
        }

        public function 1E-():Boolean{
            return (!(((this.condition_[ConditionEffect.ex] & ConditionEffect._1ND) == 0)));
        }

        public function isUnstable():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1KF) == 0)));
        }

        public function ia():Boolean{
            return (!(((this.condition_[ConditionEffect.ex] & ConditionEffect.J) == 0)));
        }

        public function isDarkness():Boolean{
            return (!(((this.condition_[ConditionEffect._26x] & ConditionEffect._1fb) == 0)));
        }

        public function y4():Boolean{
            return (((this._0to) || (!(((this.condition_[ConditionEffect.ex] & ConditionEffect._0AT) == 0)))));
        }

        public function 0ya():Boolean{
            return (((this._0Iw) || (!(((this.condition_[ConditionEffect.ex] & ConditionEffect._22v) == 0)))));
        }

        public function 0fu():Boolean{
            return (!(((this.condition_[ConditionEffect.ex] & ConditionEffect._1GL) == 0)));
        }

        public function b6():Boolean{
            return (!(((this.condition_[ConditionEffect.ex] & ConditionEffect._1P3) == 0)));
        }

        public function oe():Boolean{
            return (!(((this.condition_[ConditionEffect.ex] & ConditionEffect._0Du) == 0)));
        }

        public function 01G():Boolean{
            return (!(((this.condition_[ConditionEffect.ex] & ConditionEffect._1HL) == 0)));
        }

        public function 1v-(_arg1:int=20):Boolean{
            var _local2:GameObject;
            var _local3:int;
            var _local4:int;
            for each (_local2 in map_.goDict_)
            {
                if ((((_local2 is Character)) && (_local2.props_.isEnemy_)))
                {
                    _local3 = (((x_ > _local2.x_)) ? (x_ - _local2.x_) : (_local2.x_ - x_));
                    _local4 = (((y_ > _local2.y_)) ? (y_ - _local2.y_) : (_local2.y_ - y_));
                    if ((((_local3 < _arg1)) && ((_local4 < _arg1))))
                    {
                        return (false);
                    };
                };
            };
            return (true);
        }

        public function getName():String{
            return ((((((this.name_ == null)) || ((this.name_ == "")))) ? ObjectLibrary._118[this.objectType_] : this.name_));
        }

        public function getColor():uint{
            return (BitmapUtil._1WN(this.texture_));
        }

        public function 0E1():uint{
            var _local1:uint = this._0ed;
            this._0ed = ((this._0ed + 1) % 128);
            return (_local1);
        }

        public function Gi(_arg1:1tk):Number{
            var _local2:Number = (_arg1.x_ - x_);
            var _local3:Number = (_arg1.y_ - y_);
            return (Math.sqrt(((_local2 * _local2) + (_local3 * _local3))));
        }

        public function H4(_arg1:Boolean):void{
            if (_arg1)
            {
                this._0Fg = true;
            } else
            {
                this._0Fg = false;
                this.Xd = false;
            };
        }

        public function 0MR(_arg1:Boolean):void{
            if (_arg1)
            {
                this.ty = true;
            } else
            {
                this.ty = false;
                this._0iG = false;
            };
        }

        override public function addTo(_arg1:Map, _arg2:Number, _arg3:Number):Boolean{
            map_ = _arg1;
            this._1VG.x = (this._00D.x = _arg2);
            this._1VG.y = (this._00D.y = _arg3);
            if (!this.moveTo(_arg2, _arg3))
            {
                map_ = null;
                return (false);
            };
            if (this.effect_ != null)
            {
                map_.addObj(this.effect_, _arg2, _arg3);
            };
            return (true);
        }

        override public function removeFromMap():void{
            if (((this.props_.static_) && (!((xy == null)))))
            {
                if (xy.obj_ == this)
                {
                    xy.obj_ = null;
                };
                xy = null;
            };
            if (this.effect_ != null)
            {
                map_.removeObj(this.effect_.objectId_);
            };
            super.removeFromMap();
            this.dispose();
        }

        public function moveTo(_arg1:Number, _arg2:Number):Boolean{
            var _local3:Square = map_.getSquare(_arg1, _arg2);
            if (_local3 == null)
            {
                return (false);
            };
            x_ = _arg1;
            y_ = _arg2;
            if (this.props_.static_)
            {
                if (xy != null)
                {
                    xy.obj_ = null;
                };
                _local3.obj_ = this;
            };
            xy = _local3;
            if (this._0rb != null)
            {
                this._0rb.setPosition(x_, y_, 0, this.props_.rotation_);
            };
            if (this.6Q != null)
            {
                this.6Q.setPosition(x_, y_, 0, this.props_.rotation_);
            };
            return (true);
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local4:int;
            var _local5:Number;
            var _local6:Number;
            var _local3:Boolean;
            if (!(((this.moveVec_.x == 0)) && ((this.moveVec_.y == 0))))
            {
                if (this._0Tz < map_.gs_.gsc_.lastTickId_)
                {
                    this.moveVec_.x = 0;
                    this.moveVec_.y = 0;
                    this.moveTo(this._00D.x, this._00D.y);
                } else
                {
                    _local4 = (_arg1 - this._1rj);
                    _local5 = (this._1VG.x + (_local4 * this.moveVec_.x));
                    _local6 = (this._1VG.y + (_local4 * this.moveVec_.y));
                    this.moveTo(_local5, _local6);
                    _local3 = true;
                };
            };
            if (this.props_._0m- != null)
            {
                if (!_local3)
                {
                    z_ = this.props_.z_;
                    this.flying_ = this.props_.flying_;
                } else
                {
                    z_ = this.props_._0m-.z_;
                    this.flying_ = this.props_._0m-.flying_;
                };
            };
            return (true);
        }

        public function 1Sn(_arg1:Number, _arg2:Number, _arg3:int):void{
            this.moveTo(_arg1, _arg2);
            this._1rj = _arg3;
            this._00D.x = _arg1;
            this._00D.y = _arg2;
            this._1VG.x = _arg1;
            this._1VG.y = _arg2;
            this.moveVec_.x = 0;
            this.moveVec_.y = 0;
        }

import _9T._1zh;

import com.company.assembleegameclient.util.ConditionEffect;

public function FH(_arg1:Number, _arg2:Number, _arg3:int, _arg4:int):void{
            if (this._0Tz < map_.gs_.gsc_.lastTickId_)
            {
                this.moveTo(this._00D.x, this._00D.y);
            };
            this._1rj = map_.gs_.lastUpdate_;
            this._00D.x = _arg1;
            this._00D.y = _arg2;
            this._1VG.x = x_;
            this._1VG.y = y_;
            this.moveVec_.x = ((this._00D.x - this._1VG.x) / _arg3);
            this.moveVec_.y = ((this._00D.y - this._1VG.y) / _arg3);
            this._0Tz = _arg4;
        }

        public function damage(_arg1:int, _arg2:int, _arg3:Vector.<uint>, _arg4:Boolean, _arg5:Projectile):void{
            var _local8:int;
            var _local9:uint;
            var _local10:ConditionEffect;
            var _local11:1zh;
            var _local12:zL;
            var _local13:0tK;
            var _local14:String;
            var _local15:Boolean;
            var _local6:Boolean;
            if (_arg4)
            {
                this.RK = true;
            } else
            {
                if (_arg3 != null)
                {
                    _local8 = 0;
                    for each (_local9 in _arg3)
                    {
                        _local10 = null;
                        if (((((!((_arg5 == null))) && (_arg5.gF._0b6))) && (_arg5.gF._0b6[_local9])))
                        {
                            _local12 = _1JZ._0JF().getInstance(zL);
                            _local13 = _local12._1tI();
                            if (_local13 != null)
                            {
                                _local10 = ConditionEffect.effects_[_local9];
                                this._1Um(_local8, _local10.name_);
                                _local8 = (_local8 + 500);
                            };
                        } else
                        {
                            switch (_local9)
                            {
                                case ConditionEffect._05F:
                                    break;
                                case ConditionEffect._1Yq:
                                case ConditionEffect._0Wz:
                                case ConditionEffect._1pj:
                                case ConditionEffect._0nM:
                                case ConditionEffect._1Ow:
                                case ConditionEffect.gk:
                                case ConditionEffect._1s1:
                                case ConditionEffect.m9:
                                case ConditionEffect._0cm:
                                case ConditionEffect._0vs:
                                case ConditionEffect.A1:
                                case ConditionEffect._1RI:
                                case ConditionEffect.69:
                                case ConditionEffect._0nk:
                                case ConditionEffect._1a-:
                                case ConditionEffect.xW:
                                case ConditionEffect._0Dx:
                                    _local10 = ConditionEffect.effects_[_local9];
                                    break;
                                case ConditionEffect._02b:
                                    if (this._1E-())
                                    {
                                        _local11 = new _1zh(this, 0xFF0000, 3000);
                                        _local11.setStringBuilder(new 1cA().setParams(du._1Tm));
                                        map_.mapOverlay_.addStatusText(_local11);
                                    } else
                                    {
                                        _local10 = ConditionEffect.effects_[_local9];
                                    };
                                    break;
                                case ConditionEffect.Ei:
                                    if (this._1ag())
                                    {
                                        _local11 = new 1zh(this, 0xFF0000, 3000);
                                        _local11.setStringBuilder(new 1cA().setParams(du._1Tm));
                                        map_.mapOverlay_.addStatusText(_local11);
                                    } else
                                    {
                                        _local10 = ConditionEffect.effects_[_local9];
                                    };
                                    break;
                                case ConditionEffect._1KS:
                                    if (this.Fq())
                                    {
                                        _local11 = new 1zh(this, 0xFF0000, 3000);
                                        _local11.setStringBuilder(new 1cA().setParams(du._1Tm));
                                        map_.mapOverlay_.addStatusText(_local11);
                                    } else
                                    {
                                        _local10 = ConditionEffect.effects_[_local9];
                                    };
                                    break;
                                case ConditionEffect._1Kw:
                                    if (this._0ya())
                                    {
                                        _local11 = new 1zh(this, 0xFF0000, 3000);
                                        _local11.setStringBuilder(new 1cA().setParams(du._1Tm));
                                        map_.mapOverlay_.addStatusText(_local11);
                                    } else
                                    {
                                        _local10 = ConditionEffect.effects_[_local9];
                                    };
                                    break;
                                case ConditionEffect._1tv:
                                    if (this.y4())
                                    {
                                        _local11 = new 1zh(this, 0xFF0000, 3000);
                                        _local11.setStringBuilder(new 1cA().setParams(du._1Tm));
                                        map_.mapOverlay_.addStatusText(_local11);
                                    } else
                                    {
                                        _local10 = ConditionEffect.effects_[_local9];
                                    };
                                    break;
                                case ConditionEffect.E7:
                                    if (this.b6())
                                    {
                                        _local11 = new 1zh(this, 0xFF0000, 3000);
                                        _local11.setStringBuilder(new 1cA().setParams(du._1Tm));
                                        map_.mapOverlay_.addStatusText(_local11);
                                    } else
                                    {
                                        _local10 = ConditionEffect.effects_[_local9];
                                    };
                                    break;
                                case ConditionEffect._0gF:
                                    if (this._01G())
                                    {
                                        _local11 = new 1zh(this, 0xFF0000, 3000);
                                        _local11.setStringBuilder(new 1cA().setParams(du._1Tm));
                                        map_.mapOverlay_.addStatusText(_local11);
                                    } else
                                    {
                                        _local10 = ConditionEffect.effects_[_local9];
                                    };
                                    break;
                                case ConditionEffect._14N:
                                    _local6 = true;
                                    break;
                            };
                            if (_local10 != null)
                            {
                                if (_local9 < ConditionEffect._1mQ)
                                {
                                    if ((this.condition_[ConditionEffect._26x] | _local10.bit_) == this.condition_[ConditionEffect._26x]) continue;
                                    this.condition_[ConditionEffect._26x] = (this.condition_[ConditionEffect._26x] | _local10.bit_);
                                } else
                                {
                                    if ((this.condition_[ConditionEffect.ex] | _local10.bit_) == this.condition_[ConditionEffect.ex]) continue;
                                    this.condition_[ConditionEffect.ex] = (this.condition_[ConditionEffect.ex] | _local10.bit_);
                                };
                                _local14 = _local10._03v;
                                this._1H4(_local8, _local14);
                                _local8 = (_local8 + 500);
                            };
                        };
                    };
                };
            };
            var _local7:Vector.<uint> = 121.pY(this.objectType_, this.texture_, this.props_.kF, this.props_._0jq);
            if (this.RK)
            {
                map_.addObj(new ExplosionEffect(_local7, this.size_, 30), x_, y_);
            } else
            {
                if (_arg5 != null)
                {
                    map_.addObj(new HitEffect(_local7, this.size_, 10, _arg5.angle_, _arg5.gF.speed_), x_, y_);
                } else
                {
                    map_.addObj(new ExplosionEffect(_local7, this.size_, 10), x_, y_);
                };
            };
            if (_arg2 > 0)
            {
                _local15 = ((((this.jK()) || (((!((_arg5 == null))) && (_arg5.gF._0f-))))) || (_local6));
                this.Wx(_arg2, _local15);
            };
        }

        public function 1H4(_arg1:int, _arg2:String):void{
            var _local3:1zh = new 1zh(this, 0xFF0000, 3000, _arg1);
            _local3.setStringBuilder(new 1cA().setParams(_arg2));
            map_.mapOverlay_.addStatusText(_local3);
        }

        public function 1Um(_arg1:int, _arg2:String):void{
            var _local3:1zh = new 1zh(this, 0xFF0000, 3000, _arg1);
            _local3.setStringBuilder(new 1WS(("Pet " + _arg2)));
            map_.mapOverlay_.addStatusText(_local3);
        }

        public function Wx(_arg1:int, _arg2:Boolean):void{
            var _local3:String = ("-" + _arg1);
            var _local4:1zh = new 1zh(this, ((_arg2) ? 0x9000FF : 0xFF0000), 1000);
            _local4.setStringBuilder(new 1WS(_local3));
            map_.mapOverlay_.addStatusText(_local4);
        }

        protected function makeNameBitmapData():BitmapData{
            var _local1:1Jo = new 1WS(this.name_);
            var _local2:1CD = _1JZ._0JF().getInstance(1CD);
            return (_local2.make(_local1, 16, 0xFFFFFF, true, 1Ab, true));
        }

        public function 0lq(_arg1:Vector.<IGraphicsData>, _arg2:1C8):void{
            if (this._1LO == null)
            {
                this._1LO = this.makeNameBitmapData();
                this._0mZ = new GraphicsBitmapFill(null, new Matrix(), false, false);
                this._1wR = new GraphicsPath(tu._0xS, new Vector.<Number>());
            };
            var _local3:int = ((this._1LO.width / 2) + 1);
            var _local4:int = 30;
            var _local5:Vector.<Number> = this._1wR.data;
            _local5.length = 0;
            _local5.push((4M[0] - _local3), 4M[1], (4M[0] + _local3), 4M[1], (4M[0] + _local3), (4M[1] + _local4), (4M[0] - _local3), (4M[1] + _local4));
            this._0mZ.bitmapData = this._1LO;
            var _local6:Matrix = this._0mZ.matrix;
            _local6.identity();
            _local6.translate(_local5[0], _local5[1]);
            _arg1.push(this._0mZ);
            _arg1.push(this._1wR);
            _arg1.push(tu.END_FILL);
        }

        protected function XZ():BitmapData{
            if (this._1R6 == null)
            {
                this._1R6 = AssetLibrary._1JR("lofiChar8x8", int((Math.random() * 239)));
            };
            return (this._1R6);
        }

        protected function getTexture(_arg1:1C8, _arg2:int):BitmapData{
            var _local6:Pet;
            var _local7:Number;
            var _local8:int;
            var _local9:0s0;
            var _local10:int;
            var _local11:BitmapData;
            var _local12:int;
            var _local13:BitmapData;
            if ((this is Pet))
            {
                _local6 = Pet(this);
                if (((!((this.condition_[ConditionEffect._26x] == 0))) && (!(this.isPaused()))))
                {
                    if (_local6.s0 != 32912)
                    {
                        _local6._1es(32912);
                    };
                } else
                {
                    if (!_local6._13O)
                    {
                        _local6._1uR();
                    };
                };
            };
            var _local3:BitmapData = this.texture_;
            var _local4:int = this.size_;
            var _local5:BitmapData;
            if (this.3q != null)
            {
                _local7 = 0;
                _local8 = BJ._1OS;
                if (_arg2 < (this._0FE + 25X))
                {
                    if (!this.props_.4)
                    {
                        this.Kn = this.SB;
                    };
                    _local7 = (((_arg2 - this._0FE) % 25X) / 25X);
                    _local8 = BJ._1Br;
                } else
                {
                    if (((!((this.moveVec_.x == 0))) || (!((this.moveVec_.y == 0)))))
                    {
                        _local10 = (0.5 / this.moveVec_.length);
                        _local10 = (_local10 + (400 - (_local10 % 400)));
                        if ((((((((this.moveVec_.x > sq)) || ((this.moveVec_.x < 0BR)))) || ((this.moveVec_.y > sq)))) || ((this.moveVec_.y < 0BR))))
                        {
                            this.Kn = Math.atan2(this.moveVec_.y, this.moveVec_.x);
                            _local8 = BJ._1xM;
                        } else
                        {
                            _local8 = BJ._1OS;
                        };
                        _local7 = ((_arg2 % _local10) / _local10);
                    };
                };
                _local9 = this.3q.imageFromFacing(this.Kn, _arg1, _local8, _local7);
                _local3 = _local9.image_;
                _local5 = _local9.mask_;
            } else
            {
                if (this._0dP != null)
                {
                    _local11 = this._0dP.getTexture(_arg2);
                    if (_local11 != null)
                    {
                        _local3 = _local11;
                    };
                };
            };
            if (((this.props_.EP) || (!((this._0rb == null)))))
            {
                return (_local3);
            };
            if (_arg1._1kT)
            {
                _local12 = (((_local3 == null)) ? 8 : _local3.width);
                _local3 = this.XZ();
                _local5 = null;
                _local4 = (this.size_ * Math.min(1.5, (_local12 / _local3.width)));
            };
            if (((this.oe()) && (!((this is Pet)))))
            {
                _local3 = hd._1H9(_local3, kH);
            };
            if (((((this._0Iz()) || (this._0fu()))) && (!((this is Pet)))))
            {
                _local3 = hd._1H9(_local3, 1hD);
            };
            if ((((this.tex1Id_ == 0)) && ((this.tex2Id_ == 0))))
            {
                _local3 = TextureRedrawer.redraw(_local3, _local4, false, 0);
            } else
            {
                _local13 = null;
                if (this._0Rx == null)
                {
                    this._0Rx = new Dictionary();
                } else
                {
                    _local13 = this._0Rx[_local3];
                };
                if (_local13 == null)
                {
                    _local13 = TextureRedrawer.resize(_local3, _local5, _local4, false, this.tex1Id_, this.tex2Id_);
                    _local13 = 1go._0Lr(_local13, 0);
                    this._0Rx[_local3] = _local13;
                };
                _local3 = _local13;
            };
            return (_local3);
        }

        public function 1ix(_arg1:String, _arg2:int):void{
            this.texture_ = AssetLibrary._1JR(_arg1, _arg2);
            this._1MJ = (this.texture_.height / 8);
        }

        public function getPortrait():BitmapData{
            var _local1:BitmapData;
            var _local2:int;
            if (this._0Sz == null)
            {
                _local1 = (((this.props_._0Sz)!=null) ? this.props_._0Sz.getTexture() : this.texture_);
                _local2 = ((4 / _local1.width) * 100);
                this._0Sz = TextureRedrawer.resize(_local1, this.mask_, _local2, true, this.tex1Id_, this.tex2Id_);
                this._0Sz = 1go._0Lr(this._0Sz, 0);
            };
            return (this._0Sz);
        }

        public function setAttack(_arg1:int, _arg2:Number):void{
            this.SB = _arg2;
            this._0FE = getTimer();
        }

        override public function draw3d(_arg1:Vector.<4b>):void{
            if (this.6Q != null)
            {
                _arg1.push(this.6Q);
            };
        }

        protected function Lg(_arg1:Vector.<IGraphicsData>, _arg2:int):void{
            var _local7:Number;
            var _local8:Number;
            if (this._0IY == null)
            {
                this._1h7 = new GraphicsSolidFill();
                this.V- = new GraphicsPath(tu._0xS, new Vector.<Number>());
                this._1-M = new GraphicsSolidFill(0x10FF00);
                this._0IY = new GraphicsPath(tu._0xS, new Vector.<Number>());
            };
            var _local3:Number = this.ba;
            if (this._1VZ <= _local3)
            {
                _local7 = ((_local3 - this._1VZ) / _local3);
                this._1h7.color = MoreColorUtil._0pA(0x545454, 0xFF0000, (Math.abs(Math.sin((_arg2 / 300))) * _local7));
            } else
            {
                this._1h7.color = 0x545454;
            };
            var _local4:int = 20;
            var _local5:int = 4;
            var _local6:int = 6;
            this.V-.data.length = 0;
            this.V-.data.push((4M[0] - _local4), (4M[1] + _local5), (4M[0] + _local4), (4M[1] + _local5), (4M[0] + _local4), ((4M[1] + _local5) + _local6), (4M[0] - _local4), ((4M[1] + _local5) + _local6));
            _arg1.push(this._1h7);
            _arg1.push(this.V-);
            _arg1.push(tu.END_FILL);
            if (this._1VZ > 0)
            {
                _local8 = (((this._1VZ / this.ba) * 2) * _local4);
                this._0IY.data.length = 0;
                this._0IY.data.push((4M[0] - _local4), (4M[1] + _local5), ((4M[0] - _local4) + _local8), (4M[1] + _local5), ((4M[0] - _local4) + _local8), ((4M[1] + _local5) + _local6), (4M[0] - _local4), ((4M[1] + _local5) + _local6));
                _arg1.push(this._1-M);
                _arg1.push(this._0IY);
                _arg1.push(tu.END_FILL);
            };
            14d.MM(this._1-M, true);
            14d.MM(this._1h7, true);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            var _local8:BitmapData;
            var _local9:uint;
            var _local10:uint;
            var _local4:BitmapData = this.getTexture(_arg2, _arg3);
            if (this.props_.EP)
            {
                if (xy.faces_.length == 0)
                {
                    return;
                };
                this.path_.data = xy.faces_[0].face_.vout_;
                this.bitmapFill_.bitmapData = _local4;
                xy.baseTexMatrix_.calculateTextureMatrix(this.path_.data);
                this.bitmapFill_.matrix = xy.baseTexMatrix_.tToS_;
                _arg1.push(this.bitmapFill_);
                _arg1.push(this.path_);
                _arg1.push(tu.END_FILL);
                return;
            };
            if (((!((this._0rb == null))) && (!(Parameters.TP()))))
            {
                this._0rb.draw(_arg1, _arg2, this.props_.color_, _local4);
                return;
            };
            if (((!((this._0rb == null))) && (Parameters.TP())))
            {
                _arg1.push(null);
                return;
            };
            var _local5:int = _local4.width;
            var _local6:int = _local4.height;
            var _local7:int = (xy.sink_ + this._0Km);
            if ((((_local7 > 0)) && (((this.flying_) || (((!((xy.obj_ == null))) && (xy.obj_.props_.protectFromSink_)))))))
            {
                _local7 = 0;
            };
            if (Parameters.TP())
            {
                if (_local7 != 0)
                {
                    14d._0GJ(this.bitmapFill_, Math.max((((_local7 / _local6) * 1.65) - 0._02), 0));
                    _local7 = (-(_local7) + 0._02);
                } else
                {
                    if ((((_local7 == 0)) && (!((14d.p(this.bitmapFill_) == 0)))))
                    {
                        14d.Qe(this.bitmapFill_);
                    };
                };
            };
            this.vS_.length = 0;
            this.vS_.push((4M[3] - (_local5 / 2)), ((4M[4] - _local6) + _local7), (4M[3] + (_local5 / 2)), ((4M[4] - _local6) + _local7), (4M[3] + (_local5 / 2)), 4M[4], (4M[3] - (_local5 / 2)), 4M[4]);
            this.path_.data = this.vS_;
            if (this._1Ia != null)
            {
                if (!this._1Ia._0DF(_arg3))
                {
                    if (Parameters.TP())
                    {
                        this._1Ia.gV(_local4, _arg3);
                    } else
                    {
                        _local4 = this._1Ia.apply(_local4, _arg3);
                    };
                } else
                {
                    this._1Ia = null;
                };
            };
            if (((this._0Fg) && (!(this.Xd))))
            {
                if (Parameters.TP())
                {
                    14d._0bB(_local4, new ColorTransform(-1, -1, -1, 1, 0xFF, 0xFF, 0xFF, 0));
                } else
                {
                    _local8 = _local4.clone();
                    _local8.colorTransform(_local8.rect, new ColorTransform(-1, -1, -1, 1, 0xFF, 0xFF, 0xFF, 0));
                    _local8 = hd._1H9(_local8, new ColorMatrixFilter(MoreColorUtil._1Z6));
                    _local4 = _local8;
                };
                this.Xd = true;
            };
            if (((this.ty) && (!(this._0iG))))
            {
                if (Parameters.TP())
                {
                    14d._0bB(_local4, new ColorTransform(1, 1, 1, 1, 0xFF, 0xFF, 0xFF, 0));
                } else
                {
                    _local8 = _local4.clone();
                    _local8.colorTransform(_local8.rect, new ColorTransform(1, 1, 1, 1, 0xFF, 0xFF, 0xFF, 0));
                    _local4 = _local8;
                };
                this._0iG = true;
            };
            this.bitmapFill_.bitmapData = _local4;
            this._1rx.identity();
            this._1rx.translate(this.vS_[0], this.vS_[1]);
            this.bitmapFill_.matrix = this._1rx;
            _arg1.push(this.bitmapFill_);
            _arg1.push(this.path_);
            _arg1.push(tu.END_FILL);
            if (((((((!(this.isPaused())) && (((this.condition_[ConditionEffect._26x]) || (this.condition_[ConditionEffect.ex]))))) && (!(Parameters._1Wc)))) && (!((this is Pet)))))
            {
                this.WR(_arg1, _arg2, _arg3);
            };
            if (((((this.props_.9A) && (!((this.name_ == null))))) && (!((this.name_.length == 0)))))
            {
                this._0lq(_arg1, _arg2);
            };
            if (((((((((this.props_) && (((this.props_.isEnemy_) || (this.props_.a3))))) && (!(this._1vK())))) && (!(this._1lC())))) && (!(this.props_.rP))))
            {
                _local9 = ((_local4.getPixel32((_local4.width / 4), (_local4.height / 4)) | _local4.getPixel32((_local4.width / 2), (_local4.height / 2))) | _local4.getPixel32(((_local4.width * 3) / 4), ((_local4.height * 3) / 4)));
                _local10 = (_local9 >> 24);
                if (_local10 != 0)
                {
                    1QM = true;
                    if (Parameters.data_.HPBar)
                    {
                        this.Lg(_arg1, _arg3);
                    };
                } else
                {
                    1QM = false;
                };
            };
        }

        public function WR(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            var _local9:BitmapData;
            var _local10:GraphicsBitmapFill;
            var _local11:GraphicsPath;
            var _local12:Number;
            var _local13:Number;
            var _local14:Matrix;
            if (this._1e == null)
            {
                this._1e = new Vector.<BitmapData>();
                this._0id = new Vector.<GraphicsBitmapFill>();
                this._1pH = new Vector.<GraphicsPath>();
            };
            this._1e.length = 0;
            var _local4:int = (_arg3 / 500);
            ConditionEffect._1xP(this.condition_[ConditionEffect._26x], this._1e, _local4);
            ConditionEffect.getConditionEffectIcons2(this.condition_[ConditionEffect.ex], this._1e, _local4);
            var _local5:Number = 4M[3];
            var _local6:Number = this.vS_[1];
            var _local7:int = this._1e.length;
            var _local8:int;
            while (_local8 < _local7)
            {
                _local9 = this._1e[_local8];
                if (_local8 >= this._0id.length)
                {
                    this._0id.push(new GraphicsBitmapFill(null, new Matrix(), false, false));
                    this._1pH.push(new GraphicsPath(tu._0xS, new Vector.<Number>()));
                };
                _local10 = this._0id[_local8];
                _local11 = this._1pH[_local8];
                _local10.bitmapData = _local9;
                _local12 = ((_local5 - ((_local9.width * _local7) / 2)) + (_local8 * _local9.width));
                _local13 = (_local6 - (_local9.height / 2));
                _local11.data.length = 0;
                _local11.data.push(_local12, _local13, (_local12 + _local9.width), _local13, (_local12 + _local9.width), (_local13 + _local9.height), _local12, (_local13 + _local9.height));
                _local14 = _local10.matrix;
                _local14.identity();
                _local14.translate(_local12, _local13);
                _arg1.push(_local10);
                _arg1.push(_local11);
                _arg1.push(tu.END_FILL);
                _local8++;
            };
        }

        override public function drawShadow(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            if (this._0xz == null)
            {
                this._0xz = new GraphicsGradientFill(GradientType.RADIAL, [this.props_._0Mn, this.props_._0Mn], [0.5, 0], null, new Matrix());
                this._0ND = new GraphicsPath(tu._0xS, new Vector.<Number>());
            };
            var _local4:Number = (((this.size_ / 100) * (this.props_._0Qf / 100)) * this._1MJ);
            var _local5:Number = (30 * _local4);
            var _local6:Number = (15 * _local4);
            this._0xz.matrix.createGradientBox((_local5 * 2), (_local6 * 2), 0, (4M[0] - _local5), (4M[1] - _local6));
            _arg1.push(this._0xz);
            this._0ND.data.length = 0;
            this._0ND.data.push((4M[0] - _local5), (4M[1] - _local6), (4M[0] + _local5), (4M[1] - _local6), (4M[0] + _local5), (4M[1] + _local6), (4M[0] - _local5), (4M[1] + _local6));
            _arg1.push(this._0ND);
            _arg1.push(tu.END_FILL);
        }

        public function toString():String{
            return ((((((((((("[" + getQualifiedClassName(this)) + " id: ") + objectId_) + " type: ") + ObjectLibrary._118[this.objectType_]) + " pos: ") + x_) + ", ") + y_) + "]"));
        }


    }
}//package com.company.assembleegameclient.objects

