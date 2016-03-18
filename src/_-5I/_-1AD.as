// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5I.1AD

package 5I{
    import flash.display.Sprite;
    import com.company.ui._eG;
    import flash.events.MouseEvent;

    public class 1AD extends Sprite {

        private static const WIDTH:int = 80;
        private static const HEIGHT:int = 25;

        public var callback_:Function;
        public var 94:int;
        private var over_:Boolean = false;
        private var 1w1:Boolean = false;
        private var selected_:Boolean = false;
        private var text_:_eG;

        public function 1AD(_arg1:String, _arg2:Function, _arg3:int){
            this.callback_ = _arg2;
            this.94 = _arg3;
            this.text_ = new _eG(16, 0xFFFFFF, false, 0, 0);
            this.text_.setBold(true);
            this.text_.text = _arg1;
            this.text_.re();
            this.text_.x = 2;
            addChild(this.text_);
            this.redraw();
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            addEventListener(MouseEvent.CLICK, this.0eJ);
        }

        public function setSelected(_arg1:Boolean):void{
            this.selected_ = _arg1;
            this.redraw();
        }

        public function 12t(_arg1:String):void{
            this.text_.text = _arg1;
            this.text_.re();
        }

        private function redraw():void{
            graphics.clear();
            if (((this.selected_) || (this.1w1)))
            {
                graphics.lineStyle(2, 0xFFFFFF);
                graphics.beginFill(0x7F7F7F, 1);
                graphics.drawRect(0, 0, WIDTH, HEIGHT);
                graphics.endFill();
                graphics.lineStyle();
            } else
            {
                if (this.over_)
                {
                    graphics.lineStyle(2, 0xFFFFFF);
                    graphics.beginFill(0, 0);
                    graphics.drawRect(0, 0, WIDTH, HEIGHT);
                    graphics.endFill();
                    graphics.lineStyle();
                } else
                {
                    graphics.lineStyle(1, 0xFFFFFF);
                    graphics.beginFill(0, 0);
                    graphics.drawRect(0, 0, WIDTH, HEIGHT);
                    graphics.endFill();
                    graphics.lineStyle();
                };
            };
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.over_ = true;
            this.redraw();
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.over_ = false;
            this.1w1 = false;
            this.redraw();
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            this.1w1 = true;
            this.redraw();
        }

        private function onMouseUp(_arg1:MouseEvent):void{
            this.1w1 = false;
            this.redraw();
        }

        private function 0eJ(_arg1:MouseEvent):void{
            this.callback_(this);
        }


    }
}//package 5I

