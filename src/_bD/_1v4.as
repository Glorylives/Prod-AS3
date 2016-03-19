// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//bD.1v4

package _bD{
    import _0Fr.*;

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
            this.mediatorMap.map(_0yC).1TU(03O);
            this.mediatorMap.map(_0Ge).1TU(0SD);
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
            }
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

