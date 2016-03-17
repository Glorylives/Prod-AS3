// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1t4.CL

package 1t4{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 0zL.0Vu;
    import 1tt.0jv;
    import dq.0A8;
    import 1tt.DT;
    import TN.PackageButton;
    import TN.0Kk;
    import TN.PackageOfferDialog;
    import TN.Jq;
    import TN.W3;
    import TN.Xj;
    import 0dW.2-J;
    import 0dW.0jz;
    import dq.1tc;
    import dq.25V;
    import dq.0ra;
    import dq.Xe;
    import dq.1EO;
    import dq.263;
    import dq.86;
    import dq.fB;
    import dq.dC;
    import dq.1Jj;
    import dq.1un;
    import 0Fr.*;

    public class CL implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var Ys:0Vu;


        public function configure():void{
            this.kf.map(0jv).1nL();
            this.kf.map(0A8).1nL();
            this.kf.map(DT);
            this.mediatorMap.map(PackageButton).1TU(0Kk);
            this.mediatorMap.map(PackageOfferDialog).1TU(Jq);
            this.mediatorMap.map(W3).1TU(Xj);
            this.mediatorMap.map(2-J).1TU(0jz);
            this.13d.map(1tc).0Hs(25V).9G(183, 0ra);
            this.13d.map(Xe).0Hs(1EO);
            this.13d.map(263).0Hs(86);
            this.13d.map(fB).0Hs(dC);
            this.13d.map(1Jj).0Hs(1un);
            this.Ys.10(DT);
        }


    }
}//package 1t4

