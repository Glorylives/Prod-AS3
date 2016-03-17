// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1mO.0Uy

package 1mO{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import 0sk.BZ;

    public class 0Uy extends Sprite {

        private const 1U9:Number = 306;
        private const QB:Number = 194;
        private const 0LA:Number = 151;
        private const 1XG:Number = 189;
        private const mO:Number = 4;
        private const 1id:230 = new 230(0Uy.1U9, 0Uy.QB);
        private const 1Wr:230 = new 230(0Uy.0LA, 0Uy.1XG);
        private const Bm:230 = new 230(0Uy.0LA, 0Uy.1XG);

        public function 0Uy(){
            this.tabChildren = false;
            this.Fl();
            this.0Ha();
        }

        private function Fl():void{
            addChild(this.1id);
            addChild(this.1Wr);
            addChild(this.Bm);
        }

        private function 0Ha():void{
            this.1Wr.y = (this.QB + this.mO);
            this.Bm.x = (this.0LA + this.mO);
            this.Bm.y = (this.QB + this.mO);
        }

        function update(_arg1:Vector.<BZ>):void{
            this.1id.init(_arg1[0]);
            this.1Wr.init(_arg1[1]);
            this.Bm.init(_arg1[2]);
            this.1id.load();
            this.1Wr.load();
            this.Bm.load();
        }


    }
}//package 1mO

