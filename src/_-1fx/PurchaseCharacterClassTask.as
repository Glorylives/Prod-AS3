// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1fx.PurchaseCharacterClassTask

package 1fx{
    import 1cI.1iz;
    import aq.Account;
    import _0BB.Fu;
    import WZ.0Te;
    import 0Fr.1da;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.util.1X3;
    import com.company.assembleegameclient.appengine._Cp;

    public class PurchaseCharacterClassTask extends 1iz {

        [Inject]
        public var classType:int;
        [Inject]
        public var account:Account;
        [Inject]
        public var client:Fu;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var u3:1da;


        override protected function startTask():void{
            this.u3.info("PurchaseCharacterClassTask.startTask: Started ");
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/char/purchaseClassUnlock", this.21S());
        }

        public function 21S():Object{
            var _local1:Object = {};
            _local1.game_net_user_id = this.account.0yO();
            _local1.game_net = this.account.Gc();
            _local1.play_platform = this.account.229();
            _local1.do_login = Parameters.1cS;
            _local1.classType = this.classType;
            1X3.1J7(_local1, this.account.1Y());
            return (_local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            this.u3.info("PurchaseCharacterClassTask.onComplete: Ended ");
            ((_arg1) && (this.9Y()));
            1d5(_arg1, _arg2);
        }

        private function 9Y():void{
            this.SP.0gU(this.classType, _Cp.5o);
            1d5(true);
        }


    }
}//package 1fx

