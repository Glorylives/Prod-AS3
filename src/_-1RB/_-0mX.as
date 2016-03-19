// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1RB.0mX

package 1RB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 8u.Timespan;
    import _CU._13j;
    import 1n4.1cA;
    import flash.events.MouseEvent;

    public class 0mX extends Sprite {

        private static const 0pE:int = 16567065;
        private static const 10M:int = 0xFFFFFF;
        private static const 1eR:int = 0xB2B2B2;

        public const selected:_1HZ = new _1HZ(0mX);

        private var timespan:Timespan;
        private var label:_13j;
        private var 0Ga:Boolean;
        private var 0Qu:Boolean;
        private var jf:Boolean;

        public function 0mX(_arg1:Timespan){
            this.timespan = _arg1;
            this.0Q8(_arg1);
            this.1TG();
            this.redraw();
        }

        public function 0A():Timespan{
            return (this.timespan);
        }

        private function 0Q8(_arg1:Timespan):void{
            this.label = new _13j().setSize(20).setColor(0xFFFFFF);
            this.label.setBold(true);
            this.label.setStringBuilder(new 1cA().setParams(_arg1.getName()));
            this.label.x = 2;
            addChild(this.label);
        }

        private function 1TG():void{
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            addEventListener(MouseEvent.CLICK, this.0eJ);
        }

        private function 0eJ(_arg1:MouseEvent):void{
            this.selected.dispatch(this);
        }

        private function redraw():void{
            if (this.0Ga)
            {
                this.label.setColor(0pE);
            } else
            {
                if (((this.jf) || (this.0Qu)))
                {
                    this.label.setColor(10M);
                } else
                {
                    this.label.setColor(1eR);
                }
            }
        }

        public function eR(_arg1:Boolean):void{
            this.jf = _arg1;
            this.redraw();
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.0Ga = true;
            this.redraw();
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.0Ga = false;
            this.0Qu = false;
            this.redraw();
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            this.0Qu = true;
            this.redraw();
        }

        private function onMouseUp(_arg1:MouseEvent):void{
            this.0Qu = false;
            this.redraw();
        }


    }
}//package 1RB

