// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1sW.ZK

package 1sW{
    import jH._1zp;
    import aq.Account;
    import jH.0eh;
    import 1qg.0io;
    import 0Fr.1da;
    import 0mS.1nT;
    import qG.0bJ;
    import WZ.0Te;
    import 1Bt.l-;
    import 1t6.ErrorDialog;
    import flash.net.URLVariables;
    import flash.net.URLRequest;
    import flash.net.URLRequestMethod;
    import flash.net.navigateToURL;
    import flash.external.ExternalInterface;
    import 0mS.0XK;

    public class ZK {

        private const 0Lt:String = "You cannot purchase gold on the testing server";
        private const 1M8:String = "You must be registered to buy gold";

        [Inject]
        public var 0dY:_1zp;
        [Inject]
        public var account:Account;
        [Inject]
        public var 1Zc:0eh;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var u3:1da;
        [Inject]
        public var 001:1nT;
        [Inject]
        public var 1qM:0io;
        [Inject]
        public var 0Gc:0bJ;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var 1JK:l-;


        public function execute():void{
            if (((this.14m()) && (this.account.0D3())))
            {
                this.1hB();
            } else
            {
                this.Cf();
            }
        }

        private function Cf():void{
            if (!this.14m())
            {
                this.1qM.dispatch(new ErrorDialog(this.0Lt));
            } else
            {
                if (!this.account.0D3())
                {
                    this.1qM.dispatch(new ErrorDialog(this.1M8));
                }
            }
        }

        private function 1hB():void{
            try
            {
                this.Pv();
            } catch(e:Error)
            {
                t();
            }
        }

        private function t():void{
            var _local1:String = this.0Gc.1HF(true);
            var _local2:URLVariables = new URLVariables();
            var _local3:URLRequest = new URLRequest();
            _local2.naid = this.account.Df();
            _local2.signedRequest = this.account.lf();
            if (this.1JK.oN())
            {
                _local2.createdat = this.1JK.1g6();
            } else
            {
                _local2.createdat = 0;
            }
            _local3.url = (_local1 + "/credits/kabamadd");
            _local3.method = URLRequestMethod.POST;
            _local3.data = _local2;
            navigateToURL(_local3, "_blank");
            this.u3.debug("Opening window from standalone player");
        }

        private function Pv():void{
            this.sd();
            this.u3.debug("Attempting External Payments");
            ExternalInterface.call("rotmg.KabamPayment.displayPaymentWall");
        }

        private function sd():void{
            var _local1:Number;
            if (!this.0dY.171)
            {
                if (this.1JK.oN())
                {
                    _local1 = this.1JK.1g6();
                } else
                {
                    _local1 = 0;
                }
                ExternalInterface.call(this.1Zc.2-7(), this.account.Df(), this.account.lf(), _local1);
                this.0dY.171 = true;
            }
        }

        private function 14m():Boolean{
            return (((!((this.001.yC() == 0XK.1xf))) || (this.SP.QH())));
        }


    }
}//package 1sW

