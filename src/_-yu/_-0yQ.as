// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yu.0yQ

package yu{
    import 06I.Dc;
    import 0NI.0cf;
    import _0OG._22M;
    import tB.AF;
    import 06I.0GS;
    import 0Fr.dW;
    import 0Fr.*;

    public class 0yQ implements 0dM {

        private static var ej:Dc;

        private const 1NG:String = 0cf.create(0yQ);

        private var dM:_22M;
        private var kw:AF;


        public function extend(_arg1:dW):void{
            this.dM = _arg1.kf;
            ej = ((ej) || (new Dc()));
            this.dM.map(Dc).1eo(ej);
            this.dM.map(AF).1GE(0GS);
            _arg1.9g.1bf(this.1bf);
            _arg1.9g.0f3(this.0f3);
        }

        public function toString():String{
            return (this.1NG);
        }

        private function 1bf():void{
            this.kw = this.dM.getInstance(AF);
        }

        private function 0f3():void{
            this.kw.1Kd();
            this.dM.sJ(AF);
            this.dM.sJ(Dc);
        }


    }
}//package yu

