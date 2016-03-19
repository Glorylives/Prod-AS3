// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1a.04n

package 1a{
    import 1Np.0F-;
    import flash.geom.Point;

    public class 04n extends 0F- {

        public var start_:Point;
        public var end_:Point;
        public var id_:uint;

        public function 04n(_arg1:int, _arg2:Point, _arg3:Point){
            this.start_ = _arg2;
            this.end_ = _arg3;
            this.id_ = _arg1;
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            x_ = this.start_.x;
            y_ = this.start_.y;
            var _local3 = 10000;
            var _local4:Wd = new Wd(this.id_, 1500, this.start_, this.end_);
            map_.addObj(_local4, x_, y_);
            return (false);
        }


    }
}//package 1a

