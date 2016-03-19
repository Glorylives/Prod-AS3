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
    import _1n4._1WS;
    import com.company.util._02E;
    import flash.display.Graphics;
    import _1n4._1Jo;
    import flash.events.KeyboardEvent;
    import flash.utils.getTimer;
    import _1n4._1cA;
    import _AO._du;

    public class KeyCodeBox extends Sprite {

        public static const WIDTH:int = 80;
        public static const HEIGHT:int = 32;

        public var _0Ch:uint;
        public var selected_:Boolean;
        public var _0kp:Boolean;
        private var _0LC:_13j = null;

        public function KeyCodeBox(_arg1:uint){
            this._0Ch = _arg1;
            this.selected_ = false;
            this._0kp = false;
            this._0LC = new _13j().setSize(16).setColor(0xFFFFFF);
            this._0LC.setBold(true);
            this._0LC.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            this._0LC.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            addChild(this._0LC);
            this._0aJ();
            this._1zC();
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        }

        public function value():uint{
            return (this._0Ch);
        }

        public function _0MM(_arg1:uint):void{
            if (_arg1 == this._0Ch)
            {
                return;
            }
            this._0Ch = _arg1;
            this.F5();
            dispatchEvent(new Event(Event.CHANGE, true));
        }

        public function F5():void{
            this._1wG(new _1WS(_02E._24x[this._0Ch]));
        }

        private function _0aJ():void{
            var _local1:Graphics = graphics;
            _local1.clear();
            _local1.lineStyle(2, ((((this.selected_) || (this._0kp))) ? 0xB3B3B3 : 0x444444));
            _local1.beginFill(0x333333);
            _local1.drawRect(0, 0, WIDTH, HEIGHT);
            _local1.endFill();
            _local1.lineStyle();
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.selected_ = true;
            this._0aJ();
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.selected_ = false;
            this._0aJ();
        }

        private function _1wG(_arg1:_1Jo):void{
            this._0LC.setStringBuilder(_arg1);
            this._0LC.x = (WIDTH / 2);
            this._0LC.y = (HEIGHT / 2);
            this._0aJ();
        }

        private function _1zC():void{
            this._0kp = false;
            removeEventListener(Event.ENTER_FRAME, this._0bN);
            if (stage != null)
            {
                removeEventListener(KeyboardEvent.KEY_DOWN, this._1hQ);
                stage.removeEventListener(MouseEvent.MOUSE_DOWN, this._06, true);
            }
            this.F5();
            addEventListener(MouseEvent.CLICK, this._1bx);
        }

        private function _09n():void{
            if (stage == null)
            {
                return;
            }
            stage.stageFocusRect = false;
            stage.focus = this;
            this._0kp = true;
            removeEventListener(MouseEvent.CLICK, this._1bx);
            addEventListener(Event.ENTER_FRAME, this._0bN);
            addEventListener(KeyboardEvent.KEY_DOWN, this._1hQ);
            stage.addEventListener(MouseEvent.MOUSE_DOWN, this._06, true);
        }

        private function _1bx(_arg1:MouseEvent):void{
            this._09n();
        }

        private function _0bN(_arg1:Event):void{
            var _local2:int = (getTimer() / 400);
            var _local3 = ((_local2 % 2) == 0);
            if (_local3)
            {
                this._1wG(new _1WS(""));
            } else
            {
                this._1wG(new _1cA().setParams(_du._kW));
            }
        }

        private function _1hQ(_arg1:KeyboardEvent):void{
            _arg1.stopImmediatePropagation();
            this._0Ch = _arg1.keyCode;
            this._1zC();
            dispatchEvent(new Event(Event.CHANGE, true));
        }

        private function _06(_arg1:MouseEvent):void{
            this._1zC();
        }


    }
}//package _1zp

