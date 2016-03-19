// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.1Un

package 1Np{
    import com.company.assembleegameclient.objects.GameObject;
    import com.company.assembleegameclient.util.0Na;

    public class 1Un extends 0F- {

        public var go_:GameObject;
        public var color_:int;

        public function 1Un(_arg1:GameObject, _arg2:int){
            this.go_ = _arg1;
            this.color_ = _arg2;
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            if (this.go_.map_ == null)
            {
                return (false);
            }
            x_ = this.go_.x_;
            y_ = this.go_.y_;
            var _local3:int = 10;
            var _local4:int;
            while (_local4 < _local3)
            {
                map_.addObj(new El(100, this.color_, 400, 0.75, 0Na.1Me(4), 0Na.1Me(4)), x_, y_);
                _local4++;
            }
            return (false);
        }


    }
}//package 1Np

