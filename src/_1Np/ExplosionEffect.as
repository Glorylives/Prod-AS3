﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.ExplosionEffect

package _1Np{

    public class ExplosionEffect extends _0F {

        public var xq:Vector.<uint>;
        public var _0hC:int;

        public function ExplosionEffect(_arg1:Vector.<uint>, _arg2:int, _arg3:int){
            this.xq = _arg1;
            size_ = _arg2;
            if (ExplosionParticle.total_ >= 250)
            {
                this._0hC = 2;
            } else
            {
                if (ExplosionParticle.total_ >= 150)
                {
                    this._0hC = 4;
                } else
                {
                    if (ExplosionParticle.total_ >= 90)
                    {
                        this._0hC = 12;
                    } else
                    {
                        this._0hC = _arg3;
                    }
                }
            }
        }

        override public function runNormalRendering(_arg1:int, _arg2:int):Boolean{
            var _local4:uint;
            var _local5:Particle;
            if (this.xq.length == 0)
            {
                return (false);
            }
            if (ExplosionParticle.total_ > 400)
            {
                return (false);
            }
            var _local3:int;
            while (_local3 < this._0hC)
            {
                _local4 = this.xq[int((this.xq.length * Math.random()))];
                _local5 = new ExplosionParticle(_local4, 0.5, size_, (200 + (Math.random() * 100)), (Math.random() - 0.5), (Math.random() - 0.5), 0);
                map_.addObj(_local5, x_, y_);
                _local3++;
            }
            return (false);
        }

        override public function runEasyRendering(_arg1:int, _arg2:int):Boolean{
            var _local4:uint;
            var _local5:Particle;
            if (this.xq.length == 0)
            {
                return (false);
            }
            if (ExplosionParticle.total_ > 400)
            {
                return (false);
            }
            this._0hC = 2;
            var _local3:int;
            while (_local3 < this._0hC)
            {
                _local4 = this.xq[int((this.xq.length * Math.random()))];
                _local5 = new ExplosionParticle(_local4, 0.5, size_, (50 + (Math.random() * 100)), (Math.random() - 0.5), (Math.random() - 0.5), 0);
                map_.addObj(_local5, x_, y_);
                _local3++;
            }
            return (false);
        }


    }
}//package 1Np

import _1Np.Particle;

import flash.geom.Vector3D;

class ExplosionParticle extends Particle {

    public static var total_:int = 0;

    public var lifetime_:int;
    public var timeLeft_:int;
    protected var moveVec_:Vector3D;
    private var deleted:Boolean = false;

    public function ExplosionParticle(_arg1:uint, _arg2:Number, _arg3:int, _arg4:int, _arg5:Number, _arg6:Number, _arg7:Number){
        this.moveVec_ = new Vector3D();
        super(_arg1, _arg2, _arg3);
        this.timeLeft_ = (this.lifetime_ = _arg4);
        this.moveVec_.x = _arg5;
        this.moveVec_.y = _arg6;
        this.moveVec_.z = _arg7;
        total_++;
    }

    override public function update(_arg1:int, _arg2:int):Boolean{
        this.timeLeft_ = (this.timeLeft_ - _arg2);
        if (this.timeLeft_ <= 0)
        {
            if (!this.deleted)
            {
                total_--;
                this.deleted = true;
            }
            return (false);
        }
        x_ = (x_ + ((this.moveVec_.x * _arg2) * 0.008));
        y_ = (y_ + ((this.moveVec_.y * _arg2) * 0.008));
        z_ = (z_ + ((this.moveVec_.z * _arg2) * 0.008));
        return (true);
    }


}

