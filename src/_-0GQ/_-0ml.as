// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0GQ.0ml

package 0GQ{
    import 1cI.1iz;
    import aq.Account;
    import 1Bg.fQ;
    import _0BB.Fu;
    import 1fx.1Zh;
    import 14V.*;

    public class 0ml extends 1iz implements JE {

        [Inject]
        public var account:Account;
        [Inject]
        public var Ud:fQ;
        [Inject]
        public var client:Fu;


        override protected function startTask():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/account/sendVerifyEmail", this.account.1Y());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.21l();
            } else
            {
                this.0ys(_arg2);
            };
        }

        private function 21l():void{
            this.09j();
            1d5(true);
        }

        private function 09j():void{
            var _local1:1Zh = new 1Zh();
            _local1.category = "account";
            _local1.1D9 = "verifyEmailSent";
            this.Ud.dispatch(_local1);
        }

        private function 0ys(_arg1:String):void{
            this.account.clear();
            1d5(false);
        }


    }
}//package 0GQ

