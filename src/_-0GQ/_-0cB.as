// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0GQ.0cB

package 0GQ{
    import 1cI.1iz;
    import aq.Account;
    import qs.1T5;
    import _0BB.Fu;
    import 14V.*;

    public class 0cB extends 1iz implements 27Q {

        [Inject]
        public var account:Account;
        [Inject]
        public var data:1T5;
        [Inject]
        public var client:Fu;


        override protected function startTask():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/account/verify", {
                guid:this.data.username,
                password:this.data.password
            });
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.19R(_arg2);
            }
            1d5(_arg1, _arg2);
        }

        private function 19R(_arg1:String):void{
            this.account.19R(this.data.username, this.data.password);
        }


    }
}//package 0GQ

