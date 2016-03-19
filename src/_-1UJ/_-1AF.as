// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UJ.1AF

package 1UJ{
    import 0NI.0cf;
    import _0OG._22M;
    import rz.1Qt;
    import tB.AF;
    import 1JQ.1Eq;
    import rz.lo;
    import 1JQ.0wk;
    import 1JQ.X8;
    import 0Fr.dW;
    import tB.LC;
    import 0Fr.*;

    public class 1AF implements 0dM {

        private const 1NG:String = 0cf.create(1AF);

        private var dM:_22M;
        private var 0Qp:1Qt;
        private var kw:AF;
        private var 10P:1Eq;


        public function extend(_arg1:dW):void{
            this.dM = _arg1.kf;
            this.dM.map(lo).1GE(0wk);
            this.dM.map(1Qt).1GE(X8);
            _arg1.9g.7i(this.7i);
            _arg1.9g.0Sh(this.0Sh);
            _arg1.9g.0f3(this.0f3);
        }

        public function toString():String{
            return (this.1NG);
        }

        private function 7i():void{
            this.0Qp = this.dM.getInstance(1Qt);
            this.10P = this.dM.getInstance(1Eq);
            if (this.dM.gL(AF))
            {
                this.kw = this.dM.getInstance(AF);
                this.kw.0-M((this.0Qp as LC));
            }
        }

        private function 0Sh():void{
            var _local1:lo = this.dM.getInstance(lo);
            _local1.qa();
            if (this.dM.gL(AF))
            {
                this.kw = this.dM.getInstance(AF);
                this.kw.I7((this.0Qp as LC));
            }
        }

        private function 0f3():void{
            if (this.dM.gL(1Qt))
            {
                this.dM.sJ(1Qt);
            }
            if (this.dM.gL(lo))
            {
                this.dM.sJ(lo);
            }
        }


    }
}//package 1UJ

