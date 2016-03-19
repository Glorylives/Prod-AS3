// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1VU.1tS

package 1VU{
    import 0Fr.dW;
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import qG.0bJ;
    import 0UV.Lq;
    import 0UV.1ML;
    import 0UV.9-;
    import 0UV.105;
    import gx.0Xo;
    import com.company.assembleegameclient.game.0ix;
    import 0xo.1Js;
    import 0UV.1P9;
    import com.company.assembleegameclient.map.04H;
    import 1E8.0M1;
    import _ZE.PortalPanel;
    import BG.Ga;
    import ZE.0lo;
    import sC.0AP;
    import ZE.0t6;
    import sC.1u7;
    import h0.1mR;
    import sC.0C1;
    import h0.1cg;
    import sC.3s;
    import 0DE.0bw;
    import 0DE.246;
    import com.company.assembleegameclient.ui.07I;
    import com.company.assembleegameclient.ui.1SJ;
    import 9T.Zf;
    import BG.0on;
    import com.company.assembleegameclient.map.Map;
    import com.company.assembleegameclient.map.26h;
    import eC.0F0;
    import eC.0pF;
    import eC.1HE;
    import eC.Fc;
    import eC.WK;
    import eC.1Rt;
    import 1Bg.uc;
    import 22T.1MI;
    import 0UV.13V;
    import 22T.23w;
    import 0UV.11G;
    import 22T.UseBuyPotionCommand;
    import 0UV.1mj;
    import 22T.0NR;
    import 0UV.Xq;
    import 22T.wX;
    import 03b.24W;
    import gx.1Nb;
    import 16R.0cq;
    import gx.W5;
    import 0UV.0Hm;
    import 22T.ha;
    import BG.TextPanel;
    import BG.0kq;
    import BG.GiftStatusDisplay;
    import BG.0Li;
    import com.company.assembleegameclient.game.GameSprite;
    import BG.0HQ;
    import BG.02I;
    import BG.Gb;
    import BG.MoneyChangerPanel;
    import BG.148;
    import BG.SellableObjectPanel;
    import BG.SellableObjectPanelMediator;
    import 5n.1IC;
    import 5n.1aE;
    import 5n.0sT;
    import 0Fr.*;

    public class 1tS implements 1bp {

        [Inject]
        public var context:dW;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var setup:0bJ;


        private function 1aU():void{
            this.kf.map(Lq).1nL();
            this.kf.map(1ML).1nL();
            this.kf.map(9-).1nL();
            this.kf.map(105).1nL();
            this.kf.map(0Xo).1nL();
            this.kf.map(0ix).1nL();
            this.kf.map(1Js).1nL();
            this.kf.map(1P9).1nL();
            this.kf.map(04H).1nL();
            this.kf.map(0M1).1nL();
            this.00Z();
            this.09q();
            this.mediatorMap.map(PortalPanel).1TU(Ga);
            this.mediatorMap.map(0lo).1TU(0AP);
            this.mediatorMap.map(0t6).1TU(1u7);
            this.mediatorMap.map(1mR).1TU(0C1);
            this.mediatorMap.map(1cg).1TU(3s);
            this.mediatorMap.map(0bw).1TU(246);
            this.mediatorMap.map(07I).1TU(1SJ);
            this.mediatorMap.map(Zf).1TU(0on);
            this.mediatorMap.map(Map).1TU(26h);
            this.mediatorMap.map(0F0).1TU(0pF);
            this.mediatorMap.map(1HE).1TU(Fc);
            this.mediatorMap.map(WK).1TU(1Rt);
            this.13d.map(uc).0Hs(1MI);
            this.13d.map(13V).0Hs(23w);
            this.13d.map(11G).0Hs(UseBuyPotionCommand);
            this.13d.map(1mj).0Hs(0NR);
            this.13d.map(Xq).0Hs(wX);
            this.05v();
        }

        public function configure():void{
            this.context.configure(24W);
            this.kf.map(1Nb).1nL();
            this.1aU();
            this.context.configure(0cq);
        }

        private function 00Z():void{
            this.kf.map(W5).1nL();
            this.13d.map(0Hm, true).0Hs(ha);
            this.mediatorMap.map(TextPanel).1TU(0kq);
        }

        private function 09q():void{
            this.mediatorMap.map(GiftStatusDisplay).1TU(0Li);
            this.mediatorMap.map(GameSprite).1TU(0HQ);
            this.mediatorMap.map(02I).1TU(Gb);
            this.mediatorMap.map(MoneyChangerPanel).1TU(148);
            this.mediatorMap.map(SellableObjectPanel).1TU(SellableObjectPanelMediator);
        }

        private function 05v():void{
            if (this.setup.ib())
            {
                this.kf.map(1IC).qi(1aE);
            } else
            {
                this.kf.map(1IC).qi(0sT);
            }
        }


    }
}//package 1VU

