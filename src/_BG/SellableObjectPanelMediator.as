// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.SellableObjectPanelMediator

package BG{
    import 1uF.1Mf;
    import aq.Account;
    import gx.1Nb;
    import 1qg.0io;
    import com.company.assembleegameclient.util.Currency;
    import 1PB.pu;
    import com.company.assembleegameclient.objects.SellableObject;
    import 12X.0KD;

    public class SellableObjectPanelMediator extends 1Mf {

        public static const TEXT:String = "SellableObjectPanelMediator.text";

        [Inject]
        public var account:Account;
        [Inject]
        public var 0j3:1Nb;
        [Inject]
        public var view:SellableObjectPanel;
        [Inject]
        public var 0n2:0io;


        override public function initialize():void{
            this.view.0E3(this.0j3.player.0b0());
            this.view.rQ.add(this.u2);
        }

        override public function destroy():void{
            this.view.rQ.remove(this.u2);
        }

        private function u2(_arg1:SellableObject):void{
            if (this.account.0D3())
            {
                if ((((_arg1.currency_ == Currency.1Jg)) && (((_arg1.022() * _arg1.price_) > this.0j3.player.credits_))))
                {
                    this.0n2.dispatch(new pu());
                } else
                {
                    this.view.gs_.gsc_.buy(_arg1.objectId_, _arg1.022());
                }
            } else
            {
                this.0n2.dispatch(this.1au(_arg1));
            }
        }

        private function 1au(_arg1:SellableObject):0KD{
            return (new 0KD(TEXT, {type:Currency.19M(_arg1.currency_)}));
        }


    }
}//package BG

