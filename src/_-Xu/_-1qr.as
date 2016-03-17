// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Xu.1qr

package Xu{
    import 1n4.1cA;
    import AO.du;
    import com.company.assembleegameclient.util.offer.Offer;
    import 1n4.1Jo;
    import jH.*;

    public class 1qr implements 0eh {


        public function kp():Boolean{
            return (false);
        }

        public function 1nw():Boolean{
            return (false);
        }

        public function 1Ds(_arg1:Offer):1Jo{
            return (new 1cA().setParams(du.a-, {
                cost:_arg1.price_,
                currency:_arg1.currency_
            }));
        }

        public function 2-7():String{
            throw (new Error("No current support for new Kabam offer wall on Steam."));
        }


    }
}//package Xu

