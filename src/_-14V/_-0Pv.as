// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//14V.0Pv

package 14V{
    import 1cI.1iz;
    import aq.Account;
    import jH.1wW;
    import 0Fr.1da;
    import _0BB._Fu;
    import flash.utils.getTimer;
    import com.company.assembleegameclient.util.offer.Offers;

    public class 0Pv extends 1iz {

        [Inject]
        public var account:Account;
        [Inject]
        public var model:1wW;
        [Inject]
        public var u3:1da;
        [Inject]
        public var client:_Fu;
        private var target:String;
        private var guid:String;


        override protected function startTask():void{
            this.target = (this.account.00j() + "/getoffers");
            this.guid = this.account.getUserId();
            this.0lU();
            this.1FB();
        }

        private function 0lU():void{
            var _local1:int = getTimer();
            if (((!((this.guid == this.model.Od))) || (((_local1 - this.model.1ec) > 1wW.Z1))))
            {
                this.model.Od = this.guid;
                this.model.1ec = _local1;
            }
        }

        private function 1FB():void{
            this.client.1Je(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest(this.target, this.0Yp());
        }

        private function 0Yp():Object{
            var _local1:Object = this.account.1Y();
            _local1.time = this.model.1ec;
            _local1.game_net_user_id = this.account.0yO();
            _local1.game_net = this.account.Gc();
            _local1.play_platform = this.account.229();
            return (_local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.bK(_arg2);
            } else
            {
                this.1Nc(_arg2);
            }
            1d5(_arg1);
        }

        private function bK(_arg1:String):void{
            this.model.Qo = new Offers(new XML(_arg1));
        }

        private function 1Nc(_arg1:String):void{
            this.u3.error(_arg1);
        }


    }
}//package 14V

