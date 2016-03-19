// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Wp.0-o

package Wp{
    import flash.display.DisplayObjectContainer;
    import _0OG._22M;
    import 1Hx.Mw;
    import rz.1Qt;
    import 0Fr.dW;
    import flash.display.LoaderInfo;
    import 0Fr.1da;
    import 1Bg.1AE;
    import 0eZ.0b8;
    import 14V.1xn;
    import 14V.BM;
    import 1Bg.0vt;
    import jH.1wW;
    import 12X.MoneyFrame;
    import 0hd.NM;
    import 1ay.0W-;
    import aq.1m-;
    import 02e.1LJ;
    import 0eZ.VO;
    import 1sW.15o;
    import 0eZ.ER;
    import 1sW.0h0;
    import 0Dt.oV;
    import 1PV.1zV;
    import 1tr.0vm;
    import 2D.0r3;
    import 0Fr.*;

    public class 0-o implements 1bp {

        [Inject]
        public var root:DisplayObjectContainer;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var context:dW;
        [Inject]
        public var info:LoaderInfo;
        [Inject]
        public var u3:1da;


        public function configure():void{
            this.0Pn();
            this.0eE();
            this.context.9g.0qQ(this.init);
        }

        private function 0Pn():void{
            this.kf.map(1AE).1nL();
            this.kf.map(0b8).1nL();
            this.kf.map(1xn);
            this.kf.map(BM);
            this.kf.map(0vt).1nL();
            this.kf.map(1wW).1nL();
            this.mediatorMap.map(MoneyFrame).1TU(NM);
            this.13d.map(0W-).0Hs(1m-).9G(1LJ);
            this.13d.map(VO).0Hs(15o);
            this.13d.map(ER).0Hs(0h0);
        }

        private function 0eE():void{
            if (this.05x())
            {
                this.context.configure(oV);
            } else
            {
                if (this.e-())
                {
                    this.context.configure(1zV);
                } else
                {
                    if (this.22L())
                    {
                        this.context.configure(0vm);
                    } else
                    {
                        this.context.configure(0r3);
                    }
                }
            }
        }

        private function 05x():Boolean{
            return (!((this.info.parameters.kongregate_api_path == null)));
        }

        private function e-():Boolean{
            return (!((this.info.parameters.steam_api_path == null)));
        }

        private function 22L():Boolean{
            return (!((this.info.parameters.kabam_signed_request == null)));
        }

        private function init():void{
            this.u3.info("isKongregate {0}", [this.05x()]);
            this.u3.info("isSteam {0}", [this.e-()]);
            this.u3.info("isKabam {0}", [this.22L()]);
        }


    }
}//package Wp

