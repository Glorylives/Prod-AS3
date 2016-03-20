// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0av.0nW

package 0av{
    import 1cI.1iz;
    import aq.Account;
    import 1PV.aN;
    import 1qg.0io;
    import _0BB._Fu;
    import 1t6.tg;

    public class 0nW extends 1iz {

        private static const 0JP:String = "Error: ${error}";

        [Inject]
        public var account:Account;
        [Inject]
        public var steam:aN;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var client:_Fu;


        override protected function startTask():void{
            var _local1:Object = this.steam.0JS();
            this.client.1Je(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/steamworks/getcredentials", _local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.0u9(_arg2);
            } else
            {
                this.1_Jy(_arg2);
            }
            1d5(_arg1, _arg2);
        }

        private function 0u9(_arg1:String):void{
            var _local2:XML = new XML(_arg1);
            this.account.19R(_local2.GUID, _local2.Secret);
            this.account.0HY(_local2.PlatformToken);
        }

        private function 1_Jy(_arg1:String):void{
            var _local2:String = 0JP.replace("${error}", _arg1);
            var _local3:tg = new tg(_local2);
            this.0n2.dispatch(_local3);
        }


    }
}//package 0av

