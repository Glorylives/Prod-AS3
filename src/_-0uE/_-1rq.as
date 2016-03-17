// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1rq

package 0uE{
    import 0qj.1ae;
    import flash.display.Sprite;
    import _CU._13j;
    import 0IN.1qO;
    import 5z.25U;
    import 1n4.1cA;
    import 0IN.h;

    public class 1rq extends 1ae {

        private const 0-E:Sprite = new Sprite();
        private const US:_13j = 1qO.18-(0xFFFFFF, 16, true, true);
        private const j8:_13j = 1qO.18-(0xFFFFFF, 14, false, true);

        private var Ay:25U;

        public function 1rq(_arg1:25U){
            super(0x363636, 1, 0xFFFFFF, 1, true);
            this.j8.setTextWidth(200).setWordWrap(true);
            this.Ay = _arg1;
            this.Fl();
            this.81();
        }

        private function 81():void{
            1he.push(this.US.textChanged);
            1he.push(this.j8.textChanged);
            this.US.setStringBuilder(new 1cA().setParams(this.Ay.name));
            this.j8.setStringBuilder(new 1cA().setParams(this.Ay.description));
        }

        private function Fl():void{
            this.0-E.addChild(this.US);
            this.0-E.addChild(this.j8);
            addChild(this.0-E);
        }

        override protected function alignUI():void{
            this.US.x = h.1Ib;
            this.US.y = h.18Z;
            this.j8.x = h.1Ib;
            this.j8.y = (this.US.y + this.US.height);
        }


    }
}//package 0uE

