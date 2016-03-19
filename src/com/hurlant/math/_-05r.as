// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.hurlant.math.05r

package com.hurlant.math{
    import com.hurlant.math.1OU;
    import com.hurlant.math.bi_internal;

    use namespace bi_internal;

    class 05r implements OU {

        private var m:1OU;
        private var 0SC:1OU;
        private var sa:1OU;
        private var 0d1:1OU;

        public function 05r(_arg1:1OU){
            this.0SC = new 1OU();
            this.sa = new 1OU();
            1OU.1nf.2-G((2 * _arg1.t), this.0SC);
            this.0d1 = this.0SC.UK(_arg1);
            this.m = _arg1;
        }

        public function 1cz(_arg1:1OU):1OU{
            return (_arg1);
        }

        public function Ex(_arg1:1OU, _arg2:1OU, _arg3:1OU):void{
            _arg1.01Z(_arg2, _arg3);
            this.0KC(_arg3);
        }

        public function 1yM(_arg1:1OU, _arg2:1OU):void{
            _arg1.1dy(_arg2);
            this.0KC(_arg2);
        }

        public function 1Z2(_arg1:1OU):1OU{
            var _local2:1OU;
            if ((((_arg1.s < 0)) || ((_arg1.t > (2 * this.m.t)))))
            {
                return (_arg1.MR(this.m));
            }
            if (_arg1.0-6(this.m) < 0)
            {
                return (_arg1);
            }
            _local2 = new 1OU();
            _arg1.copyTo(_local2);
            this.0KC(_local2);
            return (_local2);
        }

        public function 0KC(_arg1:1OU):void{
            var _local2:1OU = (_arg1 as 1OU);
            _local2.0nR((this.m.t - 1), this.0SC);
            if (_local2.t > (this.m.t + 1))
            {
                _local2.t = (this.m.t + 1);
                _local2.clamp();
            }
            this.0d1.03h(this.0SC, (this.m.t + 1), this.sa);
            this.m.1-R(this.sa, (this.m.t + 1), this.0SC);
            while (_local2.0-6(this.0SC) < 0)
            {
                _local2.1PC(1, (this.m.t + 1));
            }
            _local2.GV(this.0SC, _local2);
            while (_local2.0-6(this.m) >= 0)
            {
                _local2.GV(this.m, _local2);
            }
        }


    }
}//package com.hurlant.math

