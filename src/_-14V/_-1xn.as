// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//14V.1xn

package 14V{
    import 1cI.1iz;
    import aq.Account;
    import WZ.0Te;
    import _0BB._Fu;

    public class 1xn extends 1iz {

        [Inject]
        public var account:Account;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var client:_Fu;


        override protected function startTask():void{
            if (this.account.0D3())
            {
                this.Tu();
            } else
            {
                this.0Uk();
            }
        }

        private function Tu():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/account/verifyage", this.rM());
        }

        private function rM():Object{
            var _local1:Object = this.account.1Y();
            _local1.isAgeVerified = 1;
            return (_local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            ((_arg1) && (this.0Uk()));
            1d5(_arg1, _arg2);
        }

        private function 0Uk():void{
            this.SP.1eA(true);
            1d5(true);
        }


    }
}//package 14V

