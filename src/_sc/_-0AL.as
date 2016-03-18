// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//sC.0AL

package sC{
    import 1uF.1Mf;
    import _ZE.ArenaPortalPanel;
    import 1E8.Rc;
    import 0qs.J1;
    import 1qg.0io;
    import 1qg.11S;
    import gx.1Nb;
    import Wn.1ot;
    import _0OG._22M;
    import 0UV.1P9;
    import aq.Account;
    import 1t6.Dialog;
    import com.company.assembleegameclient.util.Currency;
    import 0Uq.11B;
    import 1nR.nw;
    import 1r4.1T2;
    import AO.du;
    import 12X.0KD;
    import 1PB.pu;
    import flash.events.Event;

    public class 0AL extends 1Mf {

        public static const TEXT:String = "SellableObjectPanelMediator.text";

        [Inject]
        public var view:ArenaPortalPanel;
        [Inject]
        public var 1GI:Rc;
        [Inject]
        public var 27M:J1;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var KW:11S;
        [Inject]
        public var 0j3:1Nb;
        [Inject]
        public var 15a:1ot;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var 1Wv:1P9;
        [Inject]
        public var account:Account;
        private var 1WQ:Dialog;


        override public function initialize():void{
            this.view.y6.add(this.Ul);
        }

        private function Ul(_arg1:int):void{
            if ((_arg1 == Currency.1Jg))
            {
                this.20k();
            } else
            {
                this.0UH();
            };
        }

        private function 0UH():void{
            var _local1:11B;
            var _local2:nw;
            if (this.0j3.player.1TS)
            {
                this.15a.1FI();
                _local1 = this.kf.getInstance(11B);
                _local1.start();
                _local2 = (this.27M.lh(1T2.ENTER_ARENA) as nw);
                _local2.currency = Currency.FAME;
                this.1GI.sendMessage(_local2);
                this.1Wv.dispatch();
            } else
            {
                this.1WQ = new Dialog(du.07o, du.23B, du.0ZF, null, null);
                this.1WQ.addEventListener(Dialog.LEFT_BUTTON, this.0oR);
                this.0n2.dispatch(this.1WQ);
            };
        }

        private function 20k():void{
            var _local1:11B;
            var _local2:nw;
            if (!this.account.0D3())
            {
                this.0n2.dispatch(new 0KD(TEXT, {type:Currency.19M(Currency.1Jg)}));
            } else
            {
                if (!this.0j3.player.1TS)
                {
                    this.1WQ = new Dialog(du.07o, du.23B, du.0ZF, null, null);
                    this.1WQ.addEventListener(Dialog.LEFT_BUTTON, this.0oR);
                    this.0n2.dispatch(this.1WQ);
                } else
                {
                    if (this.0j3.player.credits_ < 50)
                    {
                        this.0n2.dispatch(new pu());
                    } else
                    {
                        this.15a.1FI();
                        _local1 = this.kf.getInstance(11B);
                        _local1.start();
                        _local2 = (this.27M.lh(1T2.ENTER_ARENA) as nw);
                        _local2.currency = Currency.1Jg;
                        this.1GI.sendMessage(_local2);
                        this.1Wv.dispatch();
                    };
                };
            };
        }

        private function 0oR(_arg1:Event):void{
            if (((this.1WQ) && (this.1WQ.hasEventListener(Dialog.LEFT_BUTTON))))
            {
                this.1WQ.removeEventListener(Dialog.LEFT_BUTTON, this.0oR);
            };
            this.1WQ = null;
            this.KW.dispatch();
        }


    }
}//package sC

