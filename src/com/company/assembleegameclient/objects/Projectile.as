// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Projectile

package com.company.assembleegameclient.objects{
    import flash.utils.Dictionary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.engine3d.wq;
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
    import com.company.assembleegameclient.util.0Ep;
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.util.121;
    import 1Np.HitEffect;
    import com.company.assembleegameclient.tutorial.doneAction;
    import com.company.assembleegameclient.tutorial.Tutorial;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import 1Np.El;
    import com.company.assembleegameclient.util.0Na;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map.1C8;
    import __AS3__.vec.*;

    public class Projectile extends BasicObject {

        private static var 01t:Dictionary = new Dictionary();

        public var props_:ObjectProperties;
        public var 1gM:ObjectProperties;
        public var gF:22S;
        public var texture_:BitmapData;
        public var bulletId_:uint;
        public var ownerId_:int;
        public var containerType_:int;
        public var bulletType_:uint;
        public var in:Boolean;
        public var 0VO:Boolean;
        public var damage_:int;
        public var 0Q:String;
        public var 0Fh:Number;
        public var 1E1:Number;
        public var startTime_:int;
        public var angle_:Number = 0;
        public var 1o6:Dictionary;
        public var 0OJ:wq;
        private var 1m1:Point;
        private var 011:Vector3D;
        protected var 0xz:GraphicsGradientFill;
        protected var 0ND:GraphicsPath;

        public function Projectile(){
            this.0OJ = new wq(100);
            this.1m1 = new Point();
            this.011 = new Vector3D();
            this.0xz = new GraphicsGradientFill(GradientType.RADIAL, [0, 0], [0.5, 0], null, new Matrix());
            this.0ND = new GraphicsPath(_tu.0xS, new Vector.<Number>());
            super();
        }

        public static function 248(_arg1:int, _arg2:uint):int{
            return (01t[((_arg2 << 24) | _arg1)]);
        }

        public static function 0uc(_arg1:int, _arg2:uint):int{
            var _local3:int = 0Zh();
            01t[((_arg2 << 24) | _arg1)] = _local3;
            return (_local3);
        }

        public static function 1ys(_arg1:int, _arg2:uint):void{
            delete 01t[((_arg2 << 24) | _arg1)];
        }

        public static function dispose():void{
            01t = new Dictionary();
        }


        public function reset(_arg1:int, _arg2:int, _arg3:int, _arg4:int, _arg5:Number, _arg6:int, _arg7:String="", _arg8:String=""):void{
            var _local11:Number;
            clear();
            this.containerType_ = _arg1;
            this.bulletType_ = _arg2;
            this.ownerId_ = _arg3;
            this.bulletId_ = _arg4;
            this.angle_ = Trig.1VN(_arg5);
            this.startTime_ = _arg6;
            objectId_ = 0uc(this.ownerId_, this.bulletId_);
            z_ = 0.5;
            this.1gM = ObjectLibrary.0Ri[this.containerType_];
            this.gF = this.1gM.0xK[_arg2];
            var _local9:String = ((((!((_arg7 == ""))) && ((this.gF.objectId_ == _arg8)))) ? _arg7 : this.gF.objectId_);
            this.props_ = ObjectLibrary.0MQ(_local9);
            1QM = (this.props_.0Qf > 0);
            var _local10:27S = ObjectLibrary.hE[this.props_.type_];
            this.texture_ = _local10.getTexture(objectId_);
            this.0VO = this.1gM.isEnemy_;
            this.in = !(this.0VO);
            this.0Q = this.1gM.26M;
            this.1o6 = ((this.gF.1y4) ? new Dictionary() : null);
            if (this.gF.size_ >= 0)
            {
                _local11 = this.gF.size_;
            } else
            {
                _local11 = ObjectLibrary.1ya(this.containerType_);
            };
            this.0OJ.setSize((8 * (_local11 / 100)));
            this.damage_ = 0;
        }

        public function 1gy(_arg1:int):void{
            this.damage_ = _arg1;
        }

        override public function addTo(_arg1:Map, _arg2:Number, _arg3:Number):Boolean{
            var _local4:Player;
            this.0Fh = _arg2;
            this.1E1 = _arg3;
            if (!super.addTo(_arg1, _arg2, _arg3))
            {
                return (false);
            };
            if (((!(this.1gM.flying_)) && (xy.sink_)))
            {
                z_ = 0.1;
            } else
            {
                _local4 = (_arg1.goDict_[this.ownerId_] as Player);
                if (((!((_local4 == null))) && ((_local4.0Km > 0))))
                {
                    z_ = (0.5 - (0.4 * (_local4.0Km / Parameters.0vd)));
                };
            };
            return (true);
        }

        public function moveTo(_arg1:Number, _arg2:Number):Boolean{
            var _local3:Square = map_.getSquare(_arg1, _arg2);
            if (_local3 == null)
            {
                return (false);
            };
            x_ = _arg1;
            y_ = _arg2;
            xy = _local3;
            return (true);
        }

        override public function removeFromMap():void{
            super.removeFromMap();
            1ys(this.ownerId_, this.bulletId_);
            this.1o6 = null;
            0Ep.23n(this);
        }

        private function 0Vs(_arg1:int, _arg2:Point):void{
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
            _arg2.x = this.0Fh;
            _arg2.y = this.1E1;
            var _local3:Number = (_arg1 * (this.gF.speed_ / 10000));
            var _local4:Number = ((((this.bulletId_ % 2))==0) ? 0 : Math.PI);
            if (this.gF.1NQ)
            {
                _local5 = (6 * Math.PI);
                _local6 = (Math.PI / 64);
                _local7 = (this.angle_ + (_local6 * Math.sin((_local4 + ((_local5 * _arg1) / 1000)))));
                _arg2.x = (_arg2.x + (_local3 * Math.cos(_local7)));
                _arg2.y = (_arg2.y + (_local3 * Math.sin(_local7)));
            } else
            {
                if (this.gF.12m)
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
                    if (this.gF.1vX)
                    {
                        _local13 = ((this.gF.lifetime_ * (this.gF.speed_ / 10000)) / 2);
                        if (_local3 > _local13)
                        {
                            _local3 = (_local13 - (_local3 - _local13));
                        };
                    };
                    _arg2.x = (_arg2.x + (_local3 * Math.cos(this.angle_)));
                    _arg2.y = (_arg2.y + (_local3 * Math.sin(this.angle_)));
                    if (this.gF.UH != 0)
                    {
                        _local14 = (this.gF.UH * Math.sin((_local4 + ((((_arg1 / this.gF.lifetime_) * this.gF.0RU) * 2) * Math.PI))));
                        _arg2.x = (_arg2.x + (_local14 * Math.cos((this.angle_ + (Math.PI / 2)))));
                        _arg2.y = (_arg2.y + (_local14 * Math.sin((this.angle_ + (Math.PI / 2)))));
                    };
                };
            };
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
            };
            var _local4:Point = this.1m1;
            this.0Vs(_local3, _local4);
            if (((!(this.moveTo(_local4.x, _local4.y))) || ((xy.tileType_ == 0xFFFF))))
            {
                if (this.0VO)
                {
                    map_.gs_.gsc_.squareHit(_arg1, this.bulletId_, this.ownerId_);
                } else
                {
                    if (xy.obj_ != null)
                    {
                        _local5 = 121.GK(this.texture_);
                        map_.addObj(new HitEffect(_local5, 100, 3, this.angle_, this.gF.speed_), _local4.x, _local4.y);
                    };
                };
                return (false);
            };
            if (((((!((xy.obj_ == null))) && (((!(xy.obj_.props_.isEnemy_)) || (!(this.in)))))) && (((xy.obj_.props_.enemyOccupySquare_) || (((!(this.gF.1CA)) && (xy.obj_.props_.occupySquare_)))))))
            {
                if (this.0VO)
                {
                    map_.gs_.gsc_.otherHit(_arg1, this.bulletId_, this.ownerId_, xy.obj_.objectId_);
                } else
                {
                    _local5 = 121.GK(this.texture_);
                    map_.addObj(new HitEffect(_local5, 100, 3, this.angle_, this.gF.speed_), _local4.x, _local4.y);
                };
                return (false);
            };
            var _local6:GameObject = this.00A(_local4.x, _local4.y);
            if (_local6 != null)
            {
                _local7 = map_.player_;
                _local8 = !((_local7 == null));
                _local9 = _local6.props_.isEnemy_;
                _local10 = ((((_local8) && (!(_local7.isPaused())))) && (((this.0VO) || (((_local9) && ((this.ownerId_ == _local7.objectId_)))))));
                if (_local10)
                {
                    _local11 = GameObject.0PH(this.damage_, _local6.1vs, this.gF.0f-, _local6.condition_);
                    _local12 = false;
                    if (_local6.1VZ <= _local11)
                    {
                        _local12 = true;
                        if (_local6.props_.isEnemy_)
                        {
                            doneAction(map_.gs_, Tutorial.1Fo);
                        };
                    };
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
                            if (!this.gF.1y4)
                            {
                                map_.gs_.gsc_.otherHit(_arg1, this.bulletId_, this.ownerId_, _local6.objectId_);
                            };
                        };
                    };
                };
                if (this.gF.1y4)
                {
                    this.1o6[_local6] = true;
                } else
                {
                    return (false);
                };
            };
            return (true);
        }

        public function 00A(_arg1:Number, _arg2:Number):GameObject{
            var _local5:GameObject;
            var _local6:Number;
            var _local7:Number;
            var _local8:Number;
            var _local9:Number;
            var _local3:Number = Number.MAX_VALUE;
            var _local4:GameObject;
            for each (_local5 in map_.goDict_)
            {
                if (!_local5.0mQ())
                {
                    if (_local5.0Iz())
                    {
                    } else
                    {
                        if (((((this.in) && (_local5.props_.isEnemy_))) || (((this.0VO) && (_local5.props_.a3)))))
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
                                    if (((this.gF.1y4) && (!((this.1o6[_local5] == null)))))
                                    {
                                    } else
                                    {
                                        if (_local5 == map_.player_)
                                        {
                                            return (_local5);
                                        };
                                        _local8 = Math.sqrt(((_local6 * _local6) + (_local7 * _local7)));
                                        _local9 = ((_local6 * _local6) + (_local7 * _local7));
                                        if (_local9 < _local3)
                                        {
                                            _local3 = _local9;
                                            _local4 = _local5;
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
            return (_local4);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            var _local6:uint;
            var _local7:uint;
            var _local8:int;
            var _local9:int;
            if (!Parameters.0pm)
            {
                return;
            };
            var _local4:BitmapData = this.texture_;
            if (Parameters.1KO != 0)
            {
                switch (Parameters.1KO)
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
                };
                _local4 = TextureRedrawer.redraw(_local4, 120, true, _local7);
            };
            var _local5:Number = (((this.props_.rotation_ == 0)) ? 0 : (_arg3 / this.props_.rotation_));
            this.011.x = x_;
            this.011.y = y_;
            this.011.z = z_;
            this.0OJ.draw(_arg1, this.011, (((this.angle_ - _arg2.angleRad_) + this.props_.1CM) + _local5), _arg2.wToS_, _arg2, _local4);
            if (this.gF.Nh)
            {
                _local8 = (((this.gF.gm)!=-1) ? this.gF.gm : 600);
                _local9 = 0;
                for (;_local9 < 3;_local9++)
                {
                    if (((!((map_ == null))) && (!((map_.player_.objectId_ == this.ownerId_)))))
                    {
                        if ((((this.gF.1uD == -1)) && (((Math.random() * 100) > this.gF.1uD)))) continue;
                    };
                    map_.addObj(new El(100, this.gF.0y7, _local8, 0.5, 0Na.1Me(3), 0Na.1Me(3)), x_, y_);
                };
            };
        }

        override public function drawShadow(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            if (!Parameters.0pm)
            {
                return;
            };
            var _local4:Number = (this.props_.0Qf / 400);
            var _local5:Number = (30 * _local4);
            var _local6:Number = (15 * _local4);
            this.0xz.matrix.createGradientBox((_local5 * 2), (_local6 * 2), 0, (4M[0] - _local5), (4M[1] - _local6));
            _arg1.push(this.0xz);
            this.0ND.data.length = 0;
            Vector.<Number>(this.0ND.data).push((4M[0] - _local5), (4M[1] - _local6), (4M[0] + _local5), (4M[1] - _local6), (4M[0] + _local5), (4M[1] + _local6), (4M[0] - _local5), (4M[1] + _local6));
            _arg1.push(this.0ND);
            _arg1.push(tu.END_FILL);
        }


    }
}//package com.company.assembleegameclient.objects

