// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1I4.Fh

package 1I4{
    import 1cI.1iz;
    import aq.Account;
    import c4.Mo;
    import 1qg.0io;
    import _0BB._Fu;
    import 1tr.0SX;
    import Av.TV;
    import 14V.*;

    public class Fh extends 1iz implements h3 {

        [Inject]
        public var account:Account;
        [Inject]
        public var parameters:Mo;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var client:_Fu;
        private var kabam:0SX;


        override protected function startTask():void{
            this.kabam = (this.account as 0SX);
            this.kabam.signedRequest = this.parameters.1Uz();
            this.kabam.userSession = this.parameters.0WN();
            if (this.kabam.userSession == null)
            {
                this.0n2.dispatch(new TV());
                1d5(false);
            } else
            {
                this.sendRequest();
            }
        }

        private function sendRequest():void{
            var _local1:Object = {
                signedRequest:this.kabam.signedRequest,
                entrytag:this.account.0lC()
            }
            this.client.1Je(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/kabam/getcredentials", _local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            ((_arg1) && (this.0u9(_arg2)));
            1d5(_arg1, _arg2);
        }

        private function 0u9(_arg1:String):void{
            var _local2:XML = new XML(_arg1);
            this.account.19R(_local2.GUID, _local2.Secret);
            this.account.0HY(_local2.PlatformToken);
        }


    }
}//package 1I4

