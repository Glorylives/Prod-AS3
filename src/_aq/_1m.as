// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//aq.1m-

package _aq{
    import 14V.0K1;
    import 1cI.3D;
    import 1Bg.1zl;
    import 1qg.0io;
    import 1qg.11S;
    import WZ.0Te;
    import 1Bg.fQ;
    import 1PB.CharacterSlotNeedGoldDialog;
    import 12X.BuyingDialog;
    import 1cI.0bm;
    import 1cI.0wV;
    import 1cI.06P;
    import _1aA.CharacterSelectionAndNewsScreen;
    import 1cI.9f;
    import 1fx.1Zh;
    import 1t6.ErrorDialog;

    public class _1m {

        [Inject]
        public var price:int;
        [Inject]
        public var 1LU:0K1;
        [Inject]
        public var ES:3D;
        [Inject]
        public var 21r:1zl;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var KW:11S;
        [Inject]
        public var model:0Te;
        [Inject]
        public var account:Account;
        [Inject]
        public var Ud:fQ;


        public function execute():void{
            if (this.EF())
            {
                this.1Rp();
            } else
            {
                this.0Ez();
            }
        }

        private function EF():Boolean{
            return ((this.model.0ce() < this.model.CO()));
        }

        private function 1Rp():void{
            this.0n2.dispatch(new CharacterSlotNeedGoldDialog());
        }

        private function 0Ez():void{
            this.0n2.dispatch(new BuyingDialog());
            var _local1:0bm = new 0bm();
            _local1.add(new 0wV(this.1LU, this.1eW(), this.26G()));
            _local1.add(new 06P(this.KW));
            this.ES.add(_local1);
            _local1.start();
        }

        private function 1eW():9f{
            var _local1:0bm = new 0bm();
            _local1.add(new 06P(this.21r, new CharacterSelectionAndNewsScreen()));
            _local1.add(new 06P(this.Ud, this.0R()));
            return (_local1);
        }

        private function 0R():1Zh{
            var _local1:1Zh = new 1Zh();
            _local1.category = "credits";
            _local1.1D9 = "buyConverted";
            _local1.label = "Character Slot";
            _local1.value = this.price;
            return (_local1);
        }

        private function 26G():9f{
            return (new 06P(this.0n2, new ErrorDialog("Unable to complete character slot purchase")));
        }


    }
}//package aq

