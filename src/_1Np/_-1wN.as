// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.1wN

package 1Np{
    import flash.geom.Point;
    import com.company.assembleegameclient.objects.GameObject;

    public class 1wN extends 0F- {

        public var start_:Point;
        public var tQ:Number;
        public var color_:int;

        public function 1wN(_arg1:GameObject, _arg2:Number, _arg3:int){
            this.start_ = new Point(_arg1.x_, _arg1.y_);
            this.tQ = _arg2;
            this.color_ = _arg3;
        }

        override public function runNormalRendering(_arg1:int, _arg2:int):Boolean{
            var _local7:Number;
            var _local8:Point;
            var _local9:Particle;
            x_ = this.start_.x;
            y_ = this.start_.y;
            var _local3 = 200;
            var _local4 = 200;
            var _local5:int = (4 + (this.tQ * 2));
            var _local6:int;
            while (_local6 < _local5)
            {
                _local7 = (((_local6 * 2) * Math.PI) / _local5);
                _local8 = new Point((this.start_.x + (this.tQ * Math.cos(_local7))), (this.start_.y + (this.tQ * Math.sin(_local7))));
                _local9 = new Md(_local3, this.color_, _local4, this.start_, _local8);
                map_.addObj(_local9, x_, y_);
                _local6++;
            }
            return (false);
        }

        override public function runEasyRendering(_arg1:int, _arg2:int):Boolean{
            var _local7:Number;
            var _local8:Point;
            var _local9:Particle;
            x_ = this.start_.x;
            y_ = this.start_.y;
            var _local3:int = 10;
            var _local4 = 200;
            var _local5:int = (0 + (this.tQ * 2));
            var _local6:int;
            while (_local6 < _local5)
            {
                _local7 = (((_local6 * 2) * Math.PI) / _local5);
                _local8 = new Point((this.start_.x + (this.tQ * Math.cos(_local7))), (this.start_.y + (this.tQ * Math.sin(_local7))));
                _local9 = new Md(_local3, this.color_, _local4, this.start_, _local8);
                map_.addObj(_local9, x_, y_);
                _local6++;
            }
            return (false);
        }


    }
}//package 1Np

