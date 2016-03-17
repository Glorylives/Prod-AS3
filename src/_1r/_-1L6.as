// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1r-.1L6

package 1r-{
    import flash.display.Sprite;
    import 1Bg.of;
    import 1Bg.1hy;
    import flash.display.DisplayObject;
    import flash.events.MouseEvent;
    import flash.events.Event;

    public class 1L6 implements u- {

        public var tooltip:Sprite;
        private var 0TV:of;
        private var showToolTip:1hy;
        private var displayObject:DisplayObject;


        public function 1pS(_arg1:DisplayObject):void{
            this.displayObject = _arg1;
            this.displayObject.addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            this.displayObject.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            this.displayObject.addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function 0I0():void{
            if (this.displayObject != null)
            {
                this.displayObject.removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
                this.displayObject.removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
                this.displayObject.removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
                this.displayObject = null;
            };
        }

        public function 17L():DisplayObject{
            return (this.displayObject);
        }

        public function 4-(_arg1:1hy):void{
            this.showToolTip = _arg1;
        }

        public function Bs():1hy{
            return (this.showToolTip);
        }

        public function na(_arg1:of):void{
            this.0TV = _arg1;
        }

        public function w1():of{
            return (this.0TV);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            if (((!((this.tooltip == null))) && (!((this.tooltip.parent == null)))))
            {
                this.0TV.dispatch();
            };
            this.displayObject.removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            this.displayObject.removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            this.displayObject.removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.0TV.dispatch();
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.showToolTip.dispatch(this.tooltip);
        }


    }
}//package 1r-

