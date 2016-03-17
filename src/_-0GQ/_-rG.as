// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0GQ.rG

package 0GQ{
    import 1cI.1iz;
    import qs.1T5;
    import aq.Account;
    import WZ.0Te;
    import _0BB.Fu;
    import 14V.*;

    public class rG extends 1iz implements 1Cc {

        [Inject]
        public var data:1T5;
        [Inject]
        public var account:Account;
        [Inject]
        public var model:0Te;
        [Inject]
        public var client:Fu;


        override protected function startTask():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/account/register", this.rM());
        }

        private function rM():Object{
            var _local1:Object = {};
            _local1.guid = this.account.getUserId();
            _local1.newGUID = this.data.username;
            _local1.newPassword = this.data.password;
            _local1.entrytag = this.account.0lC();
            _local1.isAgeVerified = 1;
            return (_local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            ((_arg1) && (this.OB()));
            1d5(_arg1, _arg2);
        }

        private function OB():void{
            this.model.1eA(true);
            this.account.19R(this.data.username, this.data.password);
        }


    }
}//package 0GQ

