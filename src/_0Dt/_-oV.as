// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Dt.oV

package 0Dt{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import aq.Account;
    import 0ud.Z8;
    import jH.0eh;
    import 0Jp.zn;
    import 0eZ.0P3;
    import 0eZ.2-y;
    import 02Z.0uM;
    import 0eZ.aE;
    import 02Z.0oF;
    import 1cs.nu;
    import 02Z.lT;
    import 1cs.1Ch;
    import 02Z.tO;
    import 1ki.KongregateAccountInfoView;
    import 1ki.1x-;
    import 1ki.KongregateAccountDetailDialog;
    import 1ki.0TB;
    import 12X.RegisterWebAccountDialog;
    import 1ki.26c;
    import 1ki.0e0;
    import 1ki.1Jr;
    import 14V.h3;
    import 0ud.kx;
    import 0ud.100;
    import 14V.27Q;
    import 0ud.p1;
    import 14V.0jk;
    import 0ud.12I;
    import 14V.0WB;
    import 0ud.e9;
    import 14V.1Xt;
    import 0ud.Bw;
    import 14V.1Cc;
    import 0ud.3o;
    import 0Fr.*;

    public class oV implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;


        public function configure():void{
            this.8e();
            this.1Td();
            this.1Ki();
            this.109();
        }

        protected function 8e():void{
            this.kf.map(Account).1GE(5c);
            this.kf.map(Z8).1nL();
            this.kf.map(0eh).1GE(zn);
            this.kf.map(0P3).1nL();
        }

        protected function 1Td():void{
            this.13d.map(2-y).0Hs(0uM);
            this.13d.map(aE).0Hs(0oF);
            this.13d.map(nu).0Hs(lT);
            this.13d.map(1Ch).0Hs(tO);
        }

        protected function 109():void{
            this.mediatorMap.map(KongregateAccountInfoView).1TU(1x-);
            this.mediatorMap.map(KongregateAccountDetailDialog).1TU(0TB);
            this.mediatorMap.map(RegisterWebAccountDialog).1TU(26c);
        }

        protected function 1Ki():void{
            this.kf.map(0e0).1GE(1Jr);
            this.kf.map(h3).qi(kx);
            this.kf.map(100);
            this.kf.map(27Q).qi(p1);
            this.kf.map(0jk).qi(12I);
            this.kf.map(0WB).qi(e9);
            this.kf.map(1Xt).qi(Bw);
            this.kf.map(1Cc).qi(3o);
        }


    }
}//package _0Dt

