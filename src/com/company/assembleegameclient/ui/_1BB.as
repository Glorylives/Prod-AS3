// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.1BB

package com.company.assembleegameclient.ui{
import _1n4._1cA;

import flash.events.MouseEvent;

    public class _1BB extends _1Ri {

        public function _1BB(_arg1:int){
            super(_arg1);
        }

        protected function initText():void{
            _20();
            this.draw();
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        }

        public function _1wG(_arg1:String):void{
            text_.setStringBuilder(new _1cA().setParams(_arg1));
        }

        public function setEnabled(_arg1:Boolean):void{
            if (_arg1 == mouseEnabled)
            {
                return;
            };
            mouseEnabled = _arg1;
            graphicsData_[0] = ((_arg1) ? _0dT : _1pM);
            this.draw();
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            _0dT.color = 16768133;
            this.draw();
        }

        private function onRollOut(_arg1:MouseEvent):void{
            _0dT.color = 0xFFFFFF;
            this.draw();
        }

        private function draw():void{
            graphics.clear();
            graphics.drawGraphicsData(graphicsData_);
        }


    }
}//package com.company.assembleegameclient.ui

