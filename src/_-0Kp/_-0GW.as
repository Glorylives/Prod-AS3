// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Kp.0GW

package 0Kp{
    import 1cI.1iz;
    import _0BB.Fu;
    import aq.Account;

    public class 0GW extends 1iz {

        [Inject]
        public var client:Fu;
        [Inject]
        public var account:Account;
        public var 1Oi:String;
        public var xml:XML;


        override protected function startTask():void{
            this.client.1Je(8);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest(this.1Oi, this.account.1Y());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.xml = new XML(_arg2);
                1d5(true);
            } else
            {
                1d5(false, _arg2);
            }
        }


    }
}//package 0Kp

