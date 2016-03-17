// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1LL.0BO

package 1LL{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 1f1.76;
    import 0Uq.1E7;
    import 0Uq.11B;
    import Wn.1ot;
    import Wn.07w;
    import zf.1M6;
    import Wn.0In;
    import zf.0cK;
    import zf.1kl;
    import zf.0vS;
    import zf.0RM;
    import 0UV.1mj;
    import zf.1PM;
    import 1UB.ContinueOrQuitDialog;
    import 1UB.1Op;
    import 1UB.0eW;
    import 1UB.0FC;
    import 1UB.ArenaQueryPanel;
    import 1UB.A4;
    import 1UB.ArenaLeaderboard;
    import 1UB. get;
    import 1UB.ArenaLeaderboardListItem;
    import 1UB.268;
    import 1UB.1nU;
    import 1UB.GL;
    import 1UB.ve;
    import 1UB.uA;
    import 1UB.BattleSummaryDialog;
    import 1UB.1X;
    import 1UB.0Ja;
    import 1UB.0H8;
    import 0Fr.*;

    public class 0BO implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var commandCenter:76;


        public function configure():void{
            this.kf.map(1E7);
            this.kf.map(11B);
            this.kf.map(1ot).1nL();
            this.kf.map(07w).1nL();
            this.kf.map(1M6).1nL();
            this.kf.map(0In).1nL();
            this.13d.map(0cK).0Hs(1kl);
            this.13d.map(0vS).0Hs(0RM);
            this.13d.map(1mj).0Hs(1PM);
            this.mediatorMap.map(ContinueOrQuitDialog).1TU(1Op);
            this.mediatorMap.map(0eW).1TU(0FC);
            this.mediatorMap.map(ArenaQueryPanel).1TU(A4);
            this.mediatorMap.map(ArenaLeaderboard).1TU( get);
            this.mediatorMap.map(ArenaLeaderboardListItem).1TU(268);
            this.mediatorMap.map(1nU).1TU(GL);
            this.mediatorMap.map(ve).1TU(uA);
            this.mediatorMap.map(BattleSummaryDialog).1TU(1X);
            this.mediatorMap.map(0Ja).1TU(0H8);
        }


    }
}//package 1LL

