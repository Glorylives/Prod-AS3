// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ObjectProperties

package com.company.assembleegameclient.objects{
    import flash.utils.Dictionary;
    import _ZS.0ZC;

    public class ObjectProperties {

        public var type_:int;
        public var id_:String;
        public var 1cL:String;
        public var 0Qf:int;
        public var a3:Boolean = false;
        public var isEnemy_:Boolean = false;
        public var EP:Boolean = false;
        public var 1Gr:Boolean = false;
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
        public var 9A:Boolean = false;
        public var 4:Boolean = false;
        public var kF:Number = 0;
        public var 0jq:uint = 0xFF0000;
        public var 0Mn:uint = 0;
        public var 1MX:Object = null;
        public var 0Sz:27S = null;
        public var WO:int = 100;
        public var XV:int = 100;
        public var 0iW:int = 5;
        public var 0m-:WhileMovingProperties = null;
        public var 26M:String = null;
        public var 0xK:Dictionary;
        public var 1CM:Number = 0;
        public var rotation_:Number = 0;

        public function ObjectProperties(_arg1:XML){
            var _local2:XML;
            var _local3:XML;
            var _local4:int;
            this.0xK = new Dictionary();
            super();
            if (_arg1 == null)
            {
                return;
            };
            this.type_ = int(_arg1.@type);
            this.id_ = String(_arg1.@id);
            this.1cL = this.id_;
            if (_arg1.hasOwnProperty("DisplayId"))
            {
                this.1cL = _arg1.DisplayId;
            };
            this.0Qf = ((_arg1.hasOwnProperty("ShadowSize")) ? _arg1.ShadowSize : 100);
            this.a3 = _arg1.hasOwnProperty("Player");
            this.isEnemy_ = _arg1.hasOwnProperty("Enemy");
            this.EP = _arg1.hasOwnProperty("DrawOnGround");
            if (((this.EP) || (_arg1.hasOwnProperty("DrawUnder"))))
            {
                this.1Gr = true;
            };
            this.occupySquare_ = _arg1.hasOwnProperty("OccupySquare");
            this.yk = _arg1.hasOwnProperty("FullOccupy");
            this.enemyOccupySquare_ = _arg1.hasOwnProperty("EnemyOccupySquare");
            this.static_ = _arg1.hasOwnProperty("Static");
            this.rP = _arg1.hasOwnProperty("NoMiniMap");
            this.protectFromGroundDamage_ = _arg1.hasOwnProperty("ProtectFromGroundDamage");
            this.protectFromSink_ = _arg1.hasOwnProperty("ProtectFromSink");
            this.flying_ = _arg1.hasOwnProperty("Flying");
            this.9A = _arg1.hasOwnProperty("ShowName");
            this.4 = _arg1.hasOwnProperty("DontFaceAttacks");
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
                    this.0iW = _arg1.SizeStep;
                };
            };
            this.26M = ((_arg1.hasOwnProperty("OldSound")) ? String(_arg1.OldSound) : null);
            for each (_local2 in _arg1.Projectile)
            {
                _local4 = int(_local2.@id);
                this.0xK[_local4] = new 22S(_local2);
            };
            this.1CM = ((_arg1.hasOwnProperty("AngleCorrection")) ? ((Number(_arg1.AngleCorrection) * Math.PI) / 4) : 0);
            this.rotation_ = ((_arg1.hasOwnProperty("Rotation")) ? _arg1.Rotation : 0);
            if (_arg1.hasOwnProperty("BloodProb"))
            {
                this.kF = Number(_arg1.BloodProb);
            };
            if (_arg1.hasOwnProperty("BloodColor"))
            {
                this.0jq = uint(_arg1.BloodColor);
            };
            if (_arg1.hasOwnProperty("ShadowColor"))
            {
                this.0Mn = uint(_arg1.ShadowColor);
            };
            for each (_local3 in _arg1.Sound)
            {
                if (this.1MX == null)
                {
                    this.1MX = {};
                };
                this.1MX[int(_local3.@id)] = _local3.toString();
            };
            if (_arg1.hasOwnProperty("Portrait"))
            {
                this.0Sz = new 1J1(XML(_arg1.Portrait));
            };
            if (_arg1.hasOwnProperty("WhileMoving"))
            {
                this.0m- = new WhileMovingProperties(XML(_arg1.WhileMoving));
            };
        }

        public function 0l5():void{
            var _local1:String;
            if (this.1MX == null)
            {
                return;
            };
            for each (_local1 in this.1MX)
            {
                0ZC.load(_local1);
            };
        }

        public function 02p():int{
            if (this.WO == this.XV)
            {
                return (this.WO);
            };
            var _local1:int = ((this.XV - this.WO) / this.0iW);
            return ((this.WO + (int((Math.random() * _local1)) * this.0iW)));
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

