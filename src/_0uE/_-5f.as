// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.5f

package 0uE{
    import 0qj.1ae;
    import flash.display.Sprite;
    import _CU._13j;
    import 0IN.1qO;
    import com.company.assembleegameclient.ui.1-p;
    import flash.display.Bitmap;
    import 5z.0tK;
    import 0xo.1Js;
    import 1n4.1cA;
    import 5z.0NW;
    import 0IN.h;
    import 5z.25U;
    import 5z.1dH;

    public class 5f extends 1ae {

        private const catch:Sprite = new Sprite();
        private const US:_13j = 1qO.1H-(0xFFFFFF, 16, true);
        private const J6:_13j = 1qO.1H-(0xB3B3B3, 12, false);
        private const er:_13j = 1qO.1H-(0xB3B3B3, 12, false);
        private const 0hg:1-p = 1qO.1X0();

        private var 1tY:Bitmap;
        private var petVO:0tK;

        public function 5f(_arg1:0tK){
            this.petVO = _arg1;
            super(0x363636, 1, 0xFFFFFF, 1, true);
            this.catch.name = 1Js.2-4;
        }

        public function init():void{
            this.1tY = this.petVO.15c();
            this.Fl();
            this.1Z5();
            this.0Ha();
            this.81();
        }

        private function 81():void{
            this.US.setStringBuilder(new 1cA().setParams(this.petVO.getName()));
            this.J6.setStringBuilder(new 1cA().setParams(this.petVO.1qz()));
            this.er.setStringBuilder(new 1cA().setParams(0NW.1So(this.petVO.1m7())));
        }

        private function Fl():void{
            this.catch.graphics.beginFill(0, 0);
            this.catch.graphics.drawRect(0, 0, h.1Ex, h.0uf);
            this.catch.addChild(this.1tY);
            this.catch.addChild(this.US);
            this.catch.addChild(this.J6);
            this.catch.addChild(this.er);
            this.catch.addChild(this.0hg);
            addChild(this.catch);
        }

        private function 1Z5():void{
            var _local1:uint;
            var _local3:25U;
            var _local4:82;
            var _local2:uint = 3;
            _local1 = 0;
            while (_local1 < _local2)
            {
                _local3 = this.petVO.0S1[_local1];
                _local4 = new 82(_local3, 174);
                _local4.x = 8;
                _local4.y = (86 + (17 * _local1));
                this.catch.addChild(_local4);
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

        private function 0Ha():void{
            this.US.x = 55;
            this.US.y = 21;
            this.J6.x = 55;
            this.J6.y = 35;
            this.er.x = 55;
            this.er.y = 48;
        }


    }
}//package 0uE

