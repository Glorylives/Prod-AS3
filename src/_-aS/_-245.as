// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//aS.245

package aS{
    import flash.utils.Dictionary;
    import _0OG._22M;
    import 1f1.76;
    import 1f1.0bs;
    import 0rN.17U;
    import 0rN.KS;
    import 1Hx.*;

    public class 245 implements Mw {

        private const 8m:Dictionary = new Dictionary();

        private var dM:_22M;
        private var 02r:76;

        public function 245(_arg1:_22M, _arg2:76){
            this.dM = _arg1;
            this.02r = _arg2;
        }

        public function map(_arg1:Class, _arg2:Boolean=false):17U{
            var _local3:0bs = (this.8m[_arg1] = ((this.8m[_arg1]) || (this.18d(_arg1, _arg2))));
            return (this.02r.map(_local3));
        }

        public function sJ(_arg1:Class):KS{
            return (this.02r.sJ(this.0gV(_arg1)));
        }

        private function 18d(_arg1:Class, _arg2:Boolean=false):0bs{
            return (new 0bq(this.dM, _arg1, _arg2));
        }

        private function 0gV(_arg1:Class):0bs{
            return (this.8m[_arg1]);
        }


    }
}//package aS

