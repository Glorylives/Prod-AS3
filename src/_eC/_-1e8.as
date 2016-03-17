// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.1e8

package eC{
    import flash.display.Sprite;
    import 0xo.1Js;

    public class 1e8 extends Sprite {

        private var stats:1HE;

        public function 1e8(_arg1:uint){
            this.stats = new 1HE();
            super();
            this.init();
            this.0Ha(_arg1);
            this.Fl();
        }

        private function Fl():void{
            addChild(this.stats);
        }

        private function 0Ha(_arg1:uint):void{
            this.stats.y = (((_arg1 - 16w.0zc) / 2) - (this.stats.height / 2));
        }

        private function init():void{
            this.stats.name = 1Js.0hi;
        }


    }
}//package eC

