// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Projectile

package com.company.assembleegameclient.objects{
import _1Np.HitEffect;
import _1Np._El;

import com.company.assembleegameclient.map._1C8;
import com.company.assembleegameclient.util._0Na;
import com.company.assembleegameclient.util._121;

import flash.display.IGraphicsData;
import flash.utils.Dictionary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.engine3d._wq;
    import flash.geom.Point;
    import flash.geom.Vector3D;
    import flash.display.GraphicsGradientFill;
    import flash.display.GraphicsPath;
    import flash.display.GradientType;
    import flash.geom.Matrix;
    import com.company.util._tu;
    import com.company.util.Trig;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.map.Map;
    import com.company.assembleegameclient.map.Square;
    import com.company.assembleegameclient.tutorial.doneAction;
    import com.company.assembleegameclient.tutorial.Tutorial;
    import com.company.assembleegameclient.util.TextureRedrawer;

    public class Projectile extends BasicObject {

        private static var _01t:Dictionary = new Dictionary();

        public var props_:ObjectProperties;
        public var _1gM:ObjectProperties;
        public var gF:_22S;
        public var texture_:BitmapData;
        public var bulletId_:uint;
        public var ownerId_:int;
        public var containerType_:int;
        public var bulletType_:uint;
        public var _in:Boolean;
        public var _0VO:Boolean;
        public var damage_:int;
        public var _0Q:String;
        public var _0Fh:Number;
        public var _1E1:Number;
        public var startTime_:int;
        public var angle_:Number = 0;
        public var _1o6:Dictionary;
        public var _0OJ:_wq;
        private var _1m1:Point;
        private var _011:Vector3D;
        protected var _0xz:GraphicsGradientFill;
        protected var _0ND:GraphicsPath;

        public function Projectile(){
            this._0OJ = new _wq(100);
            this._1m1 = new Point();
            this._011 = new Vector3D();
            this._0xz = new GraphicsGradientFill(GradientType.RADIAL, [0, 0], [0.5, 0], null, new Matrix());
            this._0ND = new GraphicsPath(_tu._0xS, new Vector.<Number>());
            super();
        }

        public static function _248(_arg1:int, _arg2:uint):int{
            return (_01t[((_arg2 << 24) | _arg1)]);
        }

        public static function _0uc(_arg1:int, _arg2:uint):int{
            var _local3:int = _0Zh();
            _01t[((_arg2 << 24) | _arg1)] = _local3;
            return (_local3);
        }

        public static function _1ys(_arg1:int, _arg2:uint):void{
            delete _01t[((_arg2 << 24) | _arg1)];
        }

        public static function dispose():void{
            _01t = new Dictionary();
        }


        public function reset(_arg1:int, _arg2:int, _arg3:int, _arg4:int, _arg5:Number, _arg6:int, _arg7:String="", _arg8:String=""):void{
            var _local11:Number;
            clear();
            this.containerType_ = _arg1;
            this.bulletType_ = _arg2;
            this.ownerId_ = _arg3;
            this.bulletId_ = _arg4;
            this.angle_ = Trig._1VN(_arg5);
            this.startTime_ = _arg6;
            objectId_ = _0uc(this.ownerId_, this.bulletId_);
            z_ = 0.5;
            this._1gM = ObjectLibrary._0Ri[this.containerType_];
            this.gF = this._1gM._0xK[_arg2];
            var _local9:String = ((((!((_arg7 == ""))) && ((this.gF.objectId_ == _arg8)))) ? _arg7 : this.gF.objectId_);
            this.props_ = ObjectLibrary._0MQ(_local9);
            _1QM = (this.props_._0Qf > 0);
            var _local10:_27S = ObjectLibrary.hE[this.props_.type_];
            this.texture_ = _local10.getTexture(objectId_);
            this._0VO = this._1gM.isEnemy_;
            this._in = !(this._0VO);
            this._0Q = this._1gM._26M;
            this._1o6 = ((this.gF._1y4) ? new Dictionary() : null);
            if (this.gF.size_ >= 0)
            {
                _local11 = this.gF.size_;
            } else
            {
                _local11 = ObjectLibrary._1ya(this.containerType_);
            }
            this._0OJ.setSize((8 * (_local11 / 100)));
            this.damage_ = 0;
        }

        public function _1gy(_arg1:int):void{
            this.damage_ = _arg1;
        }

        override public function addTo(_arg1:Map, _arg2:Number, _arg3:Number):Boolean{
            var _local4:Player;
            this._0Fh = _arg2;
            this._1E1 = _arg3;
            if (!super.addTo(_arg1, _arg2, _arg3))
            {
                return (false);
            }
            if (((!(this._1gM.flying_)) && (xy.sink_)))
            {
                z_ = 0.1;
            } else
            {
                _local4 = (_arg1.goDict_[this.ownerId_] as Player);
                if (((!((_local4 == null))) && ((_local4._0Km > 0))))
                {
                    z_ = (0.5 - (0.4 * (_local4._0Km / Parameters._0vd)));
                }
            }
            return (true);
        }

        public function moveTo(_arg1:Number, _arg2:Number):Boolean{
            var _local3:Square = map_.getSquare(_arg1, _arg2);
            if (_local3 == null)
            {
                return (false);
            }
            x_ = _arg1;
            y_ = _arg2;
            xy = _local3;
            return (true);
        }

        override public function removeFromMap():void{
            super.removeFromMap();
            _1ys(this.ownerId_, this.bulletId_);
            this._1o6 = null;
            _0Ep._23n(this);
        }

        private function _0Vs(_arg1:int, _arg2:Point):void{
            var _local5:Number;
            var _local6:Number;
            var _local7:Number;
            var _local8:Number;
            var _local9:Number;
            var _local10:Number;
            var _local11:Number;
            var _local12:Number;
            var _local13:Number;
            var _local14:Number;
            _arg2.x = this._0Fh;
            _arg2.y = this._1E1;
            var _local3:Number = (_arg1 * (this.gF.speed_ / 10000));
            var _local4:Number = ((((this.bulletId_ % 2))==0) ? 0 : Math.PI);
            if (this.gF._1NQ)
            {
                _local5 = (6 * Math.PI);
                _local6 = (Math.PI / 64);
                _local7 = (this.angle_ + (_local6 * Math.sin((_local4 + ((_local5 * _arg1) / 1000)))));
                _arg2.x = (_arg2.x + (_local3 * Math.cos(_local7)));
                _arg2.y = (_arg2.y + (_local3 * Math.sin(_local7)));
            } else
            {
                if (this.gF._12m)
                {
                    _local8 = (((_arg1 / this.gF.lifetime_) * 2) * Math.PI);
                    _local9 = (Math.sin(_local8) * (((this.bulletId_ % 2)) ? 1 : -1));
                    _local10 = (Math.sin((2 * _local8)) * ((((this.bulletId_ % 4))<2) ? 1 : -1));
                    _local11 = Math.sin(this.angle_);
                    _local12 = Math.cos(this.angle_);
                    _arg2.x = (_arg2.x + (((_local9 * _local12) - (_local10 * _local11)) * this.gF.E2));
                    _arg2.y = (_arg2.y + (((_local9 * _local11) + (_local10 * _local12)) * this.gF.E2));
                } else
                {
                    if (this.gF._1vX)
                    {
                        _local13 = ((this.gF.lifetime_ * (this.gF.speed_ / 10000)) / 2);
                        if (_local3 > _local13)
                        {
                            _local3 = (_local13 - (_local3 - _local13));
                        }
                    }
                    _arg2.x = (_arg2.x + (_local3 * Math.cos(this.angle_)));
                    _arg2.y = (_arg2.y + (_local3 * Math.sin(this.angle_)));
                    if (this.gF.UH != 0)
                    {
                        _local14 = (this.gF.UH * Math.sin((_local4 + ((((_arg1 / this.gF.lifetime_) * this.gF._0RU) * 2) * Math.PI))));
                        _arg2.x = (_arg2.x + (_local14 * Math.cos((this.angle_ + (Math.PI / 2)))));
                        _arg2.y = (_arg2.y + (_local14 * Math.sin((this.angle_ + (Math.PI / 2)))));
                    }
                }
            }
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local5:Vector.<uint>;
            var _local7:Player;
            var _local8:Boolean;
            var _local9:Boolean;
            var _local10:Boolean;
            var _local11:int;
            var _local12:Boolean;
            var _local3:int = (_arg1 - this.startTime_);
            if (_local3 > this.gF.lifetime_)
            {
                return (false);
            }
            var _local4:Point = this._1m1;
            this._0Vs(_local3, _local4);
            if (((!(this.moveTo(_local4.x, _local4.y))) || ((xy.tileType_ == 0xFFFF))))
            {
                if (this._0VO)
                {
                    map_.gs_.gsc_.squareHit(_arg1, this.bulletId_, this.ownerId_);
                } else
                {
                    if (xy.obj_ != null)
                    {
                        _local5 = _121.GK(this.texture_);
                        map_.addObj(new HitEffect(_local5, 100, 3, this.angle_, this.gF.speed_), _local4.x, _local4.y);
                    }
                }
                return (false);
            }
            if (((((!((xy.obj_ == null))) && (((!(xy.obj_.props_.isEnemy_)) || (!(this._in)))))) && (((xy.obj_.props_.enemyOccupySquare_) || (((!(this.gF._1CA)) && (xy.obj_.props_.occupySquare_)))))))
            {
                if (this._0VO)
                {
                    map_.gs_.gsc_.otherHit(_arg1, this.bulletId_, this.ownerId_, xy.obj_.objectId_);
                } else
                {
                    _local5 = _121.GK(this.texture_);
                    map_.addObj(new HitEffect(_local5, 100, 3, this.angle_, this.gF.speed_), _local4.x, _local4.y);
                }
                return (false);
            }
            var _local6:GameObject = this._00A(_local4.x, _local4.y);
            if (_local6 != null)
            {
                _local7 = map_.player_;
                _local8 = !((_local7 == null));
                _local9 = _local6.props_.isEnemy_;
                _local10 = ((((_local8) && (!(_local7.isPaused())))) && (((this._0VO) || (((_local9) && ((this.ownerId_ == _local7.objectId_)))))));
                if (_local10)
                {
                    _local11 = GameObject._0PH(this.damage_, _local6._1vs, this.gF._0f, _local6.condition_);
                    _local12 = false;
                    if (_local6._1VZ <= _local11)
                    {
                        _local12 = true;
                        if (_local6.props_.isEnemy_)
                        {
                            doneAction(map_.gs_, Tutorial._1Fo);
                        }
                    }
                    if (_local6 == _local7)
                    {
                        map_.gs_.gsc_.playerHit(this.bulletId_, this.ownerId_);
                        _local6.damage(this.containerType_, _local11, this.gF.effects_, false, this);
                    } else
                    {
                        if (_local6.props_.isEnemy_)
                        {
                            map_.gs_.gsc_.enemyHit(_arg1, this.bulletId_, _local6.objectId_, _local12);
                            _local6.damage(this.containerType_, _local11, this.gF.effects_, _local12, this);
                        } else
                        {
                            if (!this.gF._1y4)
                            {
                                map_.gs_.gsc_.otherHit(_arg1, this.bulletId_, this.ownerId_, _local6.objectId_);
                            }
                        }
                    }
                }
                if (this.gF._1y4)
                {
                    this._1o6[_local6] = true;
                } else
                {
                    return (false);
                }
            }
            return (true);
        }

        public function _00A(_arg1:Number, _arg2:Number):GameObject{
            var _local5:GameObject;
            var _local6:Number;
            var _local7:Number;
            var _local8:Number;
            var _local9:Number;
            var _local3:Number = Number.MAX_VALUE;
            var _local4:GameObject;
            for each (_local5 in map_.goDict_)
            {
                if (!_local5._0mQ())
                {
                    if (_local5._0Iz())
                    {
                    } else
                    {
                        if (((((this._in) && (_local5.props_.isEnemy_))) || (((this._0VO) && (_local5.props_.a3)))))
                        {
                            if (((_local5.RK) || (_local5.isPaused())))
                            {
                            } else
                            {
                                _local6 = (((_local5.x_ > _arg1)) ? (_local5.x_ - _arg1) : (_arg1 - _local5.x_));
                                _local7 = (((_local5.y_ > _arg2)) ? (_local5.y_ - _arg2) : (_arg2 - _local5.y_));
                                if ((((_local6 > _local5.radius_)) || ((_local7 > _local5.radius_))))
                                {
                                } else
                                {
                                    if (((this.gF._1y4) && (!((this._1o6[_local5] == null)))))
                                    {
                                    } else
                                    {
                                        if (_local5 == map_.player_)
                                        {
                                            return (_local5);
                                        }
                                        _local8 = Math.sqrt(((_local6 * _local6) + (_local7 * _local7)));
                                        _local9 = ((_local6 * _local6) + (_local7 * _local7));
                                        if (_local9 < _local3)
                                        {
                                            _local3 = _local9;
                                            _local4 = _local5;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return (_local4);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
            var _local6:uint;
            var _local7:uint;
            var _local8:int;
            var _local9:int;
            if (!Parameters._0pm)
            {
                return;
            }
            var _local4:BitmapData = this.texture_;
            if (Parameters._1KO != 0)
            {
                switch (Parameters._1KO)
                {
                    case 1:
                        _local6 = 16777100;
                        _local7 = 0xFFFFFF;
                        break;
                    case 2:
                        _local6 = 16777100;
                        _local7 = 16777100;
                        break;
                    case 3:
                        _local6 = 0xFF0000;
                        _local7 = 0xFF0000;
                        break;
                    case 4:
                        _local6 = 0xFF;
                        _local7 = 0xFF;
                        break;
                    case 5:
                        _local6 = 0xFFFFFF;
                        _local7 = 0xFFFFFF;
                        break;
                    case 6:
                        _local6 = 0;
                        _local7 = 0;
                        break;
                }
                _local4 = TextureRedrawer.redraw(_local4, 120, true, _local7);
            }
            var _local5:Number = (((this.props_.rotation_ == 0)) ? 0 : (_arg3 / this.props_.rotation_));
            this._011.x = x_;
            this._011.y = y_;
            this._011.z = z_;
            this._0OJ.draw(_arg1, this._011, (((this.angle_ - _arg2.angleRad_) + this.props_._1CM) + _local5), _arg2.wToS_, _arg2, _local4);
            if (this.gF.Nh)
            {
                _local8 = (((this.gF.gm)!=-1) ? this.gF.gm : 600);
                _local9 = 0;
                for (;_local9 < 3;_local9++)
                {
                    if (((!((map_ == null))) && (!((map_.player_.objectId_ == this.ownerId_)))))
                    {
                        if ((((this.gF._1uD == -1)) && (((Math.random() * 100) > this.gF._1uD)))) continue;
                    }
                    map_.addObj(new _El(100, this.gF._0y7, _local8, 0.5, _0Na._1Me(3), _0Na._1Me(3)), x_, y_);
                }
            }
        }

        override public function drawShadow(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
            if (!Parameters._0pm)
            {
                return;
            }
            var _local4:Number = (this.props_._0Qf / 400);
            var _local5:Number = (30 * _local4);
            var _local6:Number = (15 * _local4);
            this._0xz.matrix.createGradientBox((_local5 * 2), (_local6 * 2), 0, (_4M[0] - _local5), (_4M[1] - _local6));
            _arg1.push(this._0xz);
            this._0ND.data.length = 0;
            Vector.<Number>(this._0ND.data).push((_4M[0] - _local5), (_4M[1] - _local6), (_4M[0] + _local5), (_4M[1] - _local6), (_4M[0] + _local5), (_4M[1] + _local6), (_4M[0] - _local5), (_4M[1] + _local6));
            _arg1.push(this._0ND);
            _arg1.push(tu.END_FILL);
        }


    }
}//package com.company.assembleegameclient.objects

