// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0w9.1rS

package 0w9{
    import aq.Account;
    import 1Bt.l-;
    import 1qg.0io;
    import mD.1BV;
    import 14V.0Pv;
    import 1cI.3D;
    import 1cI.0wV;
    import 1cI.0bm;
    import 1cI.06P;
    import 0Ux.BeginnersPackageOfferDialog;
    import 1cI.9f;
    import 0Ux.0sE;

    public class 1rS {

        [Inject]
        public var account:Account;
        [Inject]
        public var model:l-;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var YV:1BV;
        [Inject]
        public var 0G2:0Pv;
        [Inject]
        public var ES:3D;


        public function execute():void{
            var _local1:0wV = new 0wV(this.YV, this.1eW(), this.26G());
            this.ES.add(_local1);
            _local1.start();
        }

        private function 1eW():9f{
            var _local1:0bm = new 0bm();
            ((this.account.0D3()) && (_local1.add(this.0G2)));
            _local1.add(new 06P(this.0n2, new BeginnersPackageOfferDialog()));
            return (_local1);
        }

        private function 26G():9f{
            var _local1:0bm = new 0bm();
            _local1.add(new 06P(this.0n2, new 0sE()));
            return (_local1);
        }


    }
}//package 0w9

