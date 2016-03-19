// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.1JY

package _1Np{
import _1a._Y3;

import com.company.assembleegameclient.objects.GameObject;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.geom.Point;

    public class _1JY extends _Y3 {

        private var _0gJ:int;
        private var dx_:Number;
        private var dy_:Number;
        private var _1Cz:Number;
        private var _16K:Number;
        private var _04s:Number;
        private var _0l0:uint = 0;
        private var _1SP:uint = 0;
        private var _24:uint;
        private var go:GameObject;
        private var _0jN:Number = 0;
        private var Sa:Number = 0;
        private var cameraAngle:Number;
        private var _8y:Vector.<BitmapData>;

        public function _1JY(_arg1:uint, _arg2:int, _arg3:uint, _arg4:Point, _arg5:Point, _arg6:Number, _arg7:GameObject, _arg8:Vector.<BitmapData>){
            this.cameraAngle = Parameters.data_.cameraAngle;
            this.go = _arg7;
            this._04s = _arg6;
            this._8y = _arg8;
            super(_arg8[0], 0);
            this._24 = _arg8.length;
            this._0gJ = _arg2;
            this.dx_ = ((_arg5.x - _arg4.x) / this._0gJ);
            this.dy_ = ((_arg5.y - _arg4.y) / this._0gJ);
            this._1Cz = (_arg4.x - _arg7.x_);
            this._16K = (_arg4.y - _arg7.y_);
            _0r = (-(_arg6) - this.cameraAngle);
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            this._0gJ--;
            if (this._0gJ <= 0)
            {
                return (false);
            };
            this._0l0++;
            if ((this._0l0 % 2))
            {
                this._1SP++;
            };
            _0Pk = this._8y[(this._1SP % this._24)];
            this._0jN = (this._0jN + this.dx_);
            this.Sa = (this.Sa + this.dy_);
            if (Parameters.data_.cameraAngle != this.cameraAngle)
            {
                this.cameraAngle = Parameters.data_.cameraAngle;
                _0r = (-(this._04s) - this.cameraAngle);
            };
            moveTo(((this.go.x_ + this._1Cz) + this._0jN), ((this.go.y_ + this._16K) + this.Sa));
            return (true);
        }


    }
}//package 1Np

