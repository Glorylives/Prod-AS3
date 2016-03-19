// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.1-9

package Ct{
    import flash.display.Sprite;
    import 0uE.IJ;
    import 0IN.1qO;
    import 0IN.h;
    import _CU._13j;
    import 0uE.1sD;
    import 0uE.KC;
    import _Jy._1HZ;
    import 5z.0tK;
    import 1n4.1cA;
    import 1PB.cO;

    public class 1-9 extends Sprite {

        private const background:IJ = 1qO.S3(h.1h9, h.16X);
        private const r4:_13j = 1qO.1H-(0xFFFFFF, 18, true);
        private const Si:1sD = 1qO.0vj();
        private const 1tf:KC = 1qO.19W(h.1h9);

        public var pC:_1HZ;

        public function 1-9(){
            this.pC = new _1HZ(0tK);
            super();
        }

        public function init():void{
            this.04K();
            this.Fl();
            this.r4.setStringBuilder(new 1cA().setParams("Available Pets"));
            this.Si.buttonOne.1wG("SELECT PET");
            this.cp();
        }

        private function Fl():void{
            addChild(this.background);
            addChild(this.r4);
            addChild(this.Si);
            addChild(this.1tf);
        }

        private function cp():void{
            this.x = ((stage.width - this.width) / 2);
            this.y = ((stage.height - this.height) / 2);
        }

        private function 04K():void{
            var _local1:cO = new cO();
            _local1.push(this.r4.textChanged);
            _local1.complete.addOnce(this.FO);
        }

        private function FO():void{
            this.r4.x = ((h.1h9 - this.r4.width) / 2);
        }


    }
}//package Ct

