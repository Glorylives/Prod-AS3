// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.KeyCodeBox

package _1zp{
    import flash.display.Sprite;
    import _CU._13j;
    import flash.filters.DropShadowFilter;
    import flash.text.TextFieldAutoSize;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import 1n4.1WS;
    import com.company.util.02E;
    import flash.display.Graphics;
    import 1n4.1Jo;
    import flash.events.KeyboardEvent;
    import flash.utils.getTimer;
    import 1n4.1cA;
    import AO.du;

    public class KeyCodeBox extends Sprite {

        public static const WIDTH:int = 80;
        public static const HEIGHT:int = 32;

        public var 0Ch:uint;
        public var selected_:Boolean;
        public var 0kp:Boolean;
        private var 0LC:_13j = null;

        public function KeyCodeBox(_arg1:uint){
            this.0Ch = _arg1;
            this.selected_ = false;
            this.0kp = false;
            this.0LC = new _13j().setSize(16).setColor(0xFFFFFF);
            this.0LC.setBold(true);
            this.0LC.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            this.0LC.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            addChild(this.0LC);
            this.0aJ();
            this.1zC();
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        }

        public function value():uint{
            return (this.0Ch);
        }

        public function 0MM(_arg1:uint):void{
            if (_arg1 == this.0Ch)
            {
                return;
            };
            this.0Ch = _arg1;
            this.F5();
            dispatchEvent(new Event(Event.CHANGE, true));
        }

        public function F5():void{
            this.1wG(new 1WS(02E.24x[this.0Ch]));
        }

        private function 0aJ():void{
            var _local1:Graphics = graphics;
            _local1.clear();
            _local1.lineStyle(2, ((((this.selected_) || (this.0kp))) ? 0xB3B3B3 : 0x444444));
            _local1.beginFill(0x333333);
            _local1.drawRect(0, 0, WIDTH, HEIGHT);
            _local1.endFill();
            _local1.lineStyle();
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.selected_ = true;
            this.0aJ();
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.selected_ = false;
            this.0aJ();
        }

        private function 1wG(_arg1:1Jo):void{
            this.0LC.setStringBuilder(_arg1);
            this.0LC.x = (WIDTH / 2);
            this.0LC.y = (HEIGHT / 2);
            this.0aJ();
        }

        private function 1zC():void{
            this.0kp = false;
            removeEventListener(Event.ENTER_FRAME, this.0bN);
            if (stage != null)
            {
                removeEventListener(KeyboardEvent.KEY_DOWN, this.1hQ);
                stage.removeEventListener(MouseEvent.MOUSE_DOWN, this.06-, true);
            };
            this.F5();
            addEventListener(MouseEvent.CLICK, this.1bx);
        }

        private function 09n():void{
            if (stage == null)
            {
                return;
            };
            stage.stageFocusRect = false;
            stage.focus = this;
            this.0kp = true;
            removeEventListener(MouseEvent.CLICK, this.1bx);
            addEventListener(Event.ENTER_FRAME, this.0bN);
            addEventListener(KeyboardEvent.KEY_DOWN, this.1hQ);
            stage.addEventListener(MouseEvent.MOUSE_DOWN, this.06-, true);
        }

        private function 1bx(_arg1:MouseEvent):void{
            this.09n();
        }

        private function 0bN(_arg1:Event):void{
            var _local2:int = (getTimer() / 400);
            var _local3 = ((_local2 % 2) == 0);
            if (_local3)
            {
                this.1wG(new 1WS(""));
            } else
            {
                this.1wG(new 1cA().setParams(du.kW));
            };
        }

        private function 1hQ(_arg1:KeyboardEvent):void{
            _arg1.stopImmediatePropagation();
            this.0Ch = _arg1.keyCode;
            this.1zC();
            dispatchEvent(new Event(Event.CHANGE, true));
        }

        private function 06-(_arg1:MouseEvent):void{
            this.1zC();
        }


    }
}//package _1zp

