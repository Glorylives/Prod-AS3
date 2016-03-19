// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0GQ.265

package 0GQ{
    import 1cI.1iz;
    import aq.Account;
    import qs.0U8;
    import _0BB.Fu;
    import 14V.*;

    public class 265 extends 1iz implements 0pz {

        [Inject]
        public var account:Account;
        [Inject]
        public var data:0U8;
        [Inject]
        public var client:Fu;


        override protected function startTask():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/account/changePassword", this.rM());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            ((_arg1) && (this.1Tn()));
            1d5(_arg1, _arg2);
        }

        private function rM():Object{
            var _local1:Object = {}
            _local1.guid = this.account.getUserId();
            _local1.password = this.data.1pf;
            _local1.newPassword = this.data.newPassword;
            return (_local1);
        }

        private function 1Tn():void{
            this.account.19R(this.account.getUserId(), this.data.newPassword);
            1d5(true);
        }


    }
}//package 0GQ

