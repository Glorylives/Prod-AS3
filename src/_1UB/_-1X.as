// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.1X

package 1UB{
    import 1uF.1Mf;
    import 0a-.1lD;
    import Wn.1ot;
    import Wn.07w;
    import 1qg.0io;
    import flash.utils.Timer;
    import Wn.0EB;
    import flash.events.TimerEvent;

    public class 1X extends 1Mf {

        [Inject]
        public var view:BattleSummaryDialog;
        [Inject]
        public var 0K5:1lD;
        [Inject]
        public var 15a:1ot;
        [Inject]
        public var 0WE:07w;
        [Inject]
        public var 0n2:0io;
        private var 1m2:Timer;

        public function 1X(){
            this.1m2 = new Timer(800, 1);
            super();
        }

        override public function initialize():void{
            this.view.visible = false;
            this.view.cp();
            this.view.1Bf(this.15a.1Ui.R, this.15a.1Ui.0e8);
            var _local1:Boolean = (((this.0WE.1Ui.R > this.15a.1Ui.R)) || ((((this.0WE.1Ui.R == this.15a.1Ui.R)) && ((this.0WE.1Ui.0e8 < this.15a.1Ui.0e8)))));
            var _local2:0EB = ((_local1) ? this.0WE.1Ui : this.15a.1Ui);
            this.view.1Fy(_local2.R, _local2.0e8);
            this.view.close.add(this.D2);
            this.0K5.addOnce(this.0-9);
        }

        private function D2():void{
            this.0n2.dispatch(new ArenaLeaderboard());
        }

        private function 0-9():void{
            this.1m2.addEventListener(TimerEvent.TIMER, this.1xo);
            this.1m2.start();
        }

        private function 1xo(_arg1:TimerEvent):void{
            this.1m2.removeEventListener(TimerEvent.TIMER, this.1xo);
            this.view.visible = true;
        }

        override public function destroy():void{
            this.view.close.remove(this.D2);
        }


    }
}//package 1UB

