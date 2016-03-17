// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04_.Pu

package _04_{
    import 0Fr.dW;
    import qG.0bJ;
    import flash.display.DisplayObjectContainer;
    import _0OG._22M;
    import 1Hx.Mw;
    import rz.1Qt;
    import 0zL.0Vu;
    import JV.1OM;
    import 1Bg.1mZ;
    import 1Bg.iG;
    import 1fx.1OZ;
    import WZ.0Te;
    import WZ.NV;
    import WZ.07B;
    import 0N9.0Fo;
    import 1C9.0nc;
    import 1C9.0nZ;
    import 1Bg.fQ;
    import 1C9.L-;
    import 1Bg.0EO;
    import 1C9.LQ;
    import 1Bg.h8;
    import 1C9.1QH;
    import 1Bg.0oS;
    import 1C9.1D-;
    import 1Bg.kR;
    import 1C9.r9;
    import 1Bg.uc;
    import 1C9.NA;
    import 1C9.cu;
    import 0eZ.0P3;
    import 1C9.mc;
    import 1C9.0Vj;
    import Yz.0Vd;
    import Yz.Og;
    import 1cI.3D;
    import 1fx.PurchaseCharacterClassTask;
    import 1fx.0Jj;
    import 1fx.wr;
    import 1Bg.1zl;
    import 1Bg.24H;
    import 1Bg.1k4;
    import 1Bg.1hy;
    import 1Bg.of;
    import 1Bg.0Yk;
    import 1Bg.1NA;
    import 1Bg.uK;
    import JV.yf;
    import JV.139;
    import 1r-.u-;
    import JF.0ic;
    import 0Fr.*;

    public class Pu implements 1bp {

        [Inject]
        public var context:dW;
        [Inject]
        public var setup:0bJ;
        [Inject]
        public var 0X0:DisplayObjectContainer;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var startup:0Vu;
        private var W2:1OM;


        public function configure():void{
            this.9U();
            this.1HS();
            this.1W9();
            this.1W7();
            this.0vH();
            this.startup.0Wi(1mZ, -1000);
            this.startup.0Wi(iG, -999);
            this.startup.10(1OZ);
            this.context.9g.0qQ(this.init);
        }

        private function 9U():void{
            this.kf.map(0Te).1nL();
            this.kf.map(NV).1nL();
            this.kf.map(07B).1nL();
            this.kf.map(0Fo).1nL();
        }

        private function 1HS():void{
            this.13d.map(1mZ).0Hs(0nc);
            this.13d.map(iG).0Hs(0nZ);
            this.13d.map(fQ).0Hs(L-);
            this.13d.map(0EO).0Hs(LQ);
            this.13d.map(h8).0Hs(1QH);
            this.13d.map(0oS).0Hs(1D-);
            this.13d.map(kR).0Hs(r9);
            this.13d.map(uc).0Hs(NA);
            this.13d.map(uc).0Hs(cu);
            this.13d.map(0P3).0Hs(mc);
            this.13d.map(0P3).0Hs(0Vj);
        }

        private function 1W9():void{
            this.kf.map(0Vd).1GE(Og);
            this.kf.map(3D).1nL();
            this.kf.map(PurchaseCharacterClassTask);
            this.kf.map(0Jj);
            this.kf.map(wr).1nL();
            this.kf.map(1OZ);
        }

        private function 1W7():void{
            this.kf.map(1zl).1nL();
            this.kf.map(24H).1nL();
            this.kf.map(1k4).1nL();
            this.kf.map(1hy).1nL();
            this.kf.map(of).1nL();
            this.kf.map(0Yk).1nL();
            this.kf.map(1NA).1nL();
            this.kf.map(uK).1nL();
        }

        private function 0vH():void{
            this.mediatorMap.map(yf).1TU(139);
            this.mediatorMap.map(u-).1TU(0ic);
        }

        private function init():void{
            this.mediatorMap.08f(this.0X0);
            this.W2 = new 1OM();
            this.kf.map(1OM).1eo(this.W2);
            this.0X0.addChild(this.W2);
        }


    }
}//package _04_

