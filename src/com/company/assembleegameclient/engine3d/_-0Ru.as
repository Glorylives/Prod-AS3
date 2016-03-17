// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d.0Ru

package com.company.assembleegameclient.engine3d{
    import flash.geom.Vector3D;
    import __AS3__.vec.Vector;

    public class 0Ru {

        public static const NONE:int = 0;
        public static const 1az:int = 1;
        public static const 0yz:int = 2;
        public static const 1oQ:int = 3;

        public var 1tU:Vector3D;
        public var 01p:Number;

        public function 0Ru(_arg1:Vector3D=null, _arg2:Vector3D=null, _arg3:Vector3D=null){
            if (((((!((_arg1 == null))) && (!((_arg2 == null))))) && (!((_arg3 == null)))))
            {
                this.1tU = new Vector3D();
                Dw(_arg1, _arg2, _arg3, this.1tU);
                this.01p = -(this.1tU.dotProduct(_arg1));
            };
        }

        public static function Dw(_arg1:Vector3D, _arg2:Vector3D, _arg3:Vector3D, _arg4:Vector3D):void{
            var _local5:Number = (_arg2.x - _arg1.x);
            var _local6:Number = (_arg2.y - _arg1.y);
            var _local7:Number = (_arg2.z - _arg1.z);
            var _local8:Number = (_arg3.x - _arg1.x);
            var _local9:Number = (_arg3.y - _arg1.y);
            var _local10:Number = (_arg3.z - _arg1.z);
            _arg4.x = ((_local6 * _local10) - (_local7 * _local9));
            _arg4.y = ((_local7 * _local8) - (_local5 * _local10));
            _arg4.z = ((_local5 * _local9) - (_local6 * _local8));
            _arg4.normalize();
        }

        public static function 0x0(_arg1:Vector.<Number>, _arg2:Vector3D):void{
            var _local3:Number = (_arg1[3] - _arg1[0]);
            var _local4:Number = (_arg1[4] - _arg1[1]);
            var _local5:Number = (_arg1[5] - _arg1[2]);
            var _local6:Number = (_arg1[6] - _arg1[0]);
            var _local7:Number = (_arg1[7] - _arg1[1]);
            var _local8:Number = (_arg1[8] - _arg1[2]);
            _arg2.x = ((_local4 * _local8) - (_local5 * _local7));
            _arg2.y = ((_local5 * _local6) - (_local3 * _local8));
            _arg2.z = ((_local3 * _local7) - (_local4 * _local6));
            _arg2.normalize();
        }


        public function 0is(_arg1:Vector3D):int{
            var _local2:Number = (this.1tU.dotProduct(_arg1) + this.01p);
            if (_local2 > 0.001)
            {
                return (1az);
            };
            if (_local2 < -0.001)
            {
                return (0yz);
            };
            return (1oQ);
        }

        public function 1E2(_arg1:Line3D):Number{
            var _local2:Number = (((-(this.01p) - (this.1tU.x * _arg1.v0_.x)) - (this.1tU.y * _arg1.v0_.y)) - (this.1tU.z * _arg1.v0_.z));
            var _local3:Number = (((this.1tU.x * (_arg1.v1_.x - _arg1.v0_.x)) + (this.1tU.y * (_arg1.v1_.y - _arg1.v0_.y))) + (this.1tU.z * (_arg1.v1_.z - _arg1.v0_.z)));
            if (_local3 == 0)
            {
                return (NaN);
            };
            return ((_local2 / _local3));
        }

        public function 1vJ(_arg1:Number, _arg2:Number):Number{
            return ((-(((this.01p + (this.1tU.x * _arg1)) + (this.1tU.y * _arg2))) / this.1tU.z));
        }

        public function toString():String{
            return ((((("Plane(n = " + this.1tU) + ", d = ") + this.01p) + ")"));
        }


    }
}//package com.company.assembleegameclient.engine3d

