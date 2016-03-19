// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Uq.1E7

package 0Uq{
    import 1cI.1iz;
    import aq.Account;
    import _0BB.Fu;
    import zf.1M6;
    import Wn.1Ev;
    import __AS3__.vec.Vector;
    import Wn.0EB;
    import com.company.util.1X3;

    public class 1E7 extends 1iz {

        private static const 1aK:String = "arena/getRecords";

        [Inject]
        public var account:Account;
        [Inject]
        public var client:Fu;
        [Inject]
        public var factory:0uI;
        [Inject]
        public var RM:1M6;
        public var filter:1Ev;


        override protected function startTask():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest(1aK, this.0J4());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            ((_arg1) && (this.0jK(_arg2)));
            1d5(_arg1, _arg2);
        }

        private function 0jK(_arg1:String):void{
            var _local2:Vector.<0EB> = this.factory.1Od(XML(_arg1).Record);
            this.filter.01d(_local2);
            this.RM.dispatch();
        }

        private function 0J4():Object{
            var _local1:Object = {type:this.filter.getKey()}
            1X3.1J7(_local1, this.account.1Y());
            return (_local1);
        }


    }
}//package 0Uq

