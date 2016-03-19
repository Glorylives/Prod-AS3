// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Uq.11B

package 0Uq{
    import 1cI.1iz;
    import aq.Account;
    import _0BB.Fu;
    import Wn.07w;

    public class 11B extends 1iz {

        private static const 1aK:String = "arena/getPersonalBest";

        [Inject]
        public var account:Account;
        [Inject]
        public var client:Fu;
        [Inject]
        public var 0WE:07w;


        override protected function startTask():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest(1aK, this.0J4());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            ((_arg1) && (this.1np(_arg2)));
            1d5(_arg1, _arg2);
        }

        private function 1np(_arg1:String):void{
            var _local2:XML = XML(_arg1);
            this.0WE.1Ui.0e8 = _local2.Record.Time;
            this.0WE.1Ui.R = _local2.Record.WaveNumber;
        }

        private function 0J4():Object{
            return (this.account.1Y());
        }


    }
}//package 0Uq

