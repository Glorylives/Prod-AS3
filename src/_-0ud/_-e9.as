// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ud.e9

package 0ud{
    import 1cI.1iz;
    import aq.0VE;
    import aq.Account;
    import 1ki.0e0;
    import com.company.assembleegameclient.util.offer.Offer;
    import 14V.*;

    public class e9 extends 1iz implements 0WB {

        [Inject]
        public var payment:0VE;
        [Inject]
        public var account:Account;
        [Inject]
        public var  each:0e0;


        override protected function startTask():void{
            var _local1:Offer = this.payment.offer;
            var _local2:Object = {
                identifier:_local1.id_,
                data:_local1.data_
            }
            this. each.1oG.addOnce(this.nV);
            this. each.purchaseItems(_local2);
        }

        private function nV(_arg1:Object):void{
            1d5(true);
        }


    }
}//package 0ud

