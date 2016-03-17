// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.1C8

package com.company.assembleegameclient.map{
import com.company.assembleegameclient.util._0Na;

import flash.geom.Vector3D;
    import flash.geom.Rectangle;
    import flash.geom.PerspectiveProjection;
    import flash.geom.Matrix3D;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.objects.GameObject;

    public class _1C8 {

        public static const vH:Vector3D = new Vector3D(0, 0, 1);
        public static const VZ:Rectangle = new Rectangle(-300, -325, 600, 600);
        public static const _0EH:Rectangle = new Rectangle(-300, -450, 600, 600);
        private static const MD:Rectangle = new Rectangle(-400, -325, 800, 600);
        private static const _1xK:Rectangle = new Rectangle(-400, -275, 800, 500);

        private const _3Y:Number = 0.5;
        private const _0I:int = 10000;

        public var x_:Number;
        public var y_:Number;
        public var z_:Number;
        public var angleRad_:Number;
        public var _0KH:Rectangle;
        public var _1ic:PerspectiveProjection;
        public var maxDist_:Number;
        public var _03g:Number;
        public var _1kT:Boolean = false;
        public var wToS_:Matrix3D;
        public var _1Mj:Matrix3D;
        public var _1Ty:Matrix3D;
        private var _1Xz:Matrix3D;
        private var _0OJ:Vector3D;
        private var _2p:Vector3D;
        private var _09d:Vector3D;
        private var _1vU:Vector3D;
        private var _1XV:Boolean = false;
        private var _0rV:Number = 0;
        private var _0UF:Vector.<Number>;

        public function _1C8(){
            this._1ic = new PerspectiveProjection();
            this.wToS_ = new Matrix3D();
            this._1Mj = new Matrix3D();
            this._1Ty = new Matrix3D();
            this._1Xz = new Matrix3D();
            this._0OJ = new Vector3D();
            this._2p = new Vector3D();
            this._09d = new Vector3D();
            this._1vU = new Vector3D();
            this._0UF = new Vector.<Number>(16, true);
            super();
            this._1ic.focalLength = 3;
            this._1ic.fieldOfView = 48;
            this._1Xz.appendScale(50, 50, 50);
            this._2p.x = 0;
            this._2p.y = 0;
            this._2p.z = -1;
        }

        public function configureCamera(_arg1:GameObject, _arg2:Boolean):void{
            var _local3:Rectangle = ((Parameters.data_.centerOnPlayer) ? VZ : _0EH);
            if (Parameters._1Wc)
            {
                if (!Parameters._271)
                {
                    _local3 = MD;
                } else
                {
                    _local3 = _1xK;
                };
            };
            var _local4:Number = Parameters.data_.cameraAngle;
            this.configure(_arg1.x_, _arg1.y_, 12, _local4, _local3);
            this._1kT = _arg2;
        }

        public function startJitter():void{
            this._1XV = true;
            this._0rV = 0;
        }

        public function update(_arg1:Number):void{
            if (((this._1XV) && ((this._0rV < this._3Y))))
            {
                this._0rV = (this._0rV + ((_arg1 * this._3Y) / this._0I));
                if (this._0rV > this._3Y)
                {
                    this._0rV = this._3Y;
                };
            };
        }

        public function configure(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number, _arg5:Rectangle):void{
            if (this._1XV)
            {
                _arg1 = (_arg1 + _0Na._1Me(this._0rV));
                _arg2 = (_arg2 + _0Na._1Me(this._0rV));
            };
            this.x_ = _arg1;
            this.y_ = _arg2;
            this.z_ = _arg3;
            this.angleRad_ = _arg4;
            this._0KH = _arg5;
            this._0OJ.x = _arg1;
            this._0OJ.y = _arg2;
            this._0OJ.z = _arg3;
            this._1vU.x = Math.cos(this.angleRad_);
            this._1vU.y = Math.sin(this.angleRad_);
            this._1vU.z = 0;
            this._09d.x = Math.cos((this.angleRad_ + (Math.PI / 2)));
            this._09d.y = Math.sin((this.angleRad_ + (Math.PI / 2)));
            this._09d.z = 0;
            this._0UF[0] = this._1vU.x;
            this._0UF[1] = this._09d.x;
            this._0UF[2] = this._2p.x;
            this._0UF[3] = 0;
            this._0UF[4] = this._1vU.y;
            this._0UF[5] = this._09d.y;
            this._0UF[6] = this._2p.y;
            this._0UF[7] = 0;
            this._0UF[8] = this._1vU.z;
            this._0UF[9] = -1;
            this._0UF[10] = this._2p.z;
            this._0UF[11] = 0;
            this._0UF[12] = -(this._0OJ.dotProduct(this._1vU));
            this._0UF[13] = -(this._0OJ.dotProduct(this._09d));
            this._0UF[14] = -(this._0OJ.dotProduct(this._2p));
            this._0UF[15] = 1;
            this._1Mj.rawData = this._0UF;
            this._1Ty = this._1Xz;
            this.wToS_.identity();
            this.wToS_.append(this._1Mj);
            this.wToS_.append(this._1Ty);
            var _local6:Number = (this._0KH.width / (2 * 50));
            var _local7:Number = (this._0KH.height / (2 * 50));
            this.maxDist_ = (Math.sqrt(((_local6 * _local6) + (_local7 * _local7))) + 1);
            this._03g = (this.maxDist_ * this.maxDist_);
        }


    }
}//package com.company.assembleegameclient.map

