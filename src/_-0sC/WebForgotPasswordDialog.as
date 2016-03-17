// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.WebForgotPasswordDialog

package 0sC{
    import 0hd.Frame;
    import _Jy._1HZ;
    import 0hd.pv;
    import com.company.assembleegameclient.ui.1im;
    import flash.events.MouseEvent;
    import XF.lY;

    public class WebForgotPasswordDialog extends Frame {

        public var cancel:_1HZ;
        public var submit:_1HZ;
        public var register:_1HZ;
        private var 0G1:pv;
        private var 1K4:1im;

        public function WebForgotPasswordDialog(){
            super("WebForgotPasswordDialog.title", "WebForgotPasswordDialog.leftButton", "WebForgotPasswordDialog.rightButton", "/forgotPassword");
            this.0G1 = new pv("WebForgotPasswordDialog.email", false);
            I2(this.0G1);
            this.1K4 = new 1im(12, false, "WebForgotPasswordDialog.register");
            0-C(this.1K4);
            9u.addEventListener(MouseEvent.CLICK, this.ph);
            this.cancel = new lY(0er, MouseEvent.CLICK);
            this.register = new lY(this.1K4, MouseEvent.CLICK);
            this.submit = new _1HZ(String);
        }

        private function ph(_arg1:MouseEvent):void{
            if (this.0n5())
            {
                disable();
                this.submit.dispatch(this.0G1.text());
            };
        }

        private function 0n5():Boolean{
            var _local1 = !((this.0G1.text() == ""));
            if (!_local1)
            {
                this.0G1.07n("Not a valid email address");
            };
            return (_local1);
        }

        public function 6y(_arg1:String):void{
            this.0G1.07n(_arg1);
        }


    }
}//package 0sC

