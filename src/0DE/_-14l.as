// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0DE.14l

package 0DE{
    import flash.utils.Timer;
    import flash.geom.Point;
    import flash.events.TimerEvent;
    import h0.1mR;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import flash.display.DisplayObject;

    public class 14l extends k {

        private static const 0CY:uint = 250;
        private static const 1Fa:int = 3;

        private var 1kH:Timer;
        private var cF:Point;
        private var sm:Boolean;
        private var eZ:Boolean;

        public function 14l(_arg1:int, _arg2:1mR, _arg3:Boolean){
            super(_arg1, _arg2);
            mouseChildren = false;
            this.1kH = new Timer(0CY, 1);
            this.1kH.addEventListener(TimerEvent.TIMER_COMPLETE, this.OI);
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

        public function 0dV():DisplayObject{
            return (0ep.dropTarget);
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
                dispatchEvent(new WE(WE.ITEM_SHIFT_CLICK, this));
            } else
            {
                if (_arg1.ctrlKey)
                {
                    this.oz(false);
                    dispatchEvent(new WE(WE.ITEM_CTRL_CLICK, this));
                } else
                {
                    if (!this.sm)
                    {
                        this.oz(true);
                    } else
                    {
                        this.oz(false);
                        dispatchEvent(new WE(WE.ITEM_DOUBLE_CLICK, this));
                    };
                };
            };
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            this.1EC(_arg1);
        }

        private function oz(_arg1:Boolean):void{
            this.sm = _arg1;
            if (this.sm)
            {
                this.1kH.reset();
                this.1kH.start();
            } else
            {
                this.1kH.stop();
            };
        }

        private function 1EC(_arg1:MouseEvent):void{
            this.cF = new Point(_arg1.stageX, _arg1.stageY);
            addEventListener(MouseEvent.MOUSE_MOVE, this.HT);
            addEventListener(MouseEvent.MOUSE_OUT, this.1pe);
            addEventListener(MouseEvent.MOUSE_UP, this.1pe);
        }

        private function 1pe(_arg1:MouseEvent):void{
            removeEventListener(MouseEvent.MOUSE_MOVE, this.HT);
            removeEventListener(MouseEvent.MOUSE_OUT, this.1pe);
            removeEventListener(MouseEvent.MOUSE_UP, this.1pe);
        }

        private function HT(_arg1:MouseEvent):void{
            var _local2:Number = (_arg1.stageX - this.cF.x);
            var _local3:Number = (_arg1.stageY - this.cF.y);
            var _local4:Number = Math.sqrt(((_local2 * _local2) + (_local3 * _local3)));
            if (_local4 > 1Fa)
            {
                this.1pe(null);
                this.oz(false);
                this.gE(_arg1);
            };
        }

        private function OI(_arg1:TimerEvent):void{
            this.oz(false);
            dispatchEvent(new WE(WE.ITEM_CLICK, this));
        }

        private function gE(_arg1:MouseEvent):void{
            this.eZ = true;
            stage.addChild(0ep);
            0ep.startDrag(true);
            0ep.x = _arg1.stageX;
            0ep.y = _arg1.stageY;
            0ep.addEventListener(MouseEvent.MOUSE_UP, this.KP);
            this.beginDragCallback();
        }

        private function KP(_arg1:MouseEvent):void{
            this.eZ = false;
            0ep.stopDrag();
            0ep.removeEventListener(MouseEvent.MOUSE_UP, this.KP);
            dispatchEvent(new WE(WE.ITEM_MOVE, this));
            this.endDragCallback();
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.oz(false);
            this.1pe(null);
            if (this.eZ)
            {
                0ep.stopDrag();
            };
        }


    }
}//package 0DE

