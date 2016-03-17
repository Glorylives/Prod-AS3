// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Player

package com.company.assembleegameclient.objects{
import _04_._1JZ;

import _0OG._22M;

import com.company.assembleegameclient.util._BJ;
import com.company.util.ConversionUtil;
import com.company.util.IntPoint;

import flash.display.GraphicsPath;

import flash.display.GraphicsSolidFill;

import flash.geom.Matrix;
import flash.geom.Point;
import flash.utils.Dictionary;

public class Player extends Character {

        public static const b9:int = 10000;
        private static const hy:Number = 0.4;
        private static const _0Lc:Vector.<Point> = new <Point>[new Point(0, 0), new Point(1, 0), new Point(0, 1), new Point(1, 1)];
        private static const _6Z:Matrix = new Matrix(1, 0, 0, 1, 2, 2);
        private static const _0pG:Matrix = new Matrix(1, 0, 0, 1, 20, 1);
        private static const Rq:Number = 0.004;
        private static const _01k:Number = 0.0096;
        private static const _0Ox:Number = 0.0015;
        private static const _0Ck:Number = 0.008;
        private static const _0I9:Number = 0.5;
        private static const _0eV:Number = 2;

        public static var QH:Boolean = false;
        private static var lH:Point = new Point();

        public var _0bF:int;
        public var s0:int;
        public var skin:_BJ;
        public var isShooting:Boolean;
        public var accountId_:String = "";
        public var credits_:int = 0;
        public var _0NG:int = 0;
        public var numStars_:int = 0;
        public var _1iQ:int = 0;
        public var _1TS:Boolean = false;
        public var _0fz:int = 0;
        public var _0m2:int = -1;
        public var _0Lv:int = -1;
        public var guildName_:String = null;
        public var guildRank_:int = -1;
        public var _0kh:Boolean = false;
        public var breath_:int = -1;
        public var _1nC:int = 200;
        public var _12a:Number = 0;
        public var _0Iq:int = 1000;
        public var exp_:int = 0;
        public var _17R:int = 0;
        public var speed_:int = 0;
        public var _0B0:int = 0;
        public var _0aj:int = 0;
        public var _00N:int = 0;
        public var _1j8:int = 0;
        public var _24q:int = 0;
        public var _0el:int = 0;
        public var _0Jk:int = 0;
        public var _0AE:int = 0;
        public var _0wa:int = 0;
        public var _1zn:int = 0;
        public var _1ms:int = 0;
        public var _1lt:int = 0;
        public var _0R8:int = 0;
        public var _03y:int = 0;
        public var Nx:int = 0;
        public var _0i2:int = 0;
        public var _1r0:int = 0;
        public var _1bF:int = 0;
        public var _0Mp:int = 0;
        public var K8:int = 0;
        public var _1w7:int = 0;
        public var _0NB:int = 0;
        public var _0Th:Boolean = false;
        public var starred_:Boolean = false;
        public var _0xp:Boolean = false;
        public var distSqFromThisPlayer_:Number = 0;
        protected var _1x7:Number = 0;
        protected var _1MS:Point = null;
        protected var TG:Number = 1;
        public var _1ff:int = 0;
        public var _0T6:int = 0;
        public var IQ:int = 0;
        public var _0OA:int = 0;
        public var _198:int = 0;
        protected var eu:_0t0 = null;
        protected var _3:Merchant = null;
        public var _13O:Boolean = true;
        public var _0ib:String = "";
        public var _0Q3:String = "";
        private var _12K:_0rh;
        private var factory:_0Vx;
        private var _0kE:IntPoint;
        private var _0XC:GraphicsSolidFill = null;
        private var gD:GraphicsPath = null;
        private var nc:GraphicsSolidFill = null;
        private var _24R:GraphicsPath = null;

        public function Player(_arg1:XML){
            this._0kE = new IntPoint();
            var _local2:_22M = _1JZ._0JF();
            this._12K = _local2.getInstance(_0rh);
            this.factory = _local2.getInstance(_0Vx);
            super(_arg1);
            this.Nx = int(_arg1.Attack.@max);
            this._0i2 = int(_arg1.Defense.@max);
            this._1r0 = int(_arg1.Speed.@max);
            this._1bF = int(_arg1.Dexterity.@max);
            this._0Mp = int(_arg1.HpRegen.@max);
            this.K8 = int(_arg1.MpRegen.@max);
            this._1w7 = int(_arg1.MaxHitPoints.@max);
            this._0NB = int(_arg1.MaxMagicPoints.@max);
            _0Rx = new Dictionary();
        }

        public static function _1KR(_arg1:String, _arg2:XML):Player{
            var _local3:int = int(_arg2.ObjectType);
            var _local4:XML = ObjectLibrary.GD[_local3];
            var _local5:Player = new Player(_local4);
            _local5.name_ = _arg1;
            _local5._0Sj = int(_arg2.Level);
            _local5.exp_ = int(_arg2.Exp);
            _local5._1Wz = ConversionUtil._0HU(_arg2.Equipment);
            _local5.ba = int(_arg2.MaxHitPoints);
            _local5._1VZ = int(_arg2.HitPoints);
            _local5._1nC = int(_arg2.MaxMagicPoints);
            _local5._12a = int(_arg2.MagicPoints);
            _local5._17R = int(_arg2.Attack);
            _local5._1vs = int(_arg2.Defense);
            _local5.speed_ = int(_arg2.Speed);
            _local5._0B0 = int(_arg2.Dexterity);
            _local5._0aj = int(_arg2.HpRegen);
            _local5._00N = int(_arg2.MpRegen);
            _local5.tex1Id_ = int(_arg2.Tex1);
            _local5.tex2Id_ = int(_arg2.Tex2);
            return (_local5);
        }


        public function 1qR(_arg1:Number, _arg2:Number, _arg3:Number):void{
            var _local4:Number;
            if (this.1MS == null)
            {
                this.1MS = new Point();
            };
            this.1x7 = _arg1;
            this.1MS.x = _arg2;
            this.1MS.y = _arg3;
            if (3g())
            {
                _local4 = this.1MS.x;
                this.1MS.x = -(this.1MS.y);
                this.1MS.y = -(_local4);
                this.1x7 = -(this.1x7);
            };
        }

        public function 1Ep(_arg1:int):void{
            this.credits_ = _arg1;
        }

import _AO._du;

import com.company.util.PointUtil;
import com.company.util.hd;

import flash.geom.ColorTransform;

import flash.geom.Point;

public function setTokens(_arg1:int):void{
            this.0NG = _arg1;
        }

        public function 1E5(_arg1:String):void{
            var _local3:GameObject;
            var _local4:Player;
            var _local5:Boolean;
            this.guildName_ = _arg1;
            var _local2:Player = map_.player_;
            if (_local2 == this)
            {
                for each (_local3 in map_.goDict_)
                {
                    _local4 = (_local3 as Player);
                    if (((!((_local4 == null))) && (!((_local4 == this)))))
                    {
                        _local4.1E5(_local4.guildName_);
                    };
                };
            } else
            {
                _local5 = ((((((!((_local2 == null))) && (!((_local2.guildName_ == null))))) && (!((_local2.guildName_ == ""))))) && ((_local2.guildName_ == this.guildName_)));
                if (_local5 != this.0kh)
                {
                    this.0kh = _local5;
                    1LO = null;
                };
            };
        }

        public function 0dw(_arg1:Player):Boolean{
            return (!(((_arg1.isPaused()) || (_arg1.1vK()))));
        }

        public function 1pO():int{
            var _local1:int = getTimer();
            return (Math.max(0, (this.IQ - _local1)));
        }

        public function 1oB(_arg1:Player):Boolean{
            if (isPaused())
            {
                this.12K.dispatch(this.0Bb(du.a6));
                return (false);
            };
            var _local2:int = this.1pO();
            if (_local2 > 0)
            {
                this.12K.dispatch(this.0Bb(du.Ha, {seconds:int(((_local2 / 1000) + 1))}));
                return (false);
            };
            if (!this.0dw(_arg1))
            {
                if (_arg1.1vK())
                {
                    this.12K.dispatch(this.0Bb(du.17d, {player:_arg1.name_}));
                } else
                {
                    this.12K.dispatch(this.0Bb(du.20Y, {player:_arg1.name_}));
                };
                return (false);
            };
            map_.gs_.gsc_.teleport(_arg1.objectId_);
            this.IQ = (getTimer() + b9);
            return (true);
        }

        private function 0Bb(_arg1:String, _arg2:Object=null):1Ys{
            return (1Ys.make(Parameters.1Wj, _arg1, -1, -1, "", false, _arg2));
        }

        public function Cc(_arg1:String, _arg2:Boolean=true):void{
            if (_arg2)
            {
                this.8k();
            };
            var _local3:0A3 = new 0A3(this, new 1cA().setParams(_arg1), 0xFF00, 2000);
            map_.mapOverlay_.addQueuedText(_local3);
        }

        public function 0qF(_arg1:Boolean):void{
            0ZC.play("level_up");
            if (_arg1)
            {
                this.Cc(du.0hu, false);
                this.Cc(du.03F);
            } else
            {
                this.Cc(du.03F);
            };
        }

        public function 8k(_arg1:uint=0xFF00FF00):void{
            map_.addObj(new LevelUpEffect(this, _arg1, 20), x_, y_);
        }

        public function _14y(_arg1:int):void{
            if (_0Sj == 20)
            {
                return;
            };
            var _local2:_1zh = new _1zh(this, 0xFF00, 1000);
            _local2.setStringBuilder(new 1cA().setParams(_du._ev, {exp:_arg1}));
            map_.mapOverlay_.addStatusText(_local2);
        }

        private function _27E():Merchant{
            var _local3:Point;
            var _local4:Merchant;
            var _local1:int = ((((x_ - int(x_)))>0.5) ? 1 : -1);
            var _local2:int = ((((y_ - int(y_)))>0.5) ? 1 : -1);
            for each (_local3 in _0Lc)
            {
                this._0kE.x_ = (x_ + (_local1 * _local3.x));
                this._0kE.y_ = (y_ + (_local2 * _local3.y));
                _local4 = map_.merchLookup_[this._0kE];
                if (_local4 != null)
                {
                    return ((((PointUtil._21u(_local4.x_, _local4.y_, x_, y_) < 1)) ? _local4 : null));
                };
            };
            return (null);
        }

        public function _1wy(_arg1:Number, _arg2:Number):Boolean{
            this._0Ww(_arg1, _arg2, _lH);
            return (this.moveTo(_lH.x, _lH.y));
        }

        override public function moveTo(_arg1:Number, _arg2:Number):Boolean{
            var _local3:Boolean = super.moveTo(_arg1, _arg2);
            if (map_.gs_.evalIsNotInCombatMapArea())
            {
                this._3 = this._27E();
            };
            return (_local3);
        }

        public function 0Ww(_arg1:Number, _arg2:Number, _arg3:Point):void{
            if (((0G7()) || (0fu())))
            {
                _arg3.x = x_;
                _arg3.y = y_;
                return;
            };
            var _local4:Number = (_arg1 - x_);
            var _local5:Number = (_arg2 - y_);
            if ((((((((_local4 < hy)) && ((_local4 > -(hy))))) && ((_local5 < hy)))) && ((_local5 > -(hy)))))
            {
                this.0pi(_arg1, _arg2, _arg3);
                return;
            };
            var _local6:Number = (hy / Math.max(Math.abs(_local4), Math.abs(_local5)));
            var _local7:Number = 0;
            _arg3.x = x_;
            _arg3.y = y_;
            var _local8:Boolean;
            while (!(_local8))
            {
                if ((_local7 + _local6) >= 1)
                {
                    _local6 = (1 - _local7);
                    _local8 = true;
                };
                this.0pi((_arg3.x + (_local4 * _local6)), (_arg3.y + (_local5 * _local6)), _arg3);
                _local7 = (_local7 + _local6);
            };
        }

        public function 0pi(_arg1:Number, _arg2:Number, _arg3:Point):void{
            var _local6:Number;
            var _local7:Number;
            var _local4:Boolean = ((((((x_ % 0.5) == 0)) && (!((_arg1 == x_))))) || (!((int((x_ / 0.5)) == int((_arg1 / 0.5))))));
            var _local5:Boolean = ((((((y_ % 0.5) == 0)) && (!((_arg2 == y_))))) || (!((int((y_ / 0.5)) == int((_arg2 / 0.5))))));
            if (((((!(_local4)) && (!(_local5)))) || (this.0co(_arg1, _arg2))))
            {
                _arg3.x = _arg1;
                _arg3.y = _arg2;
                return;
            };
            if (_local4)
            {
                _local6 = (((_arg1)>x_) ? (int((_arg1 * 2)) / 2) : (int((x_ * 2)) / 2));
                if (int(_local6) > int(x_))
                {
                    _local6 = (_local6 - 0.01);
                };
            };
            if (_local5)
            {
                _local7 = (((_arg2)>y_) ? (int((_arg2 * 2)) / 2) : (int((y_ * 2)) / 2));
                if (int(_local7) > int(y_))
                {
                    _local7 = (_local7 - 0.01);
                };
            };
            if (!_local4)
            {
                _arg3.x = _arg1;
                _arg3.y = _local7;
                if (((!((xy == null))) && (!((xy.props_.slideAmount_ == 0)))))
                {
                    this.xF(false);
                };
                return;
            };
            if (!_local5)
            {
                _arg3.x = _local6;
                _arg3.y = _arg2;
                if (((!((xy == null))) && (!((xy.props_.slideAmount_ == 0)))))
                {
                    this.xF(true);
                };
                return;
            };
            var _local8:Number = (((_arg1)>x_) ? (_arg1 - _local6) : (_local6 - _arg1));
            var _local9:Number = (((_arg2)>y_) ? (_arg2 - _local7) : (_local7 - _arg2));
            if (_local8 > _local9)
            {
                if (this.0co(_arg1, _local7))
                {
                    _arg3.x = _arg1;
                    _arg3.y = _local7;
                    return;
                };
                if (this.0co(_local6, _arg2))
                {
                    _arg3.x = _local6;
                    _arg3.y = _arg2;
                    return;
                };
            } else
            {
                if (this.0co(_local6, _arg2))
                {
                    _arg3.x = _local6;
                    _arg3.y = _arg2;
                    return;
                };
                if (this.0co(_arg1, _local7))
                {
                    _arg3.x = _arg1;
                    _arg3.y = _local7;
                    return;
                };
            };
            _arg3.x = _local6;
            _arg3.y = _local7;
        }

        private function xF(_arg1:Boolean):void{
            moveVec_.scaleBy(-0.5);
            if (_arg1)
            {
                moveVec_.y = (moveVec_.y * -1);
            } else
            {
                moveVec_.x = (moveVec_.x * -1);
            };
        }

        public function 0co(_arg1:Number, _arg2:Number):Boolean{
            var _local3:Square = map_.getSquare(_arg1, _arg2);
            if (((!((xy == _local3))) && ((((_local3 == null)) || (!(_local3.0BK()))))))
            {
                return (false);
            };
            var _local4:Number = (_arg1 - int(_arg1));
            var _local5:Number = (_arg2 - int(_arg2));
            if (_local4 < 0.5)
            {
                if (this.20I((_arg1 - 1), _arg2))
                {
                    return (false);
                };
                if (_local5 < 0.5)
                {
                    if (((this.20I(_arg1, (_arg2 - 1))) || (this.20I((_arg1 - 1), (_arg2 - 1)))))
                    {
                        return (false);
                    };
                } else
                {
                    if (_local5 > 0.5)
                    {
                        if (((this.20I(_arg1, (_arg2 + 1))) || (this.20I((_arg1 - 1), (_arg2 + 1)))))
                        {
                            return (false);
                        };
                    };
                };
            } else
            {
                if (_local4 > 0.5)
                {
                    if (this.20I((_arg1 + 1), _arg2))
                    {
                        return (false);
                    };
                    if (_local5 < 0.5)
                    {
                        if (((this.20I(_arg1, (_arg2 - 1))) || (this.20I((_arg1 + 1), (_arg2 - 1)))))
                        {
                            return (false);
                        };
                    } else
                    {
                        if (_local5 > 0.5)
                        {
                            if (((this.20I(_arg1, (_arg2 + 1))) || (this.20I((_arg1 + 1), (_arg2 + 1)))))
                            {
                                return (false);
                            };
                        };
                    };
                } else
                {
                    if (_local5 < 0.5)
                    {
                        if (this.20I(_arg1, (_arg2 - 1)))
                        {
                            return (false);
                        };
                    } else
                    {
                        if (_local5 > 0.5)
                        {
                            if (this.20I(_arg1, (_arg2 + 1)))
                            {
                                return (false);
                            };
                        };
                    };
                };
            };
            return (true);
        }

        public function 20I(_arg1:Number, _arg2:Number):Boolean{
            var _local3:Square = map_.lookupSquare(_arg1, _arg2);
            return ((((((_local3 == null)) || ((_local3.tileType_ == 0xFF)))) || (((!((_local3.obj_ == null))) && (_local3.obj_.props_.yk)))));
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local3:Number;
            var _local4:Number;
            var _local5:Number;
            var _local6:Vector3D;
            var _local7:Number;
            var _local8:int;
            var _local9:Vector.<uint>;
            if (((this.198) && (!(isPaused()))))
            {
                this.198 = (this.198 - _arg2);
                if (this.198 < 0)
                {
                    this.198 = 0;
                };
            };
            if (((this.0OA) && (!(isPaused()))))
            {
                this.0OA = (this.0OA - _arg2);
                if (this.0OA < 0)
                {
                    this.0OA = 0;
                };
            };
            if (((this.0bF) && (!(isPaused()))))
            {
                this.0bF = (this.0bF - _arg2);
                if (this.0bF < 0)
                {
                    this.0bF = 0;
                };
            };
            if (((0tJ()) && (!(isPaused()))))
            {
                if (this.eu == null)
                {
                    this.eu = new 0t0(this);
                    map_.addObj(this.eu, x_, y_);
                };
            } else
            {
                if (this.eu != null)
                {
                    map_.removeObj(this.eu.objectId_);
                    this.eu = null;
                };
            };
            if ((((map_.player_ == this)) && (isPaused())))
            {
                return (true);
            };
            if (this.1MS != null)
            {
                _local3 = Parameters.data_.cameraAngle;
                if (this.1x7 != 0)
                {
                    _local3 = (_local3 + ((_arg2 * Parameters.0g8) * this.1x7));
                    Parameters.data_.cameraAngle = _local3;
                };
                if (((!((this.1MS.x == 0))) || (!((this.1MS.y == 0)))))
                {
                    _local4 = this.1t5();
                    _local5 = Math.atan2(this.1MS.y, this.1MS.x);
                    if (xy.props_.slideAmount_ > 0)
                    {
                        _local6 = new Vector3D();
                        _local6.x = (_local4 * Math.cos((_local3 + _local5)));
                        _local6.y = (_local4 * Math.sin((_local3 + _local5)));
                        _local6.z = 0;
                        _local7 = _local6.length;
                        _local6.scaleBy((-1 * (xy.props_.slideAmount_ - 1)));
                        moveVec_.scaleBy(xy.props_.slideAmount_);
                        if (moveVec_.length < _local7)
                        {
                            moveVec_ = moveVec_.add(_local6);
                        };
                    } else
                    {
                        moveVec_.x = (_local4 * Math.cos((_local3 + _local5)));
                        moveVec_.y = (_local4 * Math.sin((_local3 + _local5)));
                    };
                } else
                {
                    if ((((moveVec_.length > 0.00012)) && ((xy.props_.slideAmount_ > 0))))
                    {
                        moveVec_.scaleBy(xy.props_.slideAmount_);
                    } else
                    {
                        moveVec_.x = 0;
                        moveVec_.y = 0;
                    };
                };
                if (((!((xy == null))) && (xy.props_.push_)))
                {
                    moveVec_.x = (moveVec_.x - (xy.props_.animate_.dx_ / 1000));
                    moveVec_.y = (moveVec_.y - (xy.props_.animate_.dy_ / 1000));
                };
                this.1wy((x_ + (_arg2 * moveVec_.x)), (y_ + (_arg2 * moveVec_.y)));
            } else
            {
                if (!super.update(_arg1, _arg2))
                {
                    return (false);
                };
            };
            if ((((((((((map_.player_ == this)) && ((xy.props_.maxDamage_ > 0)))) && (((xy.lastDamage_ + 500) < _arg1)))) && (!(0mQ())))) && ((((xy.obj_ == null)) || (!(xy.obj_.props_.protectFromGroundDamage_))))))
            {
                _local8 = map_.gs_.gsc_.getNextDamage(xy.props_.minDamage_, xy.props_.maxDamage_);
                _local9 = new Vector.<uint>();
                _local9.push(ConditionEffect.14N);
                damage(-1, _local8, _local9, (1VZ <= _local8), null);
                map_.gs_.gsc_.groundDamage(_arg1, x_, y_);
                xy.lastDamage_ = _arg1;
            };
            return (true);
        }

        public function Up():void{
            if (map_ == null)
            {
                return;
            };
            var _local1:Square = map_.getSquare(x_, y_);
            if (_local1.props_.1rv)
            {
                0Km = Math.min((0Km + 1), Parameters.0vd);
                this.TG = (0.1 + ((1 - (0Km / Parameters.0vd)) * (_local1.props_.speed_ - 0.1)));
            } else
            {
                0Km = 0;
                this.TG = _local1.props_.speed_;
            };
        }

        override protected function makeNameBitmapData():BitmapData{
            var _local1:1Jo = new 1WS(name_);
            var _local2:1CD = _1JZ.0JF().getInstance(1CD);
            var _local3:BitmapData = _local2.make(_local1, 16, this.lu(), true, 0pG, true);
            _local3.draw(09g.0YP(this.numStars_), 6Z);
            return (_local3);
        }

        private function lu():uint{
            if (this.0kh)
            {
                return (Parameters.19c);
            };
            if (this.1TS)
            {
                return (Parameters.0zj);
            };
            return (0xFFFFFF);
        }

        protected function 23A(_arg1:Vector.<IGraphicsData>, _arg2:int):void{
            var _local7:Number;
            var _local8:Number;
            if (this.24R == null)
            {
                this.0XC = new GraphicsSolidFill();
                this.gD = new GraphicsPath(tu.0xS, new Vector.<Number>());
                this.nc = new GraphicsSolidFill(2542335);
                this.24R = new GraphicsPath(tu.0xS, new Vector.<Number>());
            };
            if (this.breath_ <= Parameters.kk)
            {
                _local7 = ((Parameters.kk - this.breath_) / Parameters.kk);
                this.0XC.color = MoreColorUtil.0pA(0x545454, 0xFF0000, (Math.abs(Math.sin((_arg2 / 300))) * _local7));
            } else
            {
                this.0XC.color = 0x545454;
            };
            var _local3:int = 20;
            var _local4:int = 8;
            var _local5:int = 6;
            var _local6:Vector.<Number> = (this.gD.data as Vector.<Number>);
            _local6.length = 0;
            _local6.push((4M[0] - _local3), (4M[1] + _local4), (4M[0] + _local3), (4M[1] + _local4), (4M[0] + _local3), ((4M[1] + _local4) + _local5), (4M[0] - _local3), ((4M[1] + _local4) + _local5));
            _arg1.push(this.0XC);
            _arg1.push(this.gD);
            _arg1.push(tu.END_FILL);
            if (this.breath_ > 0)
            {
                _local8 = (((this.breath_ / 100) * 2) * _local3);
                this.24R.data.length = 0;
                _local6 = (this.24R.data as Vector.<Number>);
                _local6.length = 0;
                _local6.push((4M[0] - _local3), (4M[1] + _local4), ((4M[0] - _local3) + _local8), (4M[1] + _local4), ((4M[0] - _local3) + _local8), ((4M[1] + _local4) + _local5), (4M[0] - _local3), ((4M[1] + _local4) + _local5));
                _arg1.push(this.nc);
                _arg1.push(this.24R);
                _arg1.push(tu.END_FILL);
            };
            14d.MM(this.nc, true);
            14d.MM(this.0XC, true);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            super.draw(_arg1, _arg2, _arg3);
            if (this != map_.player_)
            {
                if (!Parameters.1Wc)
                {
                    0lq(_arg1, _arg2);
                };
            } else
            {
                if (this.breath_ >= 0)
                {
                    this.23A(_arg1, _arg3);
                };
            };
        }

        private function 1t5():Number{
            if (19q())
            {
                return ((Rq * this.TG));
            };
            var _local1:Number = (Rq + ((this.speed_ / 75) * (01k - Rq)));
            if (((0Wy()) || (ul())))
            {
                _local1 = (_local1 * 1.5);
            };
            _local1 = (_local1 * this.TG);
            return (_local1);
        }

        public function Au():Number{
            if (c6())
            {
                return (0Ox);
            };
            var _local1:Number = (0Ox + ((this.0B0 / 75) * (0Ck - 0Ox)));
            if ( use())
            {
                _local1 = (_local1 * 1.5);
            };
            return (_local1);
        }

        private function 0NN():Number{
            if (0RC())
            {
                return (0I9);
            };
            var _local1:Number = (0I9 + ((this.17R / 75) * (0eV - 0I9)));
            if (1Ka())
            {
                _local1 = (_local1 * 1.5);
            };
            return (_local1);
        }

        private function hM():void{
            var _local1:0s0 = this.skin.imageFromAngle(0, BJ.1OS, 0);
            3q = this.skin;
            texture_ = _local1.image_;
            mask_ = _local1.mask_;
            this.13O = true;
        }

        private function 0IX():void{
            var _local1:Vector.<XML> = ObjectLibrary.0XI;
            var _local2:uint = Math.floor((Math.random() * _local1.length));
            var _local3:int = _local1[_local2].@type;
            var _local4:27S = ObjectLibrary.hE[_local3];
            texture_ = _local4.texture_;
            mask_ = _local4.mask_;
            3q = _local4.3q;
            this.13O = false;
        }

        override protected function getTexture(_arg1:1C8, _arg2:int):BitmapData{
            var _local5:0s0;
            var _local10:int;
            var _local11:Dictionary;
            var _local12:Number;
            var _local13:int;
            var _local14:ColorTransform;
            var _local3:Number = 0;
            var _local4:int = BJ.1OS;
            if (((this.isShooting) || ((_arg2 < (0FE + this.1ff)))))
            {
                Kn = SB;
                _local3 = (((_arg2 - 0FE) % this.1ff) / this.1ff);
                _local4 = BJ.1Br;
            } else
            {
                if (((!((moveVec_.x == 0))) || (!((moveVec_.y == 0)))))
                {
                    _local10 = (3.5 / this.1t5());
                    if (((!((moveVec_.y == 0))) || (!((moveVec_.x == 0)))))
                    {
                        Kn = Math.atan2(moveVec_.y, moveVec_.x);
                    };
                    _local3 = ((_arg2 % _local10) / _local10);
                    _local4 = BJ.1xM;
                };
            };
            if (this.AG())
            {
                ((this.13O) && (this.0IX()));
            } else
            {
                if (!this.13O)
                {
                    this.hM();
                };
            };
            if (_arg1.1kT)
            {
                _local5 = new 0s0(XZ(), null);
            } else
            {
                _local5 = 3q.imageFromFacing(Kn, _arg1, _local4, _local3);
            };
            var _local6:int = tex1Id_;
            var _local7:int = tex2Id_;
            var _local8:BitmapData;
            if (this.3)
            {
                _local11 = 0Rx[this.3];
                if (_local11 == null)
                {
                    0Rx[this.3] = new Dictionary();
                } else
                {
                    _local8 = _local11[_local5];
                };
                _local6 = this.3.getTex1Id(tex1Id_);
                _local7 = this.3.getTex2Id(tex2Id_);
            } else
            {
                _local8 = 0Rx[_local5];
            };
            if (_local8 == null)
            {
                _local8 = TextureRedrawer.resize(_local5.image_, _local5.mask_, size_, false, _local6, _local7);
                if (this.3 != null)
                {
                    0Rx[this.3][_local5] = _local8;
                } else
                {
                    0Rx[_local5] = _local8;
                };
            };
            if (1VZ < (ba * 0.2))
            {
                _local12 = (int((Math.abs(Math.sin((_arg2 / 200))) * 10)) / 10);
                _local13 = 128;
                _local14 = new ColorTransform(1, 1, 1, 1, (_local12 * _local13), (-(_local12) * _local13), (-(_local12) * _local13));
                _local8 = hd.07J(_local8, _local14);
            };
            var _local9:BitmapData = 0Rx[_local8];
            if (_local9 == null)
            {
                _local9 = 1go.0Lr(_local8, (((this.0Lv == -1)) ? 0 : 0xFF0000));
                0Rx[_local8] = _local9;
            };
            if (((((isPaused()) || (0Iz()))) || (0fu())))
            {
                _local9 = hd.1H9(_local9, 1hD);
            } else
            {
                if (1vK())
                {
                    _local9 = hd.1Ko(_local9, 0.4);
                };
            };
            return (_local9);
        }

        override public function getPortrait():BitmapData{
            var _local1:0s0;
            var _local2:int;
            if (0Sz == null)
            {
                _local1 = 3q.imageFromDir(BJ.RIGHT, BJ.1OS, 0);
                _local2 = ((4 / _local1.image_.width) * 100);
                0Sz = TextureRedrawer.resize(_local1.image_, _local1.mask_, _local2, true, tex1Id_, tex2Id_);
                0Sz = 1go.0Lr(0Sz, 0);
            };
            return (0Sz);
        }

        public function useAltWeapon(_arg1:Number, _arg2:Number, _arg3:int):Boolean{
            var _local7:XML;
            var _local8:int;
            var _local9:Number;
            var _local10:int;
            var _local11:int;
            if ((((map_ == null)) || (isPaused())))
            {
                return (false);
            };
            var _local4:int = 1Wz[1];
            if (_local4 == -1)
            {
                return (false);
            };
            var _local5:XML = ObjectLibrary.GD[_local4];
            if ((((_local5 == null)) || (!(_local5.hasOwnProperty("Usable")))))
            {
                return (false);
            };
            var _local6:Point = map_.pSTopW(_arg1, _arg2);
            if (_local6 == null)
            {
                0ZC.play("error");
                return (false);
            };
            for each (_local7 in _local5.Activate)
            {
                if (_local7.toString() == 0MX.TELEPORT)
                {
                    if (!this.0co(_local6.x, _local6.y))
                    {
                        0ZC.play("error");
                        return (false);
                    };
                };
            };
            _local8 = getTimer();
            if (_arg3 == 12v.1Oc)
            {
                if (_local8 < this.0T6)
                {
                    0ZC.play("error");
                    return (false);
                };
                _local10 = int(_local5.MpCost);
                if (_local10 > this.12a)
                {
                    0ZC.play("no_mana");
                    return (false);
                };
                _local11 = 500;
                if (_local5.hasOwnProperty("Cooldown"))
                {
                    _local11 = (Number(_local5.Cooldown) * 1000);
                };
                this.0T6 = (_local8 + _local11);
                map_.gs_.gsc_.useItem(_local8, objectId_, 1, _local4, _local6.x, _local6.y, _arg3);
                if (_local5.Activate == 0MX.SHOOT)
                {
                    _local9 = Math.atan2(_arg2, _arg1);
                    this.04U(_local8, _local4, _local5, (Parameters.data_.cameraAngle + _local9), false);
                };
            } else
            {
                if (_local5.hasOwnProperty("MultiPhase"))
                {
                    map_.gs_.gsc_.useItem(_local8, objectId_, 1, _local4, _local6.x, _local6.y, _arg3);
                    _local10 = int(_local5.MpEndCost);
                    if (_local10 <= this.12a)
                    {
                        _local9 = Math.atan2(_arg2, _arg1);
                        this.04U(_local8, _local4, _local5, (Parameters.data_.cameraAngle + _local9), false);
                    };
                };
            };
            return (true);
        }

        public function MP(_arg1:Number):void{
            this.shoot((Parameters.data_.cameraAngle + _arg1));
        }

        override public function setAttack(_arg1:int, _arg2:Number):void{
            var _local3:XML = ObjectLibrary.GD[_arg1];
            if ((((_local3 == null)) || (!(_local3.hasOwnProperty("RateOfFire")))))
            {
                return;
            };
            var _local4:Number = Number(_local3.RateOfFire);
            this.1ff = ((1 / this.Au()) * (1 / _local4));
            super.setAttack(_arg1, _arg2);
        }

        private function shoot(_arg1:Number):void{
            if ((((((((map_ == null)) || (05R()))) || (isPaused()))) || (0fu())))
            {
                return;
            };
            var _local2:int = 1Wz[0];
            if (_local2 == -1)
            {
                this.12K.dispatch(1Ys.make(Parameters.1Wj, du.0tb));
                return;
            };
            var _local3:XML = ObjectLibrary.GD[_local2];
            var _local4:int = getTimer();
            var _local5:Number = Number(_local3.RateOfFire);
            this.1ff = ((1 / this.Au()) * (1 / _local5));
            if (_local4 < (0FE + this.1ff))
            {
                return;
            };
            doneAction(map_.gs_, Tutorial.1i3);
            SB = _arg1;
            0FE = _local4;
            this.04U(0FE, _local2, _local3, SB, true);
        }

        private function 04U(_arg1:int, _arg2:int, _arg3:XML, _arg4:Number, _arg5:Boolean):void{
            var _local11:uint;
            var _local12:Projectile;
            var _local13:int;
            var _local14:int;
            var _local15:Number;
            var _local16:int;
            var _local6:int = ((_arg3.hasOwnProperty("NumProjectiles")) ? int(_arg3.NumProjectiles) : 1);
            var _local7:Number = (((_arg3.hasOwnProperty("ArcGap")) ? Number(_arg3.ArcGap) : 11.25) * Trig.kP);
            var _local8:Number = (_local7 * (_local6 - 1));
            var _local9:Number = (_arg4 - (_local8 / 2));
            this.isShooting = _arg5;
            var _local10:int;
            while (_local10 < _local6)
            {
                _local11 = 0E1();
                _local12 = (0Ep.sH(Projectile) as Projectile);
                if (((_arg5) && (!((this.0ib == "")))))
                {
                    _local12.reset(_arg2, 0, objectId_, _local11, _local9, _arg1, this.0ib, this.0Q3);
                } else
                {
                    _local12.reset(_arg2, 0, objectId_, _local11, _local9, _arg1);
                };
                _local13 = int(_local12.gF.minDamage_);
                _local14 = int(_local12.gF.maxDamage_);
                _local15 = ((_arg5) ? this.0NN() : 1);
                _local16 = (map_.gs_.gsc_.getNextDamage(_local13, _local14) * _local15);
                if (_arg1 > (map_.gs_.moveRecords_.lastClearTime_ + 600))
                {
                    _local16 = 0;
                };
                _local12.1gy(_local16);
                if ((((_local10 == 0)) && (!((_local12.0Q == null)))))
                {
                    0ZC.play(_local12.0Q, 0.75, false);
                };
                map_.addObj(_local12, (x_ + (Math.cos(_arg4) * 0.3)), (y_ + (Math.sin(_arg4) * 0.3)));
                map_.gs_.gsc_.playerShoot(_arg1, _local12);
                _local9 = (_local9 + _local7);
                _local10++;
            };
        }

        public function AG():Boolean{
            return (!(((condition_[ConditionEffect.26x] & ConditionEffect.1QC) == 0)));
        }

        public function 9V():Boolean{
            var _local1:int = 1Wz.length;
            var _local2:uint = 4;
            while (_local2 < _local1)
            {
                if (1Wz[_local2] <= 0)
                {
                    return (false);
                };
                _local2++;
            };
            return (true);
        }

        public function nextAvailableInventorySlot():int{
            var _local1:int = ((this.0Th) ? 1Wz.length : (1Wz.length - 1zw.1dg));
            var _local2:uint = 4;
            while (_local2 < _local1)
            {
                if (1Wz[_local2] <= 0)
                {
                    return (_local2);
                };
                _local2++;
            };
            return (-1);
        }

        public function 0b0():int{
            var _local1:int = ((this.0Th) ? 1Wz.length : (1Wz.length - 1zw.1dg));
            var _local2:int;
            var _local3:uint = 4;
            while (_local3 < _local1)
            {
                if (1Wz[_local3] <= 0)
                {
                    _local2++;
                };
                _local3++;
            };
            return (_local2);
        }

        public function swapInventoryIndex(_arg1:String):int{
            var _local2:int;
            var _local3:int;
            if (!this.0Th)
            {
                return (-1);
            };
            if (_arg1 == 1Js.1yQ)
            {
                _local2 = 1zw.1ye;
                _local3 = (1zw.1ye + 1zw.1dg);
            } else
            {
                _local2 = (1zw.1ye + 1zw.1dg);
                _local3 = 1Wz.length;
            };
            var _local4:uint = _local2;
            while (_local4 < _local3)
            {
                if (1Wz[_local4] <= 0)
                {
                    return (_local4);
                };
                _local4++;
            };
            return (-1);
        }

        public function getPotionCount(_arg1:int):int{
            switch (_arg1)
            {
                case 1z1.0Rl:
                    return (this.0R8);
                case 1z1.Ww:
                    return (this.03y);
            };
            return (0);
        }

        public function getTex1():int{
            return (tex1Id_);
        }

        public function getTex2():int{
            return (tex2Id_);
        }


    }
}//package com.company.assembleegameclient.objects

