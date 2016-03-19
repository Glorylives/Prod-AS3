// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.0VH

package 0QW{
    import flash.display.Sprite;
    import 0qj.1ae;
    import flash.events.Event;
    import flash.events.MouseEvent;

    public class 0VH extends Sprite {

        public static const WIDTH:int = 50;
        public static const HEIGHT:int = 50;

        protected static var toolTip_:1ae = null;

        public var type_:int;
        protected var selected_:Boolean = false;
        protected var 01-:Boolean = false;

        public function 0VH(_arg1:int){
            this.type_ = _arg1;
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function setSelected(_arg1:Boolean):void{
            this.selected_ = _arg1;
            this.draw();
        }

        private function onAddedToStage(_arg1:Event):void{
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            removeEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        }

        private function onMouseOver(_arg1:Event):void{
            this.01- = true;
            this.draw();
            this.hZ(this.getToolTip());
        }

        private function onRollOut(_arg1:Event):void{
            this.01- = false;
            this.draw();
            this.1Di();
        }

        protected function hZ(_arg1:1ae):void{
            this.1Di();
            toolTip_ = _arg1;
            if (toolTip_ != null)
            {
                stage.addChild(toolTip_);
            }
        }

        protected function 1Di():void{
            if (toolTip_ != null)
            {
                if (toolTip_.parent != null)
                {
                    toolTip_.parent.removeChild(toolTip_);
                }
                toolTip_ = null;
            }
        }

        protected function getToolTip():1ae{
            return (null);
        }

        private function draw():void{
            graphics.clear();
            var _local1:uint = 0x363636;
            if (this.selected_)
            {
                graphics.lineStyle(1, 0xFFFFFF);
                _local1 = 0x7F7F7F;
            }
            graphics.beginFill(((this.01-) ? 0x565656 : 0x363636), 1);
            graphics.drawRect(2, 2, (WIDTH - 4), (HEIGHT - 4));
            if (this.selected_)
            {
                graphics.lineStyle();
            }
            graphics.endFill();
        }


    }
}//package 0QW

