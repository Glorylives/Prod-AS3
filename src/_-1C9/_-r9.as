// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1C9.r9

package 1C9{
    import aq.Account;
    import 1qg.0io;
    import WZ.0Te;
    import 1Bg.1NA;
    import 1Bg.uK;
    import 1cI.3D;
    import 1fx.PurchaseCharacterClassTask;
    import 1fx.0Jj;
    import 14V.BM;
    import 12X.0KD;
    import 1cI.0bm;
    import 1cI.0wV;
    import 1cI.06P;
    import 1cI.9f;
    import 1PB.pu;
    import AO.du;
    import com.company.assembleegameclient.objects.ObjectLibrary;

    public class r9 {

        [Inject]
        public var classType:int;
        [Inject]
        public var account:Account;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var EI:1NA;
        [Inject]
        public var 21G:uK;
        [Inject]
        public var ES:3D;
        [Inject]
        public var 1LU:PurchaseCharacterClassTask;
        [Inject]
        public var failure:0Jj;
        [Inject]
        public var 1ka:BM;
        private var cost:int;


        public function execute():void{
            this.cost = this.0Eo();
            if (!this.account.0D3())
            {
                this.S8();
            } else
            {
                if (this.0c8())
                {
                    this.bg();
                } else
                {
                    this.1Fg();
                };
            };
        }

        private function S8():void{
            this.0n2.dispatch(new 0KD("In order to unlock a class type you must be a registered user."));
            this.EI.dispatch();
        }

        private function bg():void{
            this.SP.1QN((-1 * this.cost));
            this.21G.dispatch(this.classType);
            var _local1:0bm = new 0bm();
            _local1.add(new 0wV(this.1LU, this.1ka, this.26G()));
            _local1.add(new 06P(this.EI));
            this.ES.add(_local1);
            _local1.start();
        }

        private function 26G():9f{
            this.failure.23t = this.1LU;
            return (this.failure);
        }

        private function 1Fg():void{
            var _local1:pu = new pu();
            _local1.12Z(du.0ap, {cost:this.cost});
            this.0n2.dispatch(_local1);
            this.EI.dispatch();
        }

        private function 0Eo():int{
            return (ObjectLibrary.GD[this.classType].UnlockCost);
        }

        private function 0c8():Boolean{
            return (((!(this.cost)) || ((this.cost <= this.SP.0ce()))));
        }


    }
}//package 1C9

