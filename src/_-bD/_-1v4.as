// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//bD.1v4

package bD{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import qG.0bJ;
    import 0zL.0Vu;
    import 1ay.tG;
    import gx.1z1;
    import 1ay.17A;
    import 1ay.0vu;
    import eC.0a9;
    import 1PB.bu;
    import eC.0bp;
    import D5.1c8;
    import com.company.assembleegameclient.objects.1F9;
    import 1ay.16S;
    import 1Zz.ZW;
    import 1ay.1rn;
    import 1Zz.AV;
    import 1ay.1-0;
    import 1Zz.G1;
    import 1ay.0U6;
    import 1Zz.0x9;
    import _1aA.1oj;
    import 1PB.0S3;
    import _1aA.Qd;
    import 1PB.Uz;
    import _1aA.24C;
    import 1PB.bo;
    import _1aA.CharacterSelectionAndNewsScreen;
    import 1PB.1oA;
    import 12X.0u5;
    import 12X.1Dd;
    import _1aA.01l;
    import 1PB.tp;
    import 1PB.TitleView;
    import 1PB.1S8;
    import _1aA.20c;
    import 1PB.0D4;
    import 0QW.2-2;
    import 1PB.s2;
    import com.company.assembleegameclient.screens.charrects.CurrentCharacterRect;
    import 1PB.1Cj;
    import com.company.assembleegameclient.screens.charrects.CharacterRectList;
    import 1PB.1q1;
    import 1t6.ErrorDialog;
    import 1PB.0k2;
    import _1aA.1zu;
    import 1PB.0-h;
    import 1PB.pu;
    import 1PB.7w;
    import ZE.0t6;
    import sC.1u7;
    import BG.TextPanel;
    import BG.0kq;
    import h0.1mR;
    import sC.0C1;
    import 1PB.ChooseNameRegisterDialog;
    import 1PB.21g;
    import 1PB.0jd;
    import 1PB.00r;
    import 12X.0KD;
    import 12X.Id;
    import 1PB.CharacterSlotNeedGoldDialog;
    import 1PB.fi;
    import BG.NameChangerPanel;
    import BG.NameChangerPanelMediator;
    import _ZE.GuildRegisterPanel;
    import sC.1Yw;
    import 0hd.0pS;
    import 0hd.1Im;
    import 0hd.CreateGuildFrame;
    import 0lB.2-A;
    import 0hd.NewChooseNameFrame;
    import 0hd.25m;
    import 099.1Bn;
    import 1PB.AgeVerificationDialog;
    import 0Np.24b;
    import 0Np.0bT;
    import _ZE.ArenaPortalPanel;
    import sC.0AL;
    import 1PB.1dr;
    import 1PB.12w;
    import 1PB.yi;
    import 1PB.1Ek;
    import zD.1Zk;
    import zD.0t;
    import static.ResurrectionView;
    import static.0FT;
    import 1so.0yC;
    import 0aT.03O;
    import 1PB.0Ge;
    import 0aT.0SD;
    import 14V.h3;
    import 14V.BM;
    import 1ay.1Kv;
    import 1ay.pW;
    import 1ay.1v2;
    import 1Zz.0r0;
    import 1ay.Am;
    import 1Zz.0p9;
    import 1PB.xh;
    import 1PB.180;
    import 0IW.025;
    import 0IW.ProductionNoServersDialogFactory;
    import 0IW.1ED;
    import 0xo.lZ;
    import 1ay.0SL;
    import 1ay.1UQ;
    import 1ay.0L2;
    import 1Zz.0aS;
    import 1PB.CharacterDetailsView;
    import 1PB.1lR;
    import 0Fr.*;

    public class 1v4 implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var setup:0bJ;
        [Inject]
        public var startup:0Vu;


        public function configure():void{
            this.kf.map(tG).1nL();
            this.kf.map(1z1).1nL();
            this.kf.map(17A).1nL();
            this.kf.map(0vu).1nL();
            this.kf.map(0a9).1nL();
            this.kf.map(bu).1nL();
            this.kf.map(0bp).1nL();
            this.kf.map(1c8).1nL();
            this.kf.map(1F9).1nL();
            this.13d.map(16S).0Hs(ZW);
            this.13d.map(1rn).0Hs(AV);
            this.13d.map(1-0).0Hs(G1);
            this.13d.map(0U6).0Hs(0x9);
            this.mediatorMap.map(1oj).1TU(0S3);
            this.mediatorMap.map(Qd).1TU(Uz);
            this.mediatorMap.map(24C).1TU(bo);
            this.mediatorMap.map(CharacterSelectionAndNewsScreen).1TU(1oA);
            this.mediatorMap.map(0u5).1TU(1Dd);
            this.mediatorMap.map(01l).1TU(tp);
            this.mediatorMap.map(TitleView).1TU(1S8);
            this.mediatorMap.map(20c).1TU(0D4);
            this.mediatorMap.map(2-2).1TU(s2);
            this.mediatorMap.map(CurrentCharacterRect).1TU(1Cj);
            this.mediatorMap.map(CharacterRectList).1TU(1q1);
            this.mediatorMap.map(ErrorDialog).1TU(0k2);
            this.mediatorMap.map(1zu).1TU(0-h);
            this.mediatorMap.map(pu).1TU(7w);
            this.mediatorMap.map(0t6).1TU(1u7);
            this.mediatorMap.map(TextPanel).1TU(0kq);
            this.mediatorMap.map(1mR).1TU(0C1);
            this.mediatorMap.map(ChooseNameRegisterDialog).1TU(21g);
            this.mediatorMap.map(0jd).1TU(00r);
            this.mediatorMap.map(0KD).1TU(Id);
            this.mediatorMap.map(CharacterSlotNeedGoldDialog).1TU(fi);
            this.mediatorMap.map(NameChangerPanel).1TU(NameChangerPanelMediator);
            this.mediatorMap.map(GuildRegisterPanel).1TU(1Yw);
            this.mediatorMap.map(0pS).1TU(1Im);
            this.mediatorMap.map(CreateGuildFrame).1TU(2-A);
            this.mediatorMap.map(NewChooseNameFrame).1TU(25m);
            this.mediatorMap.map(1Bn).1TU(0tv);
            this.mediatorMap.map(AgeVerificationDialog).1TU(0s3);
            this.mediatorMap.map(24b).1TU(0bT);
            this.mediatorMap.map(ArenaPortalPanel).1TU(0AL);
            this.mediatorMap.map(1dr).1TU(12w);
            this.mediatorMap.map(yi).1TU(1Ek);
            this.mediatorMap.map(1Zk).1TU(0t);
            this.mediatorMap.map(ResurrectionView).1TU(0FT);
            this.mediatorMap.map(0yC).1TU(03O);
            this.mediatorMap.map(0Ge).1TU(0SD);
            this.Jf();
            this.aH();
            this.gW();
            this.startup.0Wi(16S, -1);
            this.startup.10(h3);
            this.startup.10(BM);
            this.startup.0Wi(1rn, 0Vu.1Bm);
        }

        private function Jf():void{
            this.kf.map(1Kv).1eo(new 1Kv());
            this.kf.map(pW).1eo(new pW());
            this.13d.map(1v2).0Hs(0r0);
            this.13d.map(Am).0Hs(0p9);
            this.mediatorMap.map(xh).1TU(180);
        }

        private function aH():void{
            if (this.setup.05L())
            {
                this.kf.map(025).1GE(ProductionNoServersDialogFactory);
            } else
            {
                this.kf.map(025).1GE(1ED);
            };
        }

        private function gW():void{
            this.kf.map(lZ).1nL();
            this.kf.map(0SL).1nL();
            this.kf.map(1UQ).1nL();
            this.13d.map(0L2).0Hs(0aS);
            this.mediatorMap.map(CharacterDetailsView).1TU(1lR);
        }


    }
}//package bD

