// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.14Y

package 0sC{
    import 0hd.Frame;
    import _Jy._1HZ;
    import 0hd.pv;
    import AO.du;
    import XF.lY;
    import flash.events.MouseEvent;

    public class 14Y extends Frame {

        public var cancel:_1HZ;
        public var change:_1HZ;
        public var password_:pv;
        public var rr:pv;
        public var 96:pv;

        public function 14Y(){
            super(du.1Gq, "", du.Or, "/changePassword");
            this.password_ = new pv(du.0Fs, true);
            I2(this.password_);
            this.rr = new pv(du.21E, true);
            I2(this.rr);
            this.96 = new pv(du.1vz, true);
            I2(this.96);
            this.change = new lY(9u, MouseEvent.CLICK);
        }

        private function 0Ec():Boolean{
            var _local1 = (this.password_.text().length >= 5);
            if (!_local1)
            {
                this.password_.07n(du.18m);
            };
            return (_local1);
        }

        private function 1pD():Boolean{
            var _local2:String;
            var _local3:int;
            var _local1 = (this.rr.text().length >= 10);
            if (!_local1)
            {
                this.rr.07n(du.0u8);
            } else
            {
                _local2 = this.rr.text();
                _local3 = 0;
                while (_local3 < (_local2.length - 2))
                {
                    if ((((_local2.charAt(_local3) == _local2.charAt((_local3 + 1)))) && ((_local2.charAt((_local3 + 1)) == _local2.charAt((_local3 + 2))))))
                    {
                        this.rr.07n(du.0u8);
                        _local1 = false;
                    };
                    _local3++;
                };
            };
            return (_local1);
        }

        private function YF():Boolean{
            var _local1 = (this.rr.text() == this.96.text());
            if (!_local1)
            {
                this.96.07n(du.1vt);
            };
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

