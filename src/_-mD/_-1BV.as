// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//mD.1BV

package mD{
    import 1cI.1iz;
    import aq.Account;
    import 1Bt.l-;
    import _0BB._Fu;

    public class 1BV extends 1iz {

        [Inject]
        public var account:Account;
        [Inject]
        public var model:l-;
        [Inject]
        public var client:_Fu;


        override protected function startTask():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/account/getBeginnerPackageTimeLeft", this.account.1Y());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            this.1Zm(_arg2);
        }

        private function 1Zm(_arg1:String):void{
            var _local2:int = new XML(_arg1)[0];
            this.model.1Xs(_local2);
            1d5((_local2 > 0));
        }


    }
}//package mD

