// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.1JY

package 1Np{
    import 1a.Y3;
    import com.company.assembleegameclient.objects.GameObject;
    import __AS3__.vec.Vector;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.geom.Point;

    public class 1JY extends Y3 {

        private var 0gJ:int;
        private var dx_:Number;
        private var dy_:Number;
        private var 1Cz:Number;
        private var 16K:Number;
        private var 04s:Number;
        private var 0l0:uint = 0;
        private var 1SP:uint = 0;
        private var 24-:uint;
        private var go:GameObject;
        private var 0jN:Number = 0;
        private var Sa:Number = 0;
        private var cameraAngle:Number;
        private var 8y:Vector.<BitmapData>;

        public function 1JY(_arg1:uint, _arg2:int, _arg3:uint, _arg4:Point, _arg5:Point, _arg6:Number, _arg7:GameObject, _arg8:Vector.<BitmapData>){
            this.cameraAngle = Parameters.data_.cameraAngle;
            this.go = _arg7;
            this.04s = _arg6;
            this.8y = _arg8;
            super(_arg8[0], 0);
            this.24- = _arg8.length;
            this.0gJ = _arg2;
            this.dx_ = ((_arg5.x - _arg4.x) / this.0gJ);
            this.dy_ = ((_arg5.y - _arg4.y) / this.0gJ);
            this.1Cz = (_arg4.x - _arg7.x_);
            this.16K = (_arg4.y - _arg7.y_);
            0r = (-(_arg6) - this.cameraAngle);
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            this.0gJ--;
            if (this.0gJ <= 0)
            {
                return (false);
            };
            this.0l0++;
            if ((this.0l0 % 2))
            {
                this.1SP++;
            };
            0Pk = this.8y[(this.1SP % this.24-)];
            this.0jN = (this.0jN + this.dx_);
            this.Sa = (this.Sa + this.dy_);
            if (Parameters.data_.cameraAngle != this.cameraAngle)
            {
                this.cameraAngle = Parameters.data_.cameraAngle;
                0r = (-(this.04s) - this.cameraAngle);
            };
            moveTo(((this.go.x_ + this.1Cz) + this.0jN), ((this.go.y_ + this.16K) + this.Sa));
            return (true);
        }


    }
}//package 1Np

