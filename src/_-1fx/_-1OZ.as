// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1fx.1OZ

package 1fx{
    import 1cI.1iz;
    import 0Fr.1da;
    import _0BB._Fu;
    import aq.Account;
    import 1Bg.uc;
    import 0Zf.OJ;

    public class 1OZ extends 1iz {

        [Inject]
        public var u3:1da;
        [Inject]
        public var client:_Fu;
        [Inject]
        public var account:Account;
        [Inject]
        public var 1Pq:uc;


        override protected function startTask():void{
            this.client.1Je(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/app/init", {game_net:this.account.Gc()});
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            var _local3:XML = XML(_arg2);
            ((_arg1) && (this.1Pq.dispatch(_local3)));
            this.0M5(_local3);
            1d5(_arg1, _arg2);
        }

        private function 0M5(_arg1:XML):void{
            if (_arg1 != null)
            {
                OJ.xml = _arg1;
            }
        }


    }
}//package 1fx

