// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.NM

package 0hd{
    import 1uF.1Mf;
    import 12X.MoneyFrame;
    import jH.1wW;
    import jH.0eh;
    import 0eZ.VO;
    import 1qg.0io;
    import 1qg.11S;
    import 1Bg.0vt;
    import 14V.0Pv;
    import 0Fr.1da;
    import 0xo.lZ;
    import Wn.1ot;
    import 1t6.ErrorDialog;
    import 1cI.9f;
    import 1UB.ContinueOrQuitDialog;
    import com.company.assembleegameclient.util.offer.Offer;

    public class NM extends 1Mf {

        [Inject]
        public var view:MoneyFrame;
        [Inject]
        public var model:1wW;
        [Inject]
        public var config:0eh;
        [Inject]
        public var 149:VO;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var 036:0vt;
        [Inject]
        public var 0G2:0Pv;
        [Inject]
        public var u3:1da;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var 21B:1ot;


        override public function initialize():void{
            this.view.buyNow.add(this.0Xf);
            this.view.cancel.add(this.onCancel);
            this.036.addOnce(this.0IC);
            this.Fo();
        }

        private function Fo():void{
            if (this.model.Qo)
            {
                this.view.initialize(this.model.Qo, this.config);
            } else
            {
                this.0MK();
            }
        }

        private function 0MK():void{
            this.0G2.1uB.addOnce(this.f9);
            this.0G2.start();
        }

        private function f9(_arg1:9f, _arg2:Boolean, _arg3:String=""):void{
            if (_arg2)
            {
                this.view.initialize(this.model.Qo, this.config);
            } else
            {
                this.0n2.dispatch(new ErrorDialog("Unable to get gold offer information"));
            }
        }

        override public function destroy():void{
            if (this.11u.ja.map.name_ == "Arena")
            {
                this.0n2.dispatch(new ContinueOrQuitDialog(this.21B.M-, true));
            }
            this.view.buyNow.add(this.0Xf);
            this.view.cancel.add(this.onCancel);
        }

        protected function 0Xf(_arg1:Offer, _arg2:String):void{
            this.u3.info("offer {0}, paymentMethod {1}", [_arg1, _arg2]);
            this.149.dispatch(_arg1, _arg2);
        }

        protected function 0IC():void{
            this.view.0VC();
        }

        protected function onCancel():void{
            this.closeDialogs.dispatch();
        }


    }
}//package 0hd

