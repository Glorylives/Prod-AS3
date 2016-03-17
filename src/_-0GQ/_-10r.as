// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0GQ.10r

package 0GQ{
    import 1cI.1iz;
    import aq.0VE;
    import jH.1wW;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.util.99;
    import flash.net.navigateToURL;
    import flash.net.URLRequest;
    import 14V.*;

    public class 10r extends 1iz implements 0WB {

        [Inject]
        public var data:0VE;
        [Inject]
        public var model:1wW;


        override protected function startTask():void{
            Parameters.data_.paymentMethod = this.data.paymentMethod;
            Parameters.save();
            var _local1:99 = 99.1Mu(this.data.paymentMethod);
            var _local2:String = _local1.tc(this.model.Qo.tok, this.model.Qo.exp, this.data.offer);
            navigateToURL(new URLRequest(_local2), "_blank");
            1d5(true);
        }


    }
}//package 0GQ

