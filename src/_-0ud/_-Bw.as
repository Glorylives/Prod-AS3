// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ud.Bw

package 0ud{
    import 1cI.1iz;
    import com.company.assembleegameclient.util.offer.Offer;
    import 1ki.0e0;
    import lq.1r8;
    import 14V.*;

    public class Bw extends 1iz implements 1Xt {

        [Inject]
        public var offer:Offer;
        [Inject]
        public var  each:0e0;
        [Inject]
        public var 7X:1r8;


        override protected function startTask():void{
            var _local1:Object = {
                identifier:this.offer.id_,
                data:this.offer.data_
            };
            this. each.1oG.addOnce(this.nV);
            this. each.purchaseItems(_local1);
        }

        private function nV(_arg1:Object):void{
            this.7X.dispatch();
            1d5(true);
        }


    }
}//package 0ud

