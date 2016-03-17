// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.ChooseNameRegisterDialog

package 1PB{
    import 1t6.Dialog;
    import _Jy._1HZ;
    import AO.du;
    import XF.lY;

    public class ChooseNameRegisterDialog extends Dialog {

        private static const 1u5:String = "/chooseNameNeedRegister";

        public var cancel:_1HZ;
        public var register:_1HZ;

        public function ChooseNameRegisterDialog(){
            super(du.Zj, du.On, du.6i, du.1xQ, 1u5);
            this.cancel = new lY(this, LEFT_BUTTON);
            this.register = new lY(this, RIGHT_BUTTON);
        }

    }
}//package 1PB

