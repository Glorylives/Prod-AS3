// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.GX

package OZ{
    import flash.display.Sprite;
    import OZ.1EE;
    import _Jy._1HZ;
    import 1js.4w;
    import 1js.1fP;
    import flash.events.MouseEvent;
    import flash.events.Event;

    final class GX extends Sprite {

        public static const WIDTH:int = 1EE.WIDTH;//20
        public static const BEVEL:int = 1EE.BEVEL;//4
        public static const 1ss:int = 1EE.1ss;//0

        public const 4V:_1HZ = new _1HZ(int);
        public const l1:_1HZ = new _1HZ(Number);
        public const rect:4w = new 4w((WIDTH - (1ss * 2)), 0, BEVEL);
        private const Dz:1fP = new 1fP();

        private var 0iY:Number;
        private var 0Ga:Boolean;
        private var 0Qu:Boolean;


        public function redraw():void{
            var _local1:int = ((((this.0Ga) || (this.0Qu))) ? 16767876 : 0xCCCCCC);
            graphics.clear();
            graphics.beginFill(_local1);
            this.Dz.0Zx(1ss, 0, this.rect, graphics);
            graphics.endFill();
        }

        public function 1TG():void{
            addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            if (((parent) && (parent.parent)))
            {
                parent.parent.addEventListener(MouseEvent.MOUSE_WHEEL, this.1Av);
            } else
            {
                if (WebMain._0Kr)
                {
                    WebMain._0Kr.addEventListener(MouseEvent.MOUSE_WHEEL, this.1Av);
                }
            }
        }

        protected function 1Av(_arg1:MouseEvent):void{
            if (_arg1.delta > 0)
            {
                this.l1.dispatch(-0.25);
            } else
            {
                if (_arg1.delta < 0)
                {
                    this.l1.dispatch(0.25);
                }
            }
        }

        public function Z2():void{
            removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            if (((parent) && (parent.parent)))
            {
                parent.parent.removeEventListener(MouseEvent.MOUSE_WHEEL, this.1Av);
            } else
            {
                if (WebMain._0Kr)
                {
                    WebMain._0Kr.removeEventListener(MouseEvent.MOUSE_WHEEL, this.1Av);
                }
            }
            this.onMouseUp();
        }

        private function onMouseDown(_arg1:MouseEvent=null):void{
            this.0Qu = true;
            this.0iY = (parent.mouseY - y);
            if (stage != null)
            {
                stage.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            }
            addEventListener(Event.ENTER_FRAME, this.3C);
            this.redraw();
        }

        private function onMouseUp(_arg1:MouseEvent=null):void{
            this.0Qu = false;
            if (stage != null)
            {
                stage.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            }
            removeEventListener(Event.ENTER_FRAME, this.3C);
            this.redraw();
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.0Ga = true;
            this.redraw();
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.0Ga = false;
            this.redraw();
        }

        private function 3C(_arg1:Event):void{
            this.4V.dispatch(int((parent.mouseY - this.0iY)));
        }


    }
}//package OZ

