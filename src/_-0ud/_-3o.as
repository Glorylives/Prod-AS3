// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ud.3o

package 0ud{
    import 1cI.1iz;
    import qs.1T5;
    import 1ki.0e0;
    import aq.Account;
    import 1Bg.fQ;
    import _0BB._Fu;
    import 1fx.1Zh;
    import 14V.*;

    public class 3o extends 1iz implements 1Cc {

        [Inject]
        public var data:1T5;
        [Inject]
        public var  each:0e0;
        [Inject]
        public var account:Account;
        [Inject]
        public var Ud:fQ;
        [Inject]
        public var client:_Fu;


        override protected function startTask():void{
            this.client.1Je(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/kongregate/register", this.rM());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            ((_arg1) && (this.1ev(_arg2)));
            1d5(_arg1, _arg2);
        }

        private function rM():Object{
            var _local1:Object = this. each.0To();
            _local1.newGUID = this.data.username;
            _local1.newPassword = this.data.password;
            _local1.entrytag = this.account.0lC();
            return (_local1);
        }

        private function 1ev(_arg1:String):void{
            this.03l(_arg1);
            this.0Ac();
        }

        private function 0Ac():void{
            var _local1:1Zh = new 1Zh();
            _local1.category = "kongregateAccount";
            _local1.1D9 = "accountRegistered";
            this.Ud.dispatch(_local1);
        }

        private function 03l(_arg1:String):void{
            var _local2:XML = new XML(_arg1);
            this.account.19R(_local2.GUID, _local2.Secret);
            this.account.0HY(_local2.PlatformToken);
        }


    }
}//package 0ud

