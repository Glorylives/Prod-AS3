// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1tr.0vm

package 1tr{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import c4.Mo;
    import c4.0WL;
    import aq.Account;
    import jH.0eh;
    import c4.1rJ;
    import 0eZ.0P3;
    import 0eZ.2-y;
    import 0LU.06X;
    import Av.KabamAccountDetailDialog;
    import Av.1Dg;
    import Av.TV;
    import Av.1-N;
    import 14V.0WB;
    import 0GQ.10r;
    import 14V.h3;
    import 1I4.Fh;
    import 14V.1Xt;
    import 0GQ.a4;
    import 0Fr.*;

    public class 0vm implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;


        public function configure():void{
            this.7v();
            this.1Td();
            this.109();
            this.1Ki();
        }

        protected function 7v():void{
            this.kf.map(Mo).1GE(0WL);
            this.kf.map(Account).1GE(0SX);
            this.kf.map(0eh).1GE(1rJ);
            this.kf.map(0P3).1nL();
        }

        private function 1Td():void{
            this.13d.map(2-y).0Hs(06X);
        }

        protected function 109():void{
            this.mediatorMap.map(KabamAccountDetailDialog).1TU(1Dg);
            this.mediatorMap.map(TV).1TU(1-N);
        }

        protected function 1Ki():void{
            this.kf.map(0WB).qi(10r);
            this.kf.map(h3).qi(Fh);
            this.kf.map(1Xt).qi(a4);
        }


    }
}//package 1tr

