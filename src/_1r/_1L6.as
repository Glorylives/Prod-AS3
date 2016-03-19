// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1r-.1L6

package _1r{
import _1Bg._1hy;
import _1Bg._of;

import flash.display.Sprite;
    import flash.display.DisplayObject;
    import flash.events.MouseEvent;
    import flash.events.Event;

    public class _1L6 implements _u {

        public var tooltip:Sprite;
        private var _0TV:_of;
        private var showToolTip:_1hy;
        private var displayObject:DisplayObject;


        public function _1pS(_arg1:DisplayObject):void{
            this.displayObject = _arg1;
            this.displayObject.addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            this.displayObject.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            this.displayObject.addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function _0I0():void{
            if (this.displayObject != null)
            {
                this.displayObject.removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
                this.displayObject.removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
                this.displayObject.removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
                this.displayObject = null;
            }
        }

        public function _17L():DisplayObject{
            return (this.displayObject);
        }

        public function _4(_arg1:_1hy):void{
            this.showToolTip = _arg1;
        }

        public function Bs():_1hy{
            return (this.showToolTip);
        }

        public function na(_arg1:_of):void{
            this._0TV = _arg1;
        }

        public function w1():_of{
            return (this._0TV);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            if (((!((this.tooltip == null))) && (!((this.tooltip.parent == null)))))
            {
                this._0TV.dispatch();
            }
            this.displayObject.removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            this.displayObject.removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            this.displayObject.removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this._0TV.dispatch();
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.showToolTip.dispatch(this.tooltip);
        }


    }
}//package 1r-

