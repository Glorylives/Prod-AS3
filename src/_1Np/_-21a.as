﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.21a

package 1Np{
    import com.company.assembleegameclient.objects.GameObject;
    import com.company.assembleegameclient.util.0Na;

    public class 21a extends 0F- {

        public var go_:GameObject;
        public var props:lW;
        public var color_:int;
        public var rate:Number;
        public var type:String;

        public function 21a(_arg1:GameObject, _arg2:lW){
            this.go_ = _arg1;
            this.color_ = _arg2.color;
            this.rate = _arg2.rate;
            this.props = _arg2;
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local5:Number;
            var _local6:Number;
            var _local7:Number;
            var _local8:Number;
            var _local9:Number;
            var _local10:0yW;
            if (this.go_.map_ == null)
            {
                return (false);
            };
            x_ = this.go_.x_;
            y_ = this.go_.y_;
            var _local3:int = 20;
            var _local4:int;
            while (_local4 < this.rate)
            {
                _local5 = ((Math.random() + 0.3) * 200);
                _local6 = Math.random();
                _local7 = 0Na.1Me((this.props.speed - (this.props.speed * (_local6 * (1 - this.props.speedVariance)))));
                _local8 = 0Na.1Me((this.props.speed - (this.props.speed * (_local6 * (1 - this.props.speedVariance)))));
                _local9 = ((this.props.life * 1000) - ((this.props.life * 1000) * (_local6 * this.props.lifeVariance)));
                _local10 = new 0yW(_local5, this.color_, _local9, this.props.spread, 0.75, _local7, _local8);
                map_.addObj(_local10, x_, y_);
                _local4++;
            };
            return (true);
        }


    }
}//package 1Np

