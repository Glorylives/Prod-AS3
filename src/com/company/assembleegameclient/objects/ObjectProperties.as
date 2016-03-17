// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ObjectProperties

package com.company.assembleegameclient.objects{
import _ZS._0ZC;

import flash.utils.Dictionary;

    public class ObjectProperties {

        public var type_:int;
        public var id_:String;
        public var _1cL:String;
        public var _0Qf:int;
        public var a3:Boolean = false;
        public var isEnemy_:Boolean = false;
        public var EP:Boolean = false;
        public var _1Gr:Boolean = false;
        public var occupySquare_:Boolean = false;
        public var yk:Boolean = false;
        public var enemyOccupySquare_:Boolean = false;
        public var static_:Boolean = false;
        public var rP:Boolean = false;
        public var protectFromGroundDamage_:Boolean = false;
        public var protectFromSink_:Boolean = false;
        public var z_:Number = 0;
        public var flying_:Boolean = false;
        public var color_:uint = 0xFFFFFF;
        public var _9A:Boolean = false;
        public var _4:Boolean = false;
        public var kF:Number = 0;
        public var _0jq:uint = 0xFF0000;
        public var _0Mn:uint = 0;
        public var _1MX:Object = null;
        public var _0Sz:_27S = null;
        public var WO:int = 100;
        public var XV:int = 100;
        public var _0iW:int = 5;
        public var _0m:WhileMovingProperties = null;
        public var _26M:String = null;
        public var _0xK:Dictionary;
        public var _1CM:Number = 0;
        public var rotation_:Number = 0;

        public function ObjectProperties(_arg1:XML){
            var _local2:XML;
            var _local3:XML;
            var _local4:int;
            this._0xK = new Dictionary();
            super();
            if (_arg1 == null)
            {
                return;
            };
            this.type_ = int(_arg1.@type);
            this.id_ = String(_arg1.@id);
            this._1cL = this.id_;
            if (_arg1.hasOwnProperty("DisplayId"))
            {
                this._1cL = _arg1.DisplayId;
            };
            this._0Qf = ((_arg1.hasOwnProperty("ShadowSize")) ? _arg1.ShadowSize : 100);
            this.a3 = _arg1.hasOwnProperty("Player");
            this.isEnemy_ = _arg1.hasOwnProperty("Enemy");
            this.EP = _arg1.hasOwnProperty("DrawOnGround");
            if (((this.EP) || (_arg1.hasOwnProperty("DrawUnder"))))
            {
                this._1Gr = true;
            };
            this.occupySquare_ = _arg1.hasOwnProperty("OccupySquare");
            this.yk = _arg1.hasOwnProperty("FullOccupy");
            this.enemyOccupySquare_ = _arg1.hasOwnProperty("EnemyOccupySquare");
            this.static_ = _arg1.hasOwnProperty("Static");
            this.rP = _arg1.hasOwnProperty("NoMiniMap");
            this.protectFromGroundDamage_ = _arg1.hasOwnProperty("ProtectFromGroundDamage");
            this.protectFromSink_ = _arg1.hasOwnProperty("ProtectFromSink");
            this.flying_ = _arg1.hasOwnProperty("Flying");
            this._9A = _arg1.hasOwnProperty("ShowName");
            this._4 = _arg1.hasOwnProperty("DontFaceAttacks");
            if (_arg1.hasOwnProperty("Z"))
            {
                this.z_ = Number(_arg1.Z);
            };
            if (_arg1.hasOwnProperty("Color"))
            {
                this.color_ = uint(_arg1.Color);
            };
            if (_arg1.hasOwnProperty("Size"))
            {
                this.WO = (this.XV = _arg1.Size);
            } else
            {
                if (_arg1.hasOwnProperty("MinSize"))
                {
                    this.WO = _arg1.MinSize;
                };
                if (_arg1.hasOwnProperty("MaxSize"))
                {
                    this.XV = _arg1.MaxSize;
                };
                if (_arg1.hasOwnProperty("SizeStep"))
                {
                    this._0iW = _arg1.SizeStep;
                };
            };
            this._26M = ((_arg1.hasOwnProperty("OldSound")) ? String(_arg1.OldSound) : null);
            for each (_local2 in _arg1.Projectile)
            {
                _local4 = int(_local2.@id);
                this._0xK[_local4] = new _22S(_local2);
            };
            this._1CM = ((_arg1.hasOwnProperty("AngleCorrection")) ? ((Number(_arg1.AngleCorrection) * Math.PI) / 4) : 0);
            this.rotation_ = ((_arg1.hasOwnProperty("Rotation")) ? _arg1.Rotation : 0);
            if (_arg1.hasOwnProperty("BloodProb"))
            {
                this.kF = Number(_arg1.BloodProb);
            };
            if (_arg1.hasOwnProperty("BloodColor"))
            {
                this._0jq = uint(_arg1.BloodColor);
            };
            if (_arg1.hasOwnProperty("ShadowColor"))
            {
                this._0Mn = uint(_arg1.ShadowColor);
            };
            for each (_local3 in _arg1.Sound)
            {
                if (this._1MX == null)
                {
                    this._1MX = {};
                };
                this._1MX[int(_local3.@id)] = _local3.toString();
            };
            if (_arg1.hasOwnProperty("Portrait"))
            {
                this._0Sz = new _1J1(XML(_arg1.Portrait));
            };
            if (_arg1.hasOwnProperty("WhileMoving"))
            {
                this._0m = new WhileMovingProperties(XML(_arg1.WhileMoving));
            };
        }

        public function _0l5():void{
            var _local1:String;
            if (this._1MX == null)
            {
                return;
            };
            for each (_local1 in this._1MX)
            {
                _0ZC.load(_local1);
            };
        }

        public function _02p():int{
            if (this.WO == this.XV)
            {
                return (this.WO);
            };
            var _local1:int = ((this.XV - this.WO) / this._0iW);
            return ((this.WO + (int((Math.random() * _local1)) * this._0iW)));
        }


    }
}//package com.company.assembleegameclient.objects

class WhileMovingProperties {

    public var z_:Number = 0;
    public var flying_:Boolean = false;

    public function WhileMovingProperties(_arg1:XML){
        if (_arg1.hasOwnProperty("Z"))
        {
            this.z_ = Number(_arg1.Z);
        };
        this.flying_ = _arg1.hasOwnProperty("Flying");
    }

}

