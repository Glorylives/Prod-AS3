// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.Db

package 0uE{
    import 1uF.1Mf;
    import 1qg.0io;
    import 5z.zL;
    import aq.Account;
    import flash.events.MouseEvent;
    import 5z.0Nx;
    import 2--.CaretakerQueryDialog;
    import Ct.YardUpgraderView;

    public class Db extends 1Mf {

        [Inject]
        public var view:V0;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var vM:zL;
        [Inject]
        public var account:Account;


        override public function initialize():void{
            this.view.init(this.oW());
            this.2-P();
        }

        private function 2-P():void{
            if (this.view.1Pc)
            {
                this.view.1Pc.addEventListener(MouseEvent.CLICK, this.oq);
                this.view.1TD.addEventListener(MouseEvent.CLICK, this.dw);
            } else
            {
                this.view.1TD.addEventListener(MouseEvent.CLICK, this.dw);
            };
        }

        private function oW():Boolean{
            var _local1:int;
            if (!this.account.0D3())
            {
                return (false);
            };
            _local1 = this.vM.1zi();
            return ((_local1 < 0Nx.1JA));
        }

        override public function destroy():void{
            super.destroy();
        }

        protected function dw(_arg1:MouseEvent):void{
            this.0n2.dispatch(new CaretakerQueryDialog());
        }

        protected function oq(_arg1:MouseEvent):void{
            this.0n2.dispatch(new YardUpgraderView());
        }


    }
}//package 0uE

