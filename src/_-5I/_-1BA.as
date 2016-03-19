// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5I.1BA

package 5I{
    import flash.display.Sprite;
    import flash.utils.Dictionary;
    import flash.events.Event;
    import flash.events.KeyboardEvent;

    public class 1BA extends Sprite {

        private var 0iy:Dictionary;
        private var 1FK:int = 0;
        private var selected_:1AD = null;

        public function 1BA(){
            this.0iy = new Dictionary();
            super();
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function Ih():int{
            return (this.selected_.94);
        }

        public function 21O(_arg1:int):void{
            var _local3:1AD;
            var _local2:int;
            while (_local2 < numChildren)
            {
                _local3 = (getChildAt(_local2) as 1AD);
                if (_local3 == null)
                {
                } else
                {
                    if (_local3.94 == _arg1)
                    {
                        this.setSelected(_local3);
                        return;
                    }
                }
                _local2++;
            }
        }

        protected function setSelected(_arg1:1AD):void{
            if (this.selected_ != null)
            {
                this.selected_.setSelected(false);
            }
            this.selected_ = _arg1;
            this.selected_.setSelected(true);
        }

        private function onAddedToStage(_arg1:Event):void{
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if (stage.focus != null)
            {
                return;
            }
            var _local2:1AD = this.0iy[_arg1.keyCode];
            if (_local2 == null)
            {
                return;
            }
            _local2.callback_(_local2);
        }

        protected function G4(_arg1:String, _arg2:int, _arg3:Function, _arg4:int):void{
            var _local5:1AD = new 1AD(_arg1, _arg3, _arg4);
            _local5.y = this.1FK;
            addChild(_local5);
            this.0iy[_arg2] = _local5;
            if (this.selected_ == null)
            {
                this.setSelected(_local5);
            }
            this.1FK = (this.1FK + 30);
        }

        protected function 08q():void{
            this.1FK = (this.1FK + 30);
        }


    }
}//package 5I

