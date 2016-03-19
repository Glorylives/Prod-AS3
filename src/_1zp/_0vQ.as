// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.0vQ

package _1zp{
    import _0qj._6P;
    import _CU._13j;
    import _1n4._1cA;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import _1n4._1Jo;

    public class _0vQ extends _0Kt {

        public var _1aN:String;
        private var X9:String;
        protected var _0Xr:_6P;
        protected var _1WU:_13j;

        public function _0vQ(_arg1:String, _arg2:String, _arg3:String){
            this._1aN = _arg1;
            this.X9 = _arg3;
            this._1WU = new _13j().setSize(18).setColor(0xB3B3B3);
            this._1WU.setStringBuilder(new _1cA().setParams(_arg2));
            this._1WU.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            this._1WU.x = (KeyCodeBox.WIDTH + 24);
            this._1WU.mouseEnabled = true;
            this._1WU.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            this._1WU.addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            addChild(this._1WU);
            this._0Xr = new _6P(0x272727, 0x828282, null, this.X9, 150);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            textChanged = this._1WU.textChanged;
        }

        public function _1GZ(_arg1:_1Jo):void{
            this._1WU.setStringBuilder(_arg1);
        }

        public function _0Wk(_arg1:_1Jo):void{
            this._0Xr._1wG(_arg1);
        }

        public function refresh():void{
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            parent.addChild(this._0Xr);
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.removeToolTip();
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.removeToolTip();
        }

        private function removeToolTip():void{
            if (((!((this._0Xr == null))) && (parent.contains(this._0Xr))))
            {
                parent.removeChild(this._0Xr);
            }
        }


    }
}//package _1zp

