// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2D.0r3

package 2D{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import aq.Account;
    import jH.0eh;
    import qs.0vK;
    import 0eZ.2-y;
    import 0mE.p3;
    import 0eZ.25O;
    import 0mE.1le;
    import 0eZ.1f2;
    import 0mE.1qw;
    import 10x.QE;
    import 0mE.255;
    import 0eZ.bG;
    import 0mE.11W;
    import 0eZ.16V;
    import 0mE.059;
    import 0eZ.0P3;
    import 0mE.20r;
    import 0sC.as;
    import 0sC.1sO;
    import 0sC.WebChangePasswordDialog;
    import 0sC.1gi;
    import 0sC.WebForgotPasswordDialog;
    import 0sC.1SV;
    import 0sC.WebAccountDetailDialog;
    import 0sC.1Sy;
    import 0sC.0mL;
    import 0sC.1jw;
    import 0sC.WebLoginDialog;
    import 0sC.1YE;
    import 0sC.0Tp;
    import 0sC.0Ob;
    import 0sC.14Y;
    import 0sC.1g9;
    import 14V.0pz;
    import 0GQ.265;
    import 14V.h3;
    import 0GQ.Bf;
    import 14V.27Q;
    import 0GQ.0cB;
    import 14V.0WB;
    import 0GQ.10r;
    import 14V.1Xt;
    import 0GQ.a4;
    import 14V.1Cc;
    import 0GQ.rG;
    import 14V.1YZ;
    import 0GQ.V;
    import 14V.JE;
    import 0GQ.0ml;
    import 0Fr.*;

    public class 0r3 implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;


        public function configure():void{
            this.8e();
            this.1Td();
            this.109();
            this.83();
        }

        protected function 8e():void{
            this.kf.map(Account).1GE(0vh);
            this.kf.map(0eh).1GE(0vK);
        }

        protected function 1Td():void{
            this.13d.map(2-y).0Hs(p3);
            this.13d.map(25O).0Hs(1le);
            this.13d.map(1f2).0Hs(1qw);
            this.13d.map(QE).0Hs(255);
            this.13d.map(bG).0Hs(11W);
            this.13d.map(16V).0Hs(059);
            this.13d.map(0P3).0Hs(20r);
        }

        protected function 109():void{
            this.mediatorMap.map(as).1TU(1sO);
            this.mediatorMap.map(WebChangePasswordDialog).1TU(1gi);
            this.mediatorMap.map(WebForgotPasswordDialog).1TU(1SV);
            this.mediatorMap.map(WebAccountDetailDialog).1TU(1Sy);
            this.mediatorMap.map(0mL).1TU(1jw);
            this.mediatorMap.map(WebLoginDialog).1TU(1YE);
            this.mediatorMap.map(0Tp).1TU(0Ob);
            this.mediatorMap.map(14Y).1TU(1g9);
        }

        protected function 83():void{
            this.kf.map(0pz).qi(265);
            this.kf.map(h3).qi(Bf);
            this.kf.map(27Q).qi(0cB);
            this.kf.map(0WB).qi(10r);
            this.kf.map(1Xt).qi(a4);
            this.kf.map(1Cc).qi(rG);
            this.kf.map(1YZ).qi(V);
            this.kf.map(JE).qi(0ml);
        }


    }
}//package 2D

