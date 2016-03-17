// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//uG.Ue

package uG{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 1Bt.l-;
    import dq.1er;
    import 0Ux.0tu;
    import 0Ux.0dq;
    import 0Ux.BeginnersPackageOfferDialog;
    import 0Ux.8R;
    import 0Ux.1ta;
    import 0Ux.iC;
    import 1g8.Bd;
    import 0w9.1rS;
    import 1g8.gO;
    import 0w9.BuyBeginnersPackageCommand;
    import 1g8.0Hw;
    import 0w9.1Go;
    import 0Fr.*;

    public class Ue implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;


        public function configure():void{
            this.kf.map(l-).1nL();
            this.kf.map(1er).1nL();
            this.mediatorMap.map(0tu).1TU(0dq);
            this.mediatorMap.map(BeginnersPackageOfferDialog).1TU(8R);
            this.mediatorMap.map(1ta).1TU(iC);
            this.13d.map(Bd).0Hs(1rS);
            this.13d.map(gO).0Hs(BuyBeginnersPackageCommand);
            this.13d.map(0Hw).0Hs(1Go);
        }


    }
}//package uG

