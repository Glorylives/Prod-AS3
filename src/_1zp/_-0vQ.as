// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.0vQ

package _1zp{
    import 0qj.6P;
    import _CU._13j;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import 1n4.1Jo;

    public class 0vQ extends 0Kt {

        public var 1aN:String;
        private var X9:String;
        protected var 0Xr:6P;
        protected var 1WU:_13j;

        public function 0vQ(_arg1:String, _arg2:String, _arg3:String){
            this.1aN = _arg1;
            this.X9 = _arg3;
            this.1WU = new _13j().setSize(18).setColor(0xB3B3B3);
            this.1WU.setStringBuilder(new 1cA().setParams(_arg2));
            this.1WU.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            this.1WU.x = (KeyCodeBox.WIDTH + 24);
            this.1WU.mouseEnabled = true;
            this.1WU.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            this.1WU.addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            addChild(this.1WU);
            this.0Xr = new 6P(0x272727, 0x828282, null, this.X9, 150);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            textChanged = this.1WU.textChanged;
        }

        public function 1GZ(_arg1:1Jo):void{
            this.1WU.setStringBuilder(_arg1);
        }

        public function 0Wk(_arg1:1Jo):void{
            this.0Xr.1wG(_arg1);
        }

        public function refresh():void{
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            parent.addChild(this.0Xr);
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.removeToolTip();
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.removeToolTip();
        }

        private function removeToolTip():void{
            if (((!((this.0Xr == null))) && (parent.contains(this.0Xr))))
            {
                parent.removeChild(this.0Xr);
            };
        }


    }
}//package _1zp

