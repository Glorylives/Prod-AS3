// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.0jd

package 1PB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 1t6.Dialog;
    import XF.lY;

    public class 0jd extends Sprite {

        private static const TEXT:String = "In order to have more than one character slot, you must be a registered user.";
        private static const TITLE:String = "Not Registered";
        private static const CANCEL:String = "Cancel";
        private static const cK:String = "Register";
        private static const oA:String = "/charSlotNeedRegister";

        public var cancel:_1HZ;
        public var register:_1HZ;
        private var 1WQ:Dialog;

        public function 0jd(){
            this.1NB();
            this.fp();
        }

        private function 1NB():void{
            this.1WQ = new Dialog(TITLE, TEXT, CANCEL, cK, oA);
            addChild(this.1WQ);
        }

        private function fp():void{
            this.cancel = new lY(this.1WQ, Dialog.LEFT_BUTTON);
            this.register = new lY(this.1WQ, Dialog.RIGHT_BUTTON);
        }


    }
}//package 1PB

