// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0GQ.a4

package 0GQ{
    import 1cI.1iz;
    import aq.Account;
    import com.company.assembleegameclient.util.offer.Offer;
    import jH.1wW;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.util.offer.Offers;
    import com.company.assembleegameclient.util.99;
    import flash.net.navigateToURL;
    import flash.net.URLRequest;
    import 14V.*;

    public class a4 extends 1iz implements 1Xt {

        [Inject]
        public var account:Account;
        [Inject]
        public var offer:Offer;
        [Inject]
        public var 21D:1wW;
        [Inject]
        public var paymentMethod:String;


        override protected function startTask():void{
            Parameters.data_.paymentMethod = this.paymentMethod;
            Parameters.save();
            var _local1:Offers = this.21D.Qo;
            var _local2:99 = 99.1Mu(this.paymentMethod);
            var _local3:String = _local2.tc(_local1.tok, _local1.exp, this.offer);
            navigateToURL(new URLRequest(_local3), "_blank");
            1d5(true);
        }


    }
}//package 0GQ

