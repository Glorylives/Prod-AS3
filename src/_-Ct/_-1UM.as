// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.1UM

package Ct{
    import flash.display.Sprite;
    import _CU._13j;
    import 0IN.1qO;
    import 1n4.1cA;
    import 1PB.cO;

    public class 1UM extends Sprite {

        private const lc:_13j = 1qO.1H-(0xFFFFFF, 16, true);
        private const wk:_13j = 1qO.1H-(0xFFFFFF, 16, true);
        private const WIDTH:uint = 238;
        private const HEIGHT:uint = 30;
        private const 1ss:uint = 10;
        private const L7:uint = 21;

        public function 1UM(){
            this.11y();
            this.Fl();
            this.1tF("Text", "Text");
            this.04K();
        }

        public function 1tF(_arg1:String, _arg2:String):void{
            this.lc.setStringBuilder(new 1cA().setParams(_arg1));
            this.wk.setStringBuilder(new 1cA().setParams(_arg2));
        }

        private function Fl():void{
            addChild(this.lc);
            addChild(this.wk);
        }

        private function 11y():void{
            graphics.beginFill(0x999999);
            graphics.drawRect(0, 0, this.WIDTH, this.HEIGHT);
        }

        private function 04K():void{
            var _local1:cO = new cO();
            _local1.push(this.lc.textChanged);
            _local1.push(this.wk.textChanged);
            _local1.complete.addOnce(this.FO);
        }

        private function FO():void{
            this.lc.x = this.1ss;
            this.lc.y = this.L7;
            this.wk.x = ((this.WIDTH - this.1ss) - this.wk.width);
            this.wk.y = this.L7;
        }


    }
}//package Ct

