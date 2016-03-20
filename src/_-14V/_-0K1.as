// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//14V.0K1

package 14V{
    import 1cI.1iz;
    import aq.Account;
    import _0BB._Fu;
    import 1qg.0io;
    import WZ.0Te;

    public class 0K1 extends 1iz {

        [Inject]
        public var account:Account;
        [Inject]
        public var price:int;
        [Inject]
        public var client:_Fu;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var model:0Te;


        override protected function startTask():void{
            this.client.1Je(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/account/purchaseCharSlot", this.account.1Y());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            ((_arg1) && (this.5K()));
            1d5(_arg1, _arg2);
        }

        private function 5K():void{
            this.model.1gd((this.model.yP() + 1));
            this.model.1QN(-(this.price));
        }


    }
}//package 14V

