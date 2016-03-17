// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.12q

package 0uE{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import _CU._13j;
    import 5z.0tK;
    import 0IN.1qO;
    import 0xo.1Js;
    import 1n4.1cA;
    import 5z.1dH;
    import 5z.0NW;

    public class 12q extends Sprite {

        public var 1tY:Bitmap;
        private var catch:Sprite;
        public var J6:_13j;
        private var 0j8:_13j;
        private var er:_13j;
        private var petVO:0tK;

        public function 12q(){
            this.catch = new Sprite();
            this.J6 = 1qO.1H-(0xB3B3B3, 13, false);
            this.0j8 = 1qO.1H-(0xB3B3B3, 15, true);
            this.er = 1qO.1H-(0xB3B3B3, 13, false);
            super();
        }

        public function init(_arg1:0tK):void{
            this.petVO = _arg1;
            this.1tY = _arg1.15c();
            this.Fl();
            this.1Z5();
            this.0Ha();
            this.81();
            this.catch.name = 1Js.2-4;
            _arg1.1iq.add(this.Q1);
        }

        private function Q1():void{
            this.1Qg();
            this.J6.setStringBuilder(new 1cA().setParams(this.petVO.1qz()));
        }

        private function 1Qg():void{
            this.catch.removeChild(this.1tY);
            this.1tY = this.petVO.15c();
            this.catch.addChild(this.1tY);
        }

        private function 1Z5():void{
            var _local1:uint;
            var _local3:82;
            var _local2:uint = 3;
            _local1 = 0;
            while (_local1 < _local2)
            {
                _local3 = new 82(this.petVO.0S1[_local1], 171);
                _local3.x = 3;
                _local3.y = (72 + (17 * _local1));
                this.catch.addChild(_local3);
                _local1++;
            };
        }

        private function 16p():uint{
            var _local1:Boolean = (((this.petVO.1qz() == 1dH.cn.value)) || ((this.petVO.1qz() == 1dH.z.value)));
            if (_local1)
            {
                return (2);
            };
            return (3);
        }

        private function 81():void{
            this.0j8.setStringBuilder(new 1cA().setParams(this.petVO.getName()));
            this.J6.setStringBuilder(new 1cA().setParams(this.petVO.1qz()));
            this.er.setStringBuilder(new 1cA().setParams(0NW.1So(this.petVO.1m7())));
        }

        private function Fl():void{
            this.catch.addChild(this.1tY);
            this.catch.addChild(this.0j8);
            this.catch.addChild(this.J6);
            this.catch.addChild(this.er);
            addChild(this.catch);
        }

        private function 0Ha():void{
            this.1tY.x = (this.1tY.x - 8);
            this.1tY.y = (this.1tY.y - 1);
            this.catch.x = 7;
            this.catch.y = 6;
            this.0j8.x = 45;
            this.0j8.y = 20;
            this.J6.x = 45;
            this.J6.y = 33;
            this.er.x = 45;
            this.er.y = 47;
        }


    }
}//package 0uE

