// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0av.25T

package 0av{
    import 1cI.1iz;
    import aq.Account;
    import 1PV.aN;
    import com.company.assembleegameclient.util.offer.Offer;
    import 1qg.0io;
    import 1Bg.0vt;
    import 0Fr.1da;
    import _0BB.Fu;
    import lq.1r8;
    import flash.utils.setTimeout;
    import 1t6.tg;
    import 14V.*;

    public class 25T extends 1iz implements 1Xt {

        [Inject]
        public var account:Account;
        [Inject]
        public var steam:aN;
        [Inject]
        public var offer:Offer;
        [Inject]
        public var paymentMethod:String;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 036:0vt;
        [Inject]
        public var u3:1da;
        [Inject]
        public var first:Fu;
        [Inject]
        public var FC:Fu;
        [Inject]
        public var 7X:1r8;


        override protected function startTask():void{
            this.u3.debug("SteamPurchaseGoldTask startTask");
            this.steam.1wq.addOnce(this.1yY);
            this.first.1Je(2);
            this.first.complete.addOnce(this.onComplete);
            this.first.sendRequest("/steamworks/purchaseOffer", {
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
                this.reportError(_arg2);
            }
        }

        private function 1gu():void{
            this.u3.debug("SteamPurchaseGoldTask purchaseOffer confirmed by AppEngine");
            setTimeout(function ():void{
                036.dispatch();
            }, 1100);
        }

        private function 1yY(_arg1:uint, _arg2:String, _arg3:Boolean):void{
            if (_arg3 == false)
            {
                this.u3.debug("SteamPurchaseGoldTask payment canceled by user");
                1d5(true);
                this.FC.1Je(2);
                this.FC.sendRequest("/steamworks/finalizePurchase", {
                    appid:_arg1,
                    orderid:_arg2,
                    authorized:0
                });
            } else
            {
                this.u3.debug("SteamPurchaseGoldTask payment authorized by Steam");
                this.FC.1Je(2);
                this.FC.complete.addOnce(this.0HT);
                this.FC.sendRequest("/steamworks/finalizePurchase", {
                    appid:_arg1,
                    orderid:_arg2,
                    authorized:((_arg3) ? 1 : 0)
                });
            }
        }

        private function 0HT(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.0GC();
            } else
            {
                this.reportError(_arg2);
            }
        }

        private function 0GC():void{
            this.u3.debug("SteamPurchaseGoldTask purchase finalized");
            this.7X.dispatch();
            1d5(true);
        }

        private function reportError(_arg1:String):void{
            var _local2:String = ("Error: " + _arg1);
            this.u3.debug("finalize error {0}", [_local2]);
            this.0n2.dispatch(new tg(_local2));
            1d5(false);
        }


    }
}//package 0av

