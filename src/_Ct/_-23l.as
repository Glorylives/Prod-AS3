// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.23l

package Ct{
    import 1uF.1Mf;
    import 5z.0OH;
    import 21k.0xU;
    import 21k.0LB;
    import 5z.zL;
    import 2--.PetPicker;

    import 5z.0tK;
    import 5z.0cu;
    import 5z.1Vb;


    public class 23l extends 1Mf {

        [Inject]
        public var view:1O6;
        [Inject]
        public var 1j2:0OH;
        [Inject]
        public var yN:0xU;
        [Inject]
        public var 1fR:0LB;
        [Inject]
        public var 1G5:zL;
        [Inject]
        public var pw:PetPicker;
        private var 0Er:Vector.<uX>;

        public function 23l(){
            this.0Er = new Vector.<uX>();
            super();
        }

        override public function initialize():void{
            var _local1:Vector.<0tK> = this.1G5.1O5();
            this.pw.0wT.add(this.0L3);
            this.view.10Z.add(this.16D);
            this.view.e3.add(this.1RY);
            this.view.init();
            this.view.0xw(this.pw, _local1);
            this.view.setState(0cu.PETPICKER);
        }

        private function 16D():void{
            this.1fR.dispatch();
        }

        private function 0Z1():void{
            var _local1:uint;
            var _local2:uint = 3;
            _local1 = 0;
            while (_local1 < _local2)
            {
                this.15t(_local1);
                _local1++;
            }
        }

        private function 15t(_arg1:uint):void{
            var _local2:uX = new uX(_arg1);
            _local2.0aH.add(this.1d);
            this.0Er.push(_local2);
        }

        private function 1d(_arg1:int):void{
        }

        private function 1RY():void{
            var _local1:1Vb = new 1Vb();
            _local1.petInstanceId = this.1j2.0Qq().try ();
            _local1.pickedNewPetType = this.1j2.05i();
            this.yN.dispatch(_local1);
        }

        private function 0L3(_arg1:0tK):void{
            this.1j2.Gj(_arg1);
            this.1j2.W7(_arg1.u5());
            this.1j2.07Q();
            this.0Z1();
            this.view.ol(this.0Er);
            this.view.setState(0cu.SKINPICKER);
        }


    }
}//package Ct

