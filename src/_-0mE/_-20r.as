// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0mE.20r

package 0mE{
    import aq.Account;
    import 2D.0vh;

    public class 20r {

        [Inject]
        public var 08M:XML;
        [Inject]
        public var account:Account;


        public function execute():void{
            var _local2:XML;
            var _local1:0vh = (this.account as 0vh);
            if (this.08M.hasOwnProperty("KabamPaymentInfo"))
            {
                _local2 = XML(this.08M.KabamPaymentInfo);
                _local1.signedRequest = _local2.signedRequest;
                _local1.09w = _local2.naid;
            };
        }


    }
}//package 0mE

