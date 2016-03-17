// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.1xA

package eC{
    import flash.display.Sprite;
    import h0.1cg;
    import 1PB.1S6;
    import com.company.assembleegameclient.objects.Player;
    import 0xo.1Js;

    public class 1xA extends Sprite {

        private var 1-c:Sprite;
        private var p6:1cg;
        private var hk:1S6;

        public function 1xA(_arg1:Player){
            this.1-c = new Sprite();
            this.hk = new 1S6();
            super();
            this.init(_arg1);
            this.Fl();
            this.0Ha();
        }

        private function init(_arg1:Player):void{
            this.p6 = new 1cg(_arg1, _arg1, 4);
            this.1-c.name = 1Js.0nm;
        }

        private function Fl():void{
            this.1-c.addChild(this.p6);
            this.1-c.addChild(this.hk);
            addChild(this.1-c);
        }

        private function 0Ha():void{
            this.1-c.x = 7;
            this.1-c.y = 7;
            this.hk.y = (this.p6.height + 4);
        }


    }
}//package eC

