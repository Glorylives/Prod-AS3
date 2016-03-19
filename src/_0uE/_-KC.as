// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.KC

package 0uE{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import flash.display.DisplayObject;
    import flash.events.MouseEvent;

    public class KC extends Sprite {

        public static var 1wT:Class = B6;
        public static var 0j6:Class = 4A;

        public const clicked:_1HZ = new _1HZ();

        public var disabled:Boolean = false;

        public function KC(_arg1:Number=-1){
            var _local2:DisplayObject;
            super();
            if (_arg1 < 0)
            {
                addChild(new 1wT());
            } else
            {
                _local2 = new 0j6();
                addChild(new 0j6());
                scaleX = (scaleX * _arg1);
                scaleY = (scaleY * _arg1);
            }
            buttonMode = true;
            addEventListener(MouseEvent.CLICK, this.0hN);
        }

        public function r3(_arg1:Boolean):void{
            this.disabled = _arg1;
            if (_arg1)
            {
                removeEventListener(MouseEvent.CLICK, this.0hN);
            } else
            {
                addEventListener(MouseEvent.CLICK, this.0hN);
            }
        }

        public function 1BU():void{
            this.disabled = true;
            removeEventListener(MouseEvent.CLICK, this.0hN);
        }

        private function 0hN(_arg1:MouseEvent):void{
            if (!this.disabled)
            {
                this.clicked.dispatch();
                removeEventListener(MouseEvent.CLICK, this.0hN);
            }
        }


    }
}//package 0uE

