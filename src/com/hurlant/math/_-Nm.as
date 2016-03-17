// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.hurlant.math.Nm

package com.hurlant.math{
    import com.hurlant.math.1OU;
    import com.hurlant.math.bi_internal;

    use namespace bi_internal;

    class Nm implements OU {

        private var m:1OU;

        public function Nm(_arg1:1OU){
            this.m = _arg1;
        }

        public function 1Z2(_arg1:1OU):1OU{
            if ((((_arg1.s < 0)) || ((_arg1.0-6(this.m) >= 0))))
            {
                return (_arg1.MR(this.m));
            };
            return (_arg1);
        }

        public function 1cz(_arg1:1OU):1OU{
            return (_arg1);
        }

        public function 0KC(_arg1:1OU):void{
            _arg1.cZ(this.m, null, _arg1);
        }

        public function Ex(_arg1:1OU, _arg2:1OU, _arg3:1OU):void{
            _arg1.01Z(_arg2, _arg3);
            this.0KC(_arg3);
        }

        public function 1yM(_arg1:1OU, _arg2:1OU):void{
            _arg1.1dy(_arg2);
            this.0KC(_arg2);
        }


    }
}//package com.hurlant.math

