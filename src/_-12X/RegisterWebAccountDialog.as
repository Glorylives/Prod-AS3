// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//12X.RegisterWebAccountDialog

package 12X{
    import 0hd.Frame;
    import _Jy._1HZ;
    import 0hd.pv;
    import 0hd.0xG;
    import qs.1T5;
    import AO.du;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import 1n4.1cA;
    import com.company.util.1wL;

    public class RegisterWebAccountDialog extends Frame {

        public var register:_1HZ;
        public var cancel:_1HZ;
        private var 0G1:pv;
        private var 1Ih:pv;
        private var 1RR:pv;
        private var checkbox:0xG;

        public function RegisterWebAccountDialog(){
            this.register = new _1HZ(1T5);
            this.cancel = new _1HZ();
            super(du.0qW, du.26S, du.0yn, "/kongregateRegisterAccount");
            this.0JR();
            this.k8();
            this.addEventListeners();
        }

        private function addEventListeners():void{
            0er.addEventListener(MouseEvent.CLICK, this.onCancel);
            9u.addEventListener(MouseEvent.CLICK, this.0VB);
        }

        private function 0JR():void{
            this.0G1 = new pv(du.0Xh, false);
            I2(this.0G1);
            this.1Ih = new pv(du.0nq, true);
            I2(this.1Ih);
            this.1RR = new pv(du.0xE, true);
            I2(this.1RR);
            this.checkbox = new 0xG("", false);
            var _local1 = (('<font color="#7777EE"><a href="' + Parameters.dynamic) + '" target="_blank">');
            var _local2 = "</a></font>.";
            this.checkbox.0W(new 1cA().setParams(du.11x, {
                link:_local1,
                _link:_local2
            }));
            Sv(this.checkbox);
        }

        private function k8():void{
            this.0G1.inputText_.tabIndex = 1;
            this.1Ih.inputText_.tabIndex = 2;
            this.1RR.inputText_.tabIndex = 3;
            this.checkbox.0Oj.tabIndex = 4;
            0er.tabIndex = 6;
            9u.tabIndex = 5;
            this.0G1.inputText_.tabEnabled = true;
            this.1Ih.inputText_.tabEnabled = true;
            this.1RR.inputText_.tabEnabled = true;
            this.checkbox.0Oj.tabEnabled = true;
            0er.tabEnabled = true;
            9u.tabEnabled = true;
        }

        private function onCancel(_arg1:MouseEvent):void{
            this.cancel.dispatch();
        }

        private function 0VB(_arg1:MouseEvent):void{
            var _local2:1T5;
            if (((((((this.0n5()) && (this.PH()))) && (this.KF()))) && (this.05D())))
            {
                _local2 = new 1T5();
                _local2.username = this.0G1.text();
                _local2.password = this.1Ih.text();
                this.register.dispatch(_local2);
            }
        }

        private function 05D():Boolean{
            var _local1:Boolean = this.checkbox.0nK();
            if (!_local1)
            {
                this.checkbox.07n(du.1bc);
            }
            return (_local1);
        }

        private function 0n5():Boolean{
            var _local1:Boolean = 1wL.0xF(this.0G1.text());
            if (!_local1)
            {
                this.0G1.07n(du.PU);
            }
            return (_local1);
        }

        private function PH():Boolean{
            var _local1 = (this.1Ih.text().length >= 5);
            if (!_local1)
            {
                this.1Ih.07n(du.4r);
            }
            return (_local1);
        }

        private function KF():Boolean{
            var _local1 = (this.1Ih.text() == this.1RR.text());
            if (!_local1)
            {
                this.1RR.07n(du.jw);
            }
            return (_local1);
        }

        public function 6y(_arg1:String):void{
            this.0G1.07n(_arg1);
        }


    }
}//package 12X

