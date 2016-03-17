// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d.0fX

package com.company.assembleegameclient.engine3d{
    import flash.geom.Vector3D;

    public class 0fX {

        public static const 0eO:Vector3D = 1Q8();


        public static function QV(_arg1:Vector3D, _arg2:Number):Number{
            var _local3:Number = Math.max(0, _arg1.dotProduct(0fX.0eO));
            return ((_arg2 + ((1 - _arg2) * _local3)));
        }

        private static function 1Q8():Vector3D{
            var _local1:Vector3D = new Vector3D(1, 3, 2);
            _local1.normalize();
            return (_local1);
        }


    }
}//package com.company.assembleegameclient.engine3d

