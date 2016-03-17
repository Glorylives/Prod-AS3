// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yu.1iU

package yu{
    import 06I.1jr;
    import 0NI.0cf;
    import _0OG._22M;
    import 0Fr.dW;
    import 06I.Dc;
    import 0Fr.*;

    public class 1iU implements 0dM {

        private static var 1VQ:1jr;
        private static var vP:uint;

        private const 1NG:String = 0cf.create(1iU);

        private var dM:_22M;


        public function extend(_arg1:dW):void{
            vP++;
            this.dM = _arg1.kf;
            _arg1.9g.1bf(this.1bf);
            _arg1.9g.0f3(this.0f3);
        }

        public function toString():String{
            return (this.1NG);
        }

        private function 1bf():void{
            var _local1:Dc;
            if (1VQ == null)
            {
                _local1 = this.dM.getInstance(Dc);
                1VQ = new 1jr(_local1);
            };
        }

        private function 0f3():void{
            vP--;
            if (vP == 0)
            {
                1VQ.destroy();
                1VQ = null;
            };
        }


    }
}//package yu

