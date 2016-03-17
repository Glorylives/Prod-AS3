// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.GF

package eC{
    import flash.display.Sprite;
    import h0.1cg;
    import 1PB.1S6;
    import com.company.assembleegameclient.objects.Player;
    import 0xo.1Js;
    import 0Px.1zw;

    public class GF extends Sprite {

        private var 1R8:Sprite;
        private var 1Zj:1cg;
        private var n9:1S6;

        public function GF(_arg1:Player){
            this.1R8 = new Sprite();
            this.n9 = new 1S6();
            super();
            this.init(_arg1);
            this.Fl();
            this.0Ha();
        }

        private function init(_arg1:Player):void{
            this.1R8.name = 1Js.1yQ;
            this.1Zj = new 1cg(_arg1, _arg1, (1zw.1ye + 1zw.1dg), true);
        }

        private function 0Ha():void{
            this.1R8.x = 7;
            this.1R8.y = 7;
            this.n9.y = (this.1Zj.height + 4);
        }

        private function Fl():void{
            this.1R8.addChild(this.1Zj);
            this.1R8.addChild(this.n9);
            addChild(this.1R8);
        }


    }
}//package eC

