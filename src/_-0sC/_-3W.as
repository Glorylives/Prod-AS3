// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.3W

package 0sC{
    import flash.display.Sprite;

    public class 3W extends Sprite {

        private static const BEVEL:int = 4;

        private var Mm:Number = 100;
        private var Xv:Number = 10;
        private var 0q2:Sprite;
        private var 0dp:Sprite;

        public function 3W(_arg1:Number, _arg2:Number){
            this.Mm = _arg1;
            this.Xv = _arg2;
            this.0q2 = new Sprite();
            this.0dp = new Sprite();
            addChild(this.0q2);
            addChild(this.0dp);
            this.update(0);
        }

        public function update(_arg1:Number):void{
            this.0nu(this.0dp, 0xFFFFFF, ((_arg1 * 0.01) * this.Mm));
            this.0nu(this.0q2, 0, this.Mm);
        }

        private function 0nu(_arg1:Sprite, _arg2:uint, _arg3:Number):Sprite{
            _arg1.graphics.clear();
            _arg1.graphics.beginFill(_arg2);
            _arg1.graphics.drawRect(0, 0, _arg3, this.Xv);
            _arg1.graphics.endFill();
            return (_arg1);
        }


    }
}//package 0sC

