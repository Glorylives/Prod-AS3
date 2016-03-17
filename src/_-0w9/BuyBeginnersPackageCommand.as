// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0w9.BuyBeginnersPackageCommand

package 0w9{
    import AO.du;
    import aq.Account;
    import 1Bt.l-;
    import 1qg.0io;
    import 0eZ.1Cy;
    import 1g8.0Hw;
    import 0eZ.5l;
    import 2D.0vh;
    import 1tr.0SX;
    import aq.0VE;
    import 12X.0KD;

    public class BuyBeginnersPackageCommand {

        private static const 20O:String = du.1SX;//"BuyBeginnersPackageCommand.registerDialog"

        [Inject]
        public var account:Account;
        [Inject]
        public var model:l-;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 6k:1Cy;
        [Inject]
        public var 13l:0Hw;
        [Inject]
        public var 1yT:5l;


        public function execute():void{
            if (this.account.0D3())
            {
                this.1yr();
            } else
            {
                this.0-Y();
            };
        }

        private function 1yr():void{
            if ((((this.account is 0vh)) || ((this.account is 0SX))))
            {
                this.1yT.dispatch();
            } else
            {
                this.130();
            };
        }

        private function 130():void{
            var _local1:0VE = new 0VE();
            _local1.offer = this.model.9W();
            this.13l.dispatch(_local1);
        }

        private function 0-Y():void{
            this.0n2.dispatch(new 0KD(20O));
        }


    }
}//package 0w9

