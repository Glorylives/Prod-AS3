// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PV.1zV

package 1PV{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import aq.Account;
    import jH.0eh;
    import Xu.1qr;
    import 0eZ.0P3;
    import 0eZ.2-y;
    import i8.0AX;
    import 0eZ.aE;
    import i8.0gR;
    import 1ih.SteamAccountDetailDialog;
    import 1ih.null;
    import 12X.RegisterWebAccountDialog;
    import 1ih.15p;
    import 0av.0xZ;
    import 14V.h3;
    import 0av.27H;
    import 0av.1It;
    import 14V.0WB;
    import 0av.05H;
    import 14V.1Xt;
    import 0av.25T;
    import 14V.1Cc;
    import 0av.0IE;
    import 0Fr.*;

    public class 1zV implements 1bp {

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
            this.1Ki();
        }

        protected function 8e():void{
            this.kf.map(Account).1GE(6M);
            this.kf.map(0eh).1GE(1qr);
            this.kf.map(0P3).1nL();
        }

        protected function 1Td():void{
            this.13d.map(2-y).0Hs(0AX);
            this.13d.map(aE).0Hs(0gR);
        }

        protected function 109():void{
            this.mediatorMap.map(SteamAccountDetailDialog).1TU(null);
            this.mediatorMap.map(RegisterWebAccountDialog).1TU(15p);
        }

        protected function 1Ki():void{
            this.kf.map(aN).1GE(0xZ);
            this.kf.map(h3).qi(27H);
            this.kf.map(1It);
            this.kf.map(0WB).qi(05H);
            this.kf.map(1Xt).qi(25T);
            this.kf.map(1Cc).qi(0IE);
        }


    }
}//package 1PV

