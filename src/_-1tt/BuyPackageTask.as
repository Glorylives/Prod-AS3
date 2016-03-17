// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1tt.BuyPackageTask

package 1tt{
    import 1cI.1iz;
    import _0BB.Fu;
    import aq.Account;
    import WZ.0Te;
    import com.company.assembleegameclient.map.04H;
    import 0wP.kM;
    import dq.263;
    import AO.du;

    public class BuyPackageTask extends 1iz {

        private static const 0jQ:Array = ["Package is not Available", "Package is not Available Right Now", "Invalid PackageId"];

        [Inject]
        public var client:Fu;
        [Inject]
        public var account:Account;
        [Inject]
        public var 24c:DT;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var 04N:04H;
        [Inject]
        public var ww:kM;
        [Inject]
        public var 0Kx:263;


        override protected function startTask():void{
            var _local1:Object = this.account.1Y();
            _local1.packageId = this.ww.packageID;
            this.SP.1QN(-(this.ww.price));
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/account/purchasePackage", _local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            var _local3:XML = new XML(_arg2);
            if (_arg1)
            {
                this.0cY(_local3);
            } else
            {
                this.UM(_local3);
            };
            1d5(true, _arg2);
        }

        private function 0cY(_arg1:XML):void{
            if (this.ww.quantity != kM.1W5)
            {
                this.ww.quantity--;
            };
            this.ww.numPurchased++;
            this.04N.dispatch(du.true , 11495650);
            this.0Kx.dispatch();
            if (this.ww.quantity <= 0)
            {
                this.24c.start();
            };
        }

        private function UM(_arg1:XML):void{
            this.SP.1QN(this.ww.price);
            this.by(_arg1[0]);
        }

        private function by(_arg1:String):void{
            this.04N.dispatch(_arg1, 16744576);
            if (0jQ.indexOf(_arg1) != -1)
            {
                this.24c.start();
            };
        }


    }
}//package 1tt

