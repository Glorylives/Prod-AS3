// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.0I8

package 1Np{
    import com.company.assembleegameclient.objects.GameObject;
    import com.company.assembleegameclient.util.0Ep;

    public class 0I8 extends 0F- {

        private static const 15m:Number = 400;

        private var 01r:String;
        public var go_:GameObject;
        public var lastUpdate_:int = -1;
        public var fw:Number;
        private var 1eP:lW;

        public function 0I8(_arg1:GameObject, _arg2:lW){
            this.go_ = _arg1;
            this.1eP = _arg2;
            this.fw = (((1 - _arg2.rate) * 15m) + 1);
            this.01r = ("BubbleEffect_" + Math.random());
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local3:int;
            var _local5:int;
            var _local6:Number;
            var _local7:Number;
            var _local8:Number;
            var _local9:Number;
            var _local11:1jH;
            var _local12:Number;
            var _local13:Number;
            if (this.go_.map_ == null)
            {
                return (false);
            };
            if (!this.lastUpdate_)
            {
                this.lastUpdate_ = _arg1;
                return (true);
            };
            _local3 = int((this.lastUpdate_ / this.fw));
            var _local4:int = int((_arg1 / this.fw));
            _local8 = this.go_.x_;
            _local9 = this.go_.y_;
            if (this.lastUpdate_ < 0)
            {
                this.lastUpdate_ = Math.max(0, (_arg1 - 15m));
            };
            x_ = _local8;
            y_ = _local9;
            var _local10:int = _local3;
            while (_local10 < _local4)
            {
                _local5 = (_local10 * this.fw);
                _local11 = 1jH.create(this.01r, this.1eP.color, this.1eP.speed, this.1eP.life, this.1eP.lifeVariance, this.1eP.speedVariance, this.1eP.spread);
                _local11.restart(_local5, _arg1);
                _local6 = (Math.random() * Math.PI);
                _local7 = (Math.random() * 0.4);
                _local12 = (_local8 + (_local7 * Math.cos(_local6)));
                _local13 = (_local9 + (_local7 * Math.sin(_local6)));
                map_.addObj(_local11, _local12, _local13);
                _local10++;
            };
            this.lastUpdate_ = _arg1;
            return (true);
        }

        override public function removeFromMap():void{
            super.removeFromMap();
            0Ep.dump(this.01r);
        }


    }
}//package 1Np

