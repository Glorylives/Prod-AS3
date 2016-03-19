// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Os.62

package 1Os{
    import 1cI.1iz;
    import tn.1iY;
    import _0BB.Fu;
    import aq.Account;
    import WZ.0Te;
    import 1qg.0io;
    import tn.Lm;
    import 1t6.ErrorDialog;

    public class 62 extends 1iz {

        [Inject]
        public var skin:1iY;
        [Inject]
        public var client:Fu;
        [Inject]
        public var account:Account;
        [Inject]
        public var player:0Te;
        [Inject]
        public var 0n2:0io;


        override protected function startTask():void{
            this.skin.setState(Lm.PURCHASING);
            this.player.1QN(-(this.skin.cost));
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("account/purchaseSkin", this.QI());
        }

        private function QI():Object{
            var _local1:Object = this.account.1Y();
            _local1.skinType = this.skin.id;
            return (_local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.0cY();
            } else
            {
                this.UM(_arg2);
            }
            1d5(_arg1, _arg2);
        }

        private function 0cY():void{
            this.skin.setState(Lm.OWNED);
            this.skin.eR(true);
        }

        private function UM(_arg1:String):void{
            var _local2:ErrorDialog = new ErrorDialog(_arg1);
            this.0n2.dispatch(_local2);
            this.skin.setState(Lm.PURCHASABLE);
            this.player.1QN(this.skin.cost);
        }


    }
}//package 1Os

