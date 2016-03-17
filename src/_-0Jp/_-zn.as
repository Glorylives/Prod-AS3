// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Jp.zn

package 0Jp{
    import 1n4.1cA;
    import AO.du;
    import com.company.assembleegameclient.util.offer.Offer;
    import 1n4.1Jo;
    import jH.*;

    public class zn implements 0eh {


        public function kp():Boolean{
            return (false);
        }

        public function 1nw():Boolean{
            return (false);
        }

        public function 1Ds(_arg1:Offer):1Jo{
            return (new 1cA().setParams(du.0qe, {cost:_arg1.price_}));
        }

        public function 2-7():String{
            throw (new Error("No current support for new Kabam offer wall on Kongregate."));
        }


    }
}//package 0Jp

