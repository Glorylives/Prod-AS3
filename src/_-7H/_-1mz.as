// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//7H.1mz

package 7H{
    import 0Fr.dW;
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 0zL.0Vu;
    import 0D5.G8;
    import 0D5.04v;
    import lq.117;
    import lq.1r8;
    import lq.1Cn;
    import lq.1Hj;
    import lq.p9;
    import 0Fr.*;

    public class 1mz implements 1bp {

        [Inject]
        public var context:dW;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var 0Kc:0Vu;


        public function configure():void{
            this.kf.map(G8);
            this.kf.map(04v).1nL();
            this.kf.map(117).1nL();
            this.13d.map(1r8).0Hs(1Cn);
            this.13d.map(1Hj).0Hs(p9);
            this.0Kc.0Wi(1Hj);
        }


    }
}//package 7H

