// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.a9

package 1UB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU.sb;
    import Wn.1Ev;
    import 1n4.1cA;
    import flash.events.MouseEvent;
    import flash.filters.DropShadowFilter;

    public class a9 extends Sprite {

        private static const 0pE:int = 16567065;
        private static const 10M:int = 0xFFFFFF;
        private static const 1eR:int = 0xB2B2B2;

        public const b2:_1HZ = a9.label.textChanged;
        public const selected:_1HZ = new _1HZ(a9);

        public var label:sb;
        private var filter:1Ev;
        private var 0Ga:Boolean;
        private var 0Qu:Boolean;
        private var jf:Boolean = false;

        public function a9(_arg1:1Ev){
            this.label = this.0Q8();
            super();
            this.filter = _arg1;
            this.label.setStringBuilder(new 1cA().setParams(_arg1.getName()));
            addChild(this.label);
            this.1TG();
        }

        public function destroy():void{
            this.Z2();
        }

        public function 5u():1Ev{
            return (this.filter);
        }

        public function setSelected(_arg1:Boolean):void{
            this.jf = _arg1;
            this.redraw();
        }

        private function 1TG():void{
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            addEventListener(MouseEvent.CLICK, this.0eJ);
        }

        private function Z2():void{
            removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            removeEventListener(MouseEvent.CLICK, this.0eJ);
        }

        private function 0eJ(_arg1:MouseEvent):void{
            if (!this.jf)
            {
                this.selected.dispatch(this);
            }
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

        private function onMouseUp(_arg1:MouseEvent):void{
            this.0Qu = false;
            this.redraw();
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            this.0Qu = true;
            this.redraw();
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.0Ga = false;
            this.0Qu = false;
            this.redraw();
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.0Ga = true;
            this.redraw();
        }

        private function 0Q8():sb{
            var _local1:sb;
            _local1 = new sb();
            _local1.setBold(true).setColor(0xB3B3B3).setSize(20);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            return (_local1);
        }


    }
}//package 1UB

