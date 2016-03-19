// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.hurlant.math.EB

package com.hurlant.math{
    import com.hurlant.math.1OU;
    import com.hurlant.math.bi_internal;
    import com.hurlant.math.*;

    use namespace bi_internal;

    class EB implements OU {

        private var m:1OU;
        private var 1ch:int;
        private var XN:int;
        private var 0cD:int;
        private var PJ:int;
        private var 231:int;

        public function EB(_arg1:1OU){
            this.m = _arg1;
            this.1ch = _arg1.0Rt();
            this.XN = (this.1ch & 32767);
            this.0cD = (this.1ch >> 15);
            this.PJ = ((1 << (1OU.1Ic - 15)) - 1);
            this.231 = (2 * _arg1.t);
        }

        public function 1Z2(_arg1:1OU):1OU{
            var _local2:1OU = new 1OU();
            _arg1.abs().2-G(this.m.t, _local2);
            _local2.cZ(this.m, null, _local2);
            if ((((_arg1.s < 0)) && ((_local2.0-6(1OU.is) > 0))))
            {
                this.m.GV(_local2, _local2);
            }
            return (_local2);
        }

        public function 1cz(_arg1:1OU):1OU{
            var _local2:1OU = new 1OU();
            _arg1.copyTo(_local2);
            this.0KC(_local2);
            return (_local2);
        }

        public function 0KC(_arg1:1OU):void{
            var _local3:int;
            var _local4:int;
            while (_arg1.t <= this.231)
            {
                var _local5 = _arg1.t++;
                _arg1.a[_local5] = 0;
            }
            var _local2:int;
            while (_local2 < this.m.t)
            {
                _local3 = (_arg1.a[_local2] & 32767);
                _local4 = (((_local3 * this.XN) + ((((_local3 * this.0cD) + ((_arg1.a[_local2] >> 15) * this.XN)) & this.PJ) << 15)) & 1OU.1DT);
                _local3 = (_local2 + this.m.t);
                _arg1.a[_local3] = (_arg1.a[_local3] + this.m.am(0, _local4, _arg1, _local2, 0, this.m.t));
                while (_arg1.a[_local3] >= 1OU.U0)
                {
                    _arg1.a[_local3] = (_arg1.a[_local3] - 1OU.U0);
                    _local5 = _arg1.a;
                    var _local6 = ++_local3;
                    var _local7 = (_local5[_local6] + 1);
                    _local5[_local6] = _local7;
                }
                _local2++;
            }
            _arg1.clamp();
            _arg1.0nR(this.m.t, _arg1);
            if (_arg1.0-6(this.m) >= 0)
            {
                _arg1.GV(this.m, _arg1);
            }
        }

        public function 1yM(_arg1:1OU, _arg2:1OU):void{
            _arg1.1dy(_arg2);
            this.0KC(_arg2);
        }

        public function Ex(_arg1:1OU, _arg2:1OU, _arg3:1OU):void{
            _arg1.01Z(_arg2, _arg3);
            this.0KC(_arg3);
        }


    }
}//package com.hurlant.math

