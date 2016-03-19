// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.WebChangePasswordDialog

package 0sC{
    import 0hd.Frame;
    import _Jy._1HZ;
    import 0hd.pv;
    import AO.du;
    import XF.lY;
    import flash.events.MouseEvent;
    import qs.0U8;

    public class WebChangePasswordDialog extends Frame {

        public var cancel:_1HZ;
        public var change:_1HZ;
        public var password_:pv;
        public var rr:pv;
        public var 96:pv;

        public function WebChangePasswordDialog(){
            super(du.1Gq, du.0Bi, du.Or, "/changePassword");
            this.password_ = new pv(du.0Fs, true);
            I2(this.password_);
            this.rr = new pv(du.21E, true);
            I2(this.rr);
            this.96 = new pv(du.1vz, true);
            I2(this.96);
            this.cancel = new lY(0er, MouseEvent.CLICK);
            this.change = new lY(9u, MouseEvent.CLICK);
        }

        private function 1c0(_arg1:MouseEvent):void{
            var _local2:0U8;
            if (((((this.0Ec()) && (this.1pD()))) && (this.YF())))
            {
                disable();
                _local2 = new 0U8();
                _local2.1pf = this.password_.text();
                _local2.newPassword = this.rr.text();
                this.change.dispatch(_local2);
            }
        }

        private function 0Ec():Boolean{
            var _local1 = (this.password_.text().length >= 5);
            if (!_local1)
            {
                this.password_.07n(du.18m);
            }
            return (_local1);
        }

        private function 1pD():Boolean{
            var _local1 = (this.rr.text().length >= 5);
            if (!_local1)
            {
                this.rr.07n(du.0u8);
            }
            return (_local1);
        }

        private function YF():Boolean{
            var _local1 = (this.rr.text() == this.96.text());
            if (!_local1)
            {
                this.96.07n(du.1vt);
            }
            return (_local1);
        }

        public function 07n(_arg1:String):void{
            this.password_.07n(_arg1);
        }

        public function 0qp():void{
            this.password_.0qp();
            this.96.0qp();
            this.rr.0qp();
        }


    }
}//package 0sC

