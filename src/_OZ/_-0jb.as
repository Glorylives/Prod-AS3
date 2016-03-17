// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.0jb

package OZ{
    import flash.display.Sprite;
    import OZ.1EE;
    import _Jy._1HZ;
    import 1js.4w;
    import 1js.1fP;
    import flash.events.MouseEvent;

    final class 0jb extends Sprite {

        public static const WIDTH:int = 1EE.WIDTH;//20
        public static const BEVEL:int = (1EE.BEVEL + (1EE.1ss * 0.5));//4

        public const clicked:_1HZ = new _1HZ(int);
        public const rect:4w = new 4w(WIDTH, 0, BEVEL);
        private const Dz:1fP = new 1fP();


        public function redraw():void{
            graphics.clear();
            graphics.beginFill(0x545454);
            this.Dz.0Zx(0, 0, this.rect, graphics);
            graphics.endFill();
        }

        public function 1TG():void{
            addEventListener(MouseEvent.CLICK, this.0eJ);
        }

        public function Z2():void{
            removeEventListener(MouseEvent.CLICK, this.0eJ);
        }

        private function 0eJ(_arg1:MouseEvent):void{
            this.clicked.dispatch(int(mouseY));
        }


    }
}//package OZ

