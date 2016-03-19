// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0av.05H

package 0av{
    import 1cI.1iz;
    import 1PV.aN;
    import aq.0VE;
    import 1qg.0io;
    import 0Fr.1da;
    import _0BB.Fu;
    import com.company.assembleegameclient.util.offer.Offer;
    import 1t6.tg;
    import 14V.*;

    public class 05H extends 1iz implements 0WB {

        [Inject]
        public var steam:aN;
        [Inject]
        public var payment:0VE;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var u3:1da;
        [Inject]
        public var client:Fu;
        [Inject]
        public var FC:Fu;
        private var offer:Offer;


        override protected function startTask():void{
            this.u3.debug("start task");
            this.offer = this.payment.offer;
            this.client.1Je(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/steamworks/purchaseOffer", {
                steamid:this.steam.0RA(),
                data:this.offer.data_
            });
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.1gu();
            } else
            {
                this.0yw(_arg2);
            }
        }

        private function 1gu():void{
            this.u3.debug("purchaseOffer complete");
            this.steam.1wq.addOnce(this.1yY);
        }

        private function 1yY(_arg1:uint, _arg2:String, _arg3:Boolean):void{
            this.u3.debug("payment authorized {0},{1},{2}", [_arg1, _arg2, _arg3]);
            this.FC.1Je(2);
            this.client.complete.addOnce(this.0HT);
            this.FC.sendRequest("/steamworks/finalizePurchase", {
                appid:_arg1,
                orderid:_arg2,
                authorized:((_arg3) ? 1 : 0)
            });
        }

        private function 0HT(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.0GC();
            } else
            {
                this.1e7(_arg2);
            }
        }

        private function 0GC():void{
            this.u3.debug("purchaseFinalized complete");
            1d5(true);
        }

        private function 1e7(_arg1:String):void{
            this.u3.debug("purchaseFinalized error {0}", [_arg1]);
            this.0n2.dispatch(new tg(("Error: " + _arg1)));
            1d5(false);
        }

        private function 0yw(_arg1:String):void{
            this.u3.debug("purchaseOffer request error {0}", [_arg1]);
            this.0n2.dispatch(new tg(("Error: " + _arg1)));
            1d5(false);
        }


    }
}//package 0av

