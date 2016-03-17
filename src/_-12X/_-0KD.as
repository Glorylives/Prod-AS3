// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//12X.0KD

package 12X{
    import 1t6.Dialog;
    import _Jy._1HZ;
    import AO.du;
    import XF.lY;

    public class 0KD extends Dialog {

        public var cancel:_1HZ;
        public var register:_1HZ;

        public function 0KD(_arg1:String, _arg2:Object=null){
            super(du.Zj, _arg1, du.6i, du.1xQ, "/needRegister", _arg2);
            this.cancel = new lY(this, LEFT_BUTTON);
            this.register = new lY(this, RIGHT_BUTTON);
        }

    }
}//package 12X

