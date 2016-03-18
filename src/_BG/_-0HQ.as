// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.0HQ

package BG{
    import 1uF.1Mf;
    import com.company.assembleegameclient.game.GameSprite;
    import 0UV.1ML;
    import 1Bg.h8;
    import 1Bg.0oS;
    import 1Bg.1zl;
    import 0UV.Xq;
    import WZ.0Te;
    import 0UV.1mj;
    import WZ.NV;
    import 1Bt.l-;
    import 1qg.11S;
    import 5n.1IC;
    import 1ay.0L2;
    import 1ay.0SL;
    import 1ay.1UQ;
    import 1Bg.0EO;
    import dq.1er;
    import dq.0A8;
    import dq.fB;
    import 1g8.Bd;
    import 1tt.0jv;
    import dq.1Jj;
    import 0YY.1WB;
    import 0a-.IC;
    import 1wn.1DZ;
    import flash.utils.getTimer;
    import F7.19s;
    import 0wP.kM;
    import _04_._1JZ;
    import 0a-.1lD;
    import gx.1KE;
    import com.company.assembleegameclient.objects.Player;

    public class 0HQ extends 1Mf {

        [Inject]
        public var view:GameSprite;
        [Inject]
        public var 1LN:1ML;
        [Inject]
        public var 0gc:h8;
        [Inject]
        public var fP:0oS;
        [Inject]
        public var 21r:1zl;
        [Inject]
        public var 7V:Xq;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var 1rY:1mj;
        [Inject]
        public var 8e:NV;
        [Inject]
        public var 1JK:l-;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var ES:1IC;
        [Inject]
        public var oT:0L2;
        [Inject]
        public var sI:0SL;
        [Inject]
        public var We:1UQ;
        [Inject]
        public var 1PD:0EO;
        [Inject]
        public var 0cX:1er;
        [Inject]
        public var 0vM:0A8;
        [Inject]
        public var 0RR:fB;
        [Inject]
        public var 1ji:Bd;
        [Inject]
        public var 2M:0jv;
        [Inject]
        public var pI:1Jj;
        [Inject]
        public var XG:1WB;
        [Inject]
        public var 0XT:IC;
        [Inject]
        public var 1gV:1DZ;


        public static function Oh(_arg1:int):void{
            var _local2:int = getTimer();
            while (true)
            {
                if ((getTimer() - _local2) >= _arg1) break;
            };
        }


        override public function initialize():void{
            this.0XT.dispatch();
            this.view.2M = this.2M;
            this.1LN.add(this.20X);
            JR(19s.RECONNECT, this.0Ai);
            this.view.1_ZS.add(this.1lq);
            this.view.0GM.add(this.IG);
            this.We.add(this.0Of);
            this.XG.add(this.00s);
            this.view.ES.add(this.101);
            this.view.closed.add(this.1qf);
            this.view.8e = this.8e;
            this.view.1JK = this.1JK;
            this.view.connect();
            this.1PD.dispatch("/gameStarted");
            this.view.1ji = this.1ji;
            this.view.1IO.add(this.1i);
            this.1gV.add(this.1uf);
        }

        private function 1i():void{
            var _local1:kM = this.2M.04r();
            if (_local1)
            {
                this.pI.dispatch(_local1.packageID);
            };
        }

        override public function destroy():void{
            this.view.1IO.remove(this.1i);
            this.1LN.remove(this.20X);
            0S6(19s.RECONNECT, this.0Ai);
            this.view.1_ZS.remove(this.1lq);
            this.view.0GM.remove(this.IG);
            this.We.remove(this.0Of);
            this.0cX.remove(this.E1);
            this.0vM.remove(this.Y1);
            this.view.closed.remove(this.1qf);
            this.view.ES.remove(this.101);
            this.1gV.remove(this.1uf);
            this.view.disconnect();
        }

        private function 101(_arg1:String, _arg2:int):void{
            this.ES.0I(_arg1, _arg2);
        }

        public function 20X(_arg1:Boolean):void{
            this.view.mui_.setEnablePlayerInput(_arg1);
        }

        private function E1():void{
            this.view.1Hy();
        }

        private function Y1():void{
            this.view.1IH();
        }

        private function 1qf():void{
            this.1rY.dispatch();
            this.closeDialogs.dispatch();
            var _local1:1lD = _1JZ.0JF().getInstance(1lD);
            _local1.dispatch();
            Oh(100);
        }

        private function 0Ai(_arg1:19s):void{
            if (this.view.isEditor)
            {
                return;
            };
            var _local2:1KE = new 1KE();
            _local2.server = _arg1.server_;
            _local2.gameId = _arg1.gameId_;
            _local2.19j = _arg1.lk;
            _local2.charId = _arg1.charId_;
            _local2.0Pq = _arg1.keyTime_;
            _local2.key = _arg1.key_;
            _local2.0L0 = _arg1.isFromArena_;
            this.7V.dispatch(_local2);
        }

        private function 1lq():void{
            this.oT.dispatch(this.view);
            this.0cX.add(this.E1);
            this.0vM.add(this.Y1);
            this.0RR.dispatch();
        }

        private function IG(_arg1:Player):void{
            this.sI.dispatch(_arg1);
        }

        private function 0Of():void{
            this.view.We();
        }

        private function 00s(_arg1:Boolean):void{
            this.view.da(_arg1);
        }

        private function 1uf():void{
            this.view.1w();
        }


    }
}//package BG

