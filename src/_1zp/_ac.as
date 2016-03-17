// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.ac

package _1zp{
    import flash.display.Sprite;
    import _CU._13j;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;

    public class _ac extends Sprite {

        private static const 0jI:int = 16;

        public var text_:String;
        protected var a:_13j;
        protected var selected_:Boolean;

        public function _ac(_arg1:String){
            this.text_ = _arg1;
            this.a = new _13j().setSize(0jI).setColor(0xB3B3B3);
            this.a.setBold(true);
            this.a.setStringBuilder(new 1cA().setParams(_arg1));
            this.a.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            addChild(this.a);
            this.selected_ = false;
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        }

        public function setSelected(_arg1:Boolean):void{
            this.selected_ = _arg1;
            this.redraw(false);
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.redraw(true);
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.redraw(false);
        }

        private function redraw(_arg1:Boolean):void{
            this.a.setSize(0jI);
            this.a.setColor(this.getColor(_arg1));
        }

        private function getColor(_arg1:Boolean):uint{
            if (this.selected_)
            {
                return (0xFFC800);
            };
            return (((_arg1) ? 0xFFFFFF : 0xB3B3B3));
        }


    }
}//package _1zp

