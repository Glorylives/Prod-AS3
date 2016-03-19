// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.22S

package com.company.assembleegameclient.objects{
    import flash.utils.Dictionary;
    import com.company.assembleegameclient.util.ConditionEffect;
    import com.company.assembleegameclient.util.*;

    public class _22S {

        public var bulletType_:int;
        public var objectId_:String;
        public var lifetime_:int;
        public var speed_:int;
        public var size_:int;
        public var minDamage_:int;
        public var maxDamage_:int;
        public var effects_:Vector.<uint> = null;
        public var _1y4:Boolean;
        public var _1CA:Boolean;
        public var _0f:Boolean;
        public var Nh:Boolean;
        public var _1uD:int = -1;
        public var gm:int = -1;
        public var _0y7:int = 0xFF00FF;
        public var _1NQ:Boolean;
        public var _12m:Boolean;
        public var _1vX:Boolean;
        public var UH:Number;
        public var _0RU:Number;
        public var E2:Number;
        public var _0b6:Dictionary;

        public function _22S(_arg1:XML){
            var _local2:XML;
            super();
            this.bulletType_ = int(_arg1.@id);
            this.objectId_ = _arg1.ObjectId;
            this.lifetime_ = int(_arg1.LifetimeMS);
            this.speed_ = int(_arg1.Speed);
            this.size_ = ((_arg1.hasOwnProperty("Size")) ? Number(_arg1.Size) : -1);
            if (_arg1.hasOwnProperty("Damage"))
            {
                this.minDamage_ = (this.maxDamage_ = int(_arg1.Damage));
            } else
            {
                this.minDamage_ = int(_arg1.MinDamage);
                this.maxDamage_ = int(_arg1.MaxDamage);
            }
            for each (_local2 in _arg1.ConditionEffect)
            {
                if (this.effects_ == null)
                {
                    this.effects_ = new Vector.<uint>();
                }
                this.effects_.push(ConditionEffect._1WI(String(_local2)));
                if (_local2.attribute("target") == "1")
                {
                    if (this._0b6 == null)
                    {
                        this._0b6 = new Dictionary();
                    }
                    this._0b6[ConditionEffect._1WI(String(_local2))] = true;
                }
            }
            this._1y4 = _arg1.hasOwnProperty("MultiHit");
            this._1CA = _arg1.hasOwnProperty("PassesCover");
            this._0f = _arg1.hasOwnProperty("ArmorPiercing");
            this.Nh = _arg1.hasOwnProperty("ParticleTrail");
            if (_arg1.ParticleTrail.hasOwnProperty("@intensity"))
            {
                this._1uD = (Number(_arg1.ParticleTrail.@intensity) * 100);
            }
            if (_arg1.ParticleTrail.hasOwnProperty("@lifetimeMS"))
            {
                this.gm = Number(_arg1.ParticleTrail.@lifetimeMS);
            }
            this._0y7 = ((this.Nh) ? Number(_arg1.ParticleTrail) : Number(0xFF00FF));
            if (this._0y7 == 0)
            {
                this._0y7 = 0xFF00FF;
            }
            this._1NQ = _arg1.hasOwnProperty("Wavy");
            this._12m = _arg1.hasOwnProperty("Parametric");
            this._1vX = _arg1.hasOwnProperty("Boomerang");
            this.UH = ((_arg1.hasOwnProperty("Amplitude")) ? Number(_arg1.Amplitude) : 0);
            this._0RU = ((_arg1.hasOwnProperty("Frequency")) ? Number(_arg1.Frequency) : 1);
            this.E2 = ((_arg1.hasOwnProperty("Magnitude")) ? Number(_arg1.Magnitude) : 3);
        }

    }
}//package com.company.assembleegameclient.objects

