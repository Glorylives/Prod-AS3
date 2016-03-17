// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.Lz

package _1aA{
    import flash.display.Sprite;
    import flash.geom.ColorTransform;
    import flash.filters.DropShadowFilter;
    import _Jy._1HZ;
    import _CU._13j;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import 1n4.1cA;
    import flash.utils.getTimer;
    import com.company.util.MoreColorUtil;
    import _ZS.0ZC;

    public class _Lz extends Sprite {

        protected static const fD:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));
        private static const t3:DropShadowFilter = new DropShadowFilter(0, 0, 0, 0.5, 12, 12);

        public const clicked:__1HZ = new _1HZ();
        public const textField:__13j = Lz.1la();
        public const n4:_1HZ = Lz.textField.textChanged;

        private var colorTransform:ColorTransform;
        private var size:int;
        private var 0h2:Boolean;
        private var YJ:Number;
        private var 0YT:Number;
        private var active:Boolean;
        private var color:uint = 0xFFFFFF;
        private var 6G:uint;

        public function _Lz(_arg1:String, _arg2:int, _arg3:Boolean){
            this.size = _arg2;
            this.0h2 = _arg3;
            this.textField.setSize(_arg2).setColor(0xFFFFFF).setBold(true);
            this.2-Y(_arg1);
            this.YJ = width;
            this.0YT = height;
            this.activate();
        }

        public function activate():void{
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            addEventListener(MouseEvent.CLICK, this.05M);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.active = true;
        }

        public function deactivate():void{
            var _local1:ColorTransform = new ColorTransform();
            _local1.color = 0x363636;
            this.0bB(_local1);
            removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            removeEventListener(MouseEvent.CLICK, this.05M);
            removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.active = false;
        }

        public function setColor(_arg1:uint):void{
            this.color = _arg1;
            var _local2:uint = ((_arg1 & 0xFF0000) >> 16);
            var _local3:uint = ((_arg1 & 0xFF00) >> 8);
            var _local4:uint = (_arg1 & 0xFF);
            var _local5:ColorTransform = new ColorTransform((_local2 / 0xFF), (_local3 / 0xFF), (_local4 / 0xFF));
            this.0bB(_local5);
        }

        public function 1cX():Boolean{
            return (this.active);
        }

        private function 1la():_13j{
            var _local1:_13j;
            _local1 = new _13j();
            _local1.filters = [t3];
            addChild(_local1);
            return (_local1);
        }

        public function 2-Y(_arg1:String):void{
            name = _arg1;
            this.textField.setStringBuilder(new 1cA().setParams(_arg1));
        }

        public function setAutoSize(_arg1:String):void{
            this.textField.setAutoSize(_arg1);
        }

        public function setVerticalAlign(_arg1:String):void{
            this.textField.setVerticalAlign(_arg1);
        }

        private function onAddedToStage(_arg1:Event):void{
            if (this.0h2)
            {
                addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            };
        }

        private function onRemovedFromStage(_arg1:Event):void{
            if (this.0h2)
            {
                removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            };
        }

        private function onEnterFrame(_arg1:Event):void{
            var _local2:Number = (1.05 + (0.05 * Math.sin((getTimer() / 200))));
            this.textField.scaleX = _local2;
            this.textField.scaleY = _local2;
        }

        public function 0bB(_arg1:ColorTransform):void{
            if (_arg1 == this.colorTransform)
            {
                return;
            };
            this.colorTransform = _arg1;
            if (this.colorTransform == null)
            {
                this.textField.transform.colorTransform = MoreColorUtil.identity;
            } else
            {
                this.textField.transform.colorTransform = this.colorTransform;
            };
        }

        protected function onMouseOver(_arg1:MouseEvent):void{
            this.0bB(fD);
        }

        protected function onMouseOut(_arg1:MouseEvent):void{
            if (this.color != 0xFFFFFF)
            {
                this.setColor(this.color);
            } else
            {
                this.0bB(null);
            };
        }

        protected function 05M(_arg1:MouseEvent):void{
            0ZC.play("button_click");
            this.clicked.dispatch();
        }

        override public function toString():String{
            return ((("[TitleMenuOption " + this.textField.1UU()) + "]"));
        }


    }
}//package _1aA

