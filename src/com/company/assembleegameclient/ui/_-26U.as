// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.26U

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import _CU._13j;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import _ZS.0ZC;

    public class 26U extends Sprite {

        public var text_:_13j;
        public var 8g:uint = 0xFFFFFF;

        public function 26U(_arg1:int, _arg2:Boolean, _arg3:String){
            this.text_ = this.makeText().setSize(_arg1).setColor(0xFFFFFF);
            this.text_.setBold(_arg2);
            this.text_.setStringBuilder(new 1cA().setParams(_arg3));
            addChild(this.text_);
            this.text_.filters = [new DropShadowFilter(0, 0, 0)];
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            addEventListener(MouseEvent.CLICK, this.05M);
        }

        public function 0U1():void{
            removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        }

        protected function makeText():_13j{
            return (new _13j());
        }

        public function setAutoSize(_arg1:String):void{
            this.text_.setAutoSize(_arg1);
        }

        public function 1fW(_arg1:String):void{
            this.text_.setStringBuilder(new 1cA().setParams(_arg1));
            this.hs(0xB3B3B3);
            mouseEnabled = false;
            mouseChildren = false;
        }

        public function setColor(_arg1:uint):void{
            this.text_.setColor(_arg1);
        }

        public function hs(_arg1:uint):void{
            this.8g = _arg1;
            this.setColor(this.8g);
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.setColor(16768133);
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.setColor(this.8g);
        }

        private function 05M(_arg1:MouseEvent):void{
            0ZC.play("button_click");
        }


    }
}//package com.company.assembleegameclient.ui

