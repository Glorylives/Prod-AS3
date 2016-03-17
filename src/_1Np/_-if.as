// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.if

package 1Np{
    import flash.geom.Point;
    import g0.1tk;
    import com.company.assembleegameclient.objects.GameObject;

    public class if extends 0F- {

        public var start_:Point;
        public var 1n3:1tk;
        public var 1v:Number;
        public var color_:int;

        public function if(_arg1:GameObject, _arg2:1tk, _arg3:Number, _arg4:int){
            this.start_ = new Point(_arg1.x_, _arg1.y_);
            this.1n3 = _arg2;
            this.1v = _arg3;
            this.color_ = _arg4;
        }

        override public function runNormalRendering(_arg1:int, _arg2:int):Boolean{
            var _local9:Number;
            var _local10:Point;
            var _local11:Particle;
            x_ = this.start_.x;
            y_ = this.start_.y;
            var _local3 = 200;
            var _local4:int = 100;
            var _local5:Number = (Math.PI / 3);
            var _local6:int = 7;
            var _local7:Number = Math.atan2((this.1n3.y_ - this.start_.y), (this.1n3.x_ - this.start_.x));
            var _local8:int;
            while (_local8 < _local6)
            {
                _local9 = ((_local7 - (_local5 / 2)) + ((_local8 * _local5) / _local6));
                _local10 = new Point((this.start_.x + (this.1v * Math.cos(_local9))), (this.start_.y + (this.1v * Math.sin(_local9))));
                _local11 = new Md(_local3, this.color_, _local4, this.start_, _local10);
                map_.addObj(_local11, x_, y_);
                _local8++;
            };
            return (false);
        }

        override public function runEasyRendering(_arg1:int, _arg2:int):Boolean{
            var _local9:Number;
            var _local10:Point;
            var _local11:Particle;
            x_ = this.start_.x;
            y_ = this.start_.y;
            var _local3:int = 50;
            var _local4:int = 10;
            var _local5:Number = (Math.PI / 3);
            var _local6:int = 5;
            var _local7:Number = Math.atan2((this.1n3.y_ - this.start_.y), (this.1n3.x_ - this.start_.x));
            var _local8:int;
            while (_local8 < _local6)
            {
                _local9 = ((_local7 - (_local5 / 2)) + ((_local8 * _local5) / _local6));
                _local10 = new Point((this.start_.x + (this.1v * Math.cos(_local9))), (this.start_.y + (this.1v * Math.sin(_local9))));
                _local11 = new Md(_local3, this.color_, _local4, this.start_, _local10);
                map_.addObj(_local11, x_, y_);
                _local8++;
            };
            return (false);
        }


    }
}//package 1Np

