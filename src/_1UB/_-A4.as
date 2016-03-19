// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.A4

package 1UB{
    import 1uF.1Mf;
    import 1qg.0io;
    import 5z.zL;
    import aq.Account;
    import flash.events.MouseEvent;

    public class A4 extends 1Mf {

        [Inject]
        public var view:ArenaQueryPanel;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var vM:zL;
        [Inject]
        public var account:Account;


        override public function initialize():void{
            this.2-P();
        }

        private function 2-P():void{
            if (this.view.1iV)
            {
                this.view.1iV.addEventListener(MouseEvent.CLICK, this.oq);
                this.view.1TD.addEventListener(MouseEvent.CLICK, this.dw);
            } else
            {
                this.view.1TD.addEventListener(MouseEvent.CLICK, this.dw);
            }
        }

        override public function destroy():void{
            super.destroy();
        }

        protected function dw(_arg1:MouseEvent):void{
            this.0n2.dispatch(new 0eW());
        }

        protected function oq(_arg1:MouseEvent):void{
            this.0n2.dispatch(new ArenaLeaderboard());
        }


    }
}//package 1UB

