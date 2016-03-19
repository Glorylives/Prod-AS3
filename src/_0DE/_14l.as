// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0DE.14l

package _0DE{
import _h0._1mR;

import flash.utils.Timer;
    import flash.geom.Point;
    import flash.events.TimerEvent;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import flash.display.DisplayObject;

    public class _14l extends _k {

        private static const _0CY:uint = 250;
        private static const _1Fa:int = 3;

        private var _1kH:Timer;
        private var cF:Point;
        private var sm:Boolean;
        private var eZ:Boolean;

        public function _14l(_arg1:int, _arg2:_1mR, _arg3:Boolean){
            super(_arg1, _arg2);
            mouseChildren = false;
            this._1kH = new Timer(_0CY, 1);
            this._1kH.addEventListener(TimerEvent.TIMER_COMPLETE, this._OI);
            this.Q5(_arg3);
        }

        public function Q5(_arg1:Boolean):void{
            if (_arg1)
            {
                addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
                addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
                addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
                addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            } else
            {
                removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
                removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
                removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            };
        }

        public function _0dV():DisplayObject{
            return (_0ep.dropTarget);
        }

        protected function beginDragCallback():void{
        }

        protected function endDragCallback():void{
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.oz(false);
        }

        private function onMouseUp(_arg1:MouseEvent):void{
            if (this.eZ)
            {
                return;
            };
            if (_arg1.shiftKey)
            {
                this.oz(false);
                dispatchEvent(new _WE(_WE.ITEM_SHIFT_CLICK, this));
            } else
            {
                if (_arg1.ctrlKey)
                {
                    this.oz(false);
                    dispatchEvent(new _WE(_WE.ITEM_CTRL_CLICK, this));
                } else
                {
                    if (!this.sm)
                    {
                        this.oz(true);
                    } else
                    {
                        this.oz(false);
                        dispatchEvent(new _WE(_WE.ITEM_DOUBLE_CLICK, this));
                    };
                };
            };
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            this._1EC(_arg1);
        }

        private function oz(_arg1:Boolean):void{
            this.sm = _arg1;
            if (this.sm)
            {
                this._1kH.reset();
                this._1kH.start();
            } else
            {
                this._1kH.stop();
            };
        }

        private function _1EC(_arg1:MouseEvent):void{
            this.cF = new Point(_arg1.stageX, _arg1.stageY);
            addEventListener(MouseEvent.MOUSE_MOVE, this.HT);
            addEventListener(MouseEvent.MOUSE_OUT, this._1pe);
            addEventListener(MouseEvent.MOUSE_UP, this._1pe);
        }

        private function _1pe(_arg1:MouseEvent):void{
            removeEventListener(MouseEvent.MOUSE_MOVE, this.HT);
            removeEventListener(MouseEvent.MOUSE_OUT, this._1pe);
            removeEventListener(MouseEvent.MOUSE_UP, this._1pe);
        }

        private function HT(_arg1:MouseEvent):void{
            var _local2:Number = (_arg1.stageX - this.cF.x);
            var _local3:Number = (_arg1.stageY - this.cF.y);
            var _local4:Number = Math.sqrt(((_local2 * _local2) + (_local3 * _local3)));
            if (_local4 > _1Fa)
            {
                this._1pe(null);
                this.oz(false);
                this.gE(_arg1);
            };
        }

        private function _OI(_arg1:TimerEvent):void{
            this.oz(false);
            dispatchEvent(new _WE(_WE.ITEM_CLICK, this));
        }

        private function gE(_arg1:MouseEvent):void{
            this.eZ = true;
            stage.addChild(_0ep);
            _0ep.startDrag(true);
            _0ep.x = _arg1.stageX;
            _0ep.y = _arg1.stageY;
            _0ep.addEventListener(MouseEvent.MOUSE_UP, this.KP);
            this.beginDragCallback();
        }

        private function KP(_arg1:MouseEvent):void{
            this.eZ = false;
            _0ep.stopDrag();
            _0ep.removeEventListener(MouseEvent.MOUSE_UP, this.KP);
            dispatchEvent(new _WE(_WE.ITEM_MOVE, this));
            this.endDragCallback();
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.oz(false);
            this._1pe(null);
            if (this.eZ)
            {
                _0ep.stopDrag();
            };
        }


    }
}//package _0DE

