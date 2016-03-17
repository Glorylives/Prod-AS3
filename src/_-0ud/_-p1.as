// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ud.p1

package 0ud{
    import 1cI.1iz;
    import aq.Account;
    import 1ki.0e0;
    import _0BB.Fu;
    import 14V.*;

    public class p1 extends 1iz implements 27Q {

        [Inject]
        public var account:Account;
        [Inject]
        public var  each:0e0;
        [Inject]
        public var local:Z8;
        [Inject]
        public var client:Fu;


        override protected function startTask():void{
            this.client.1Je(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/kongregate/getcredentials", this. each.0To());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            ((_arg1) && (this.0u9(_arg2)));
            1d5(_arg1, _arg2);
        }

        private function 0u9(_arg1:String):void{
            var _local2:XML = new XML(_arg1);
            this.account.19R(_local2.GUID, _local2.Secret);
            this.account.0HY(_local2.PlatformToken);
            1d5(true);
        }


    }
}//package 0ud

