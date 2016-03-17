// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.pu

package 1PB{
    import 1t6.Dialog;
    import _Jy._1HZ;
    import AO.du;
    import XF.lY;

    public class pu extends Dialog {

        private static const 1u5:String = "/notEnoughGold";

        public var cancel:_1HZ;
        public var UY:_1HZ;

        public function pu(){
            super(du.1Bo, du.00x, du.04x, du.0FB, 1u5);
            this.cancel = new lY(this, LEFT_BUTTON);
            this.UY = new lY(this, RIGHT_BUTTON);
        }

    }
}//package 1PB

