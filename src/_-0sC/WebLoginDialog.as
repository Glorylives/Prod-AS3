// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.WebLoginDialog

package 0sC{
    import 0hd.Frame;
    import _Jy._1HZ;
    import 0hd.pv;
    import com.company.assembleegameclient.ui.1im;
    import AO.du;
    import XF.lY;
    import flash.events.MouseEvent;
    import qs.1T5;
    import flash.events.KeyboardEvent;
    import flash.events.Event;
    import com.company.util.02E;

    public class WebLoginDialog extends Frame {

        public var cancel:_1HZ;
        public var signIn:_1HZ;
        public var forgot:_1HZ;
        public var register:_1HZ;
        private var email:pv;
        private var password:pv;
        private var 1HY:1im;
        private var 1K4:1im;

        public function WebLoginDialog(){
            super(du.106, du.0Q0, du.yV, "/signIn");
            this.0nT();
            this.forgot = new lY(this.1HY, MouseEvent.CLICK);
            this.register = new lY(this.1K4, MouseEvent.CLICK);
            this.cancel = new lY(0er, MouseEvent.CLICK);
            this.signIn = new _1HZ(1T5);
        }

        private function 0nT():void{
            this.email = new pv(du.0wX, false);
            I2(this.email);
            this.password = new pv(du.1Il, true);
            I2(this.password);
            this.1HY = new 1im(12, false, du.04k);
            0-C(this.1HY);
            this.1K4 = new 1im(12, false, du.jl);
            0-C(this.1K4);
            9u.addEventListener(MouseEvent.CLICK, this.1Mi);
            addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if (_arg1.keyCode == 02E.ENTER)
            {
                this.1Oe();
            }
        }

        private function onCancel(_arg1:MouseEvent):void{
            this.cancel.dispatch();
        }

        private function 1Mi(_arg1:MouseEvent):void{
            this.1Oe();
        }

        private function 1Oe():void{
            var _local1:1T5;
            if (((this.0n5()) && (this.PH())))
            {
                _local1 = new 1T5();
                _local1.username = this.email.text();
                _local1.password = this.password.text();
                this.signIn.dispatch(_local1);
            }
        }

        private function PH():Boolean{
            var _local1 = !((this.password.text() == ""));
            if (!_local1)
            {
                this.password.07n(du.1Dy);
            }
            return (_local1);
        }

        private function 0n5():Boolean{
            var _local1 = !((this.email.text() == ""));
            if (!_local1)
            {
                this.email.07n(du.l2);
            }
            return (_local1);
        }

        public function 07n(_arg1:String):void{
            this.password.07n(_arg1);
        }

        public function h1(_arg1:String):void{
            this.email.inputText_.text = _arg1;
        }


    }
}//package 0sC

