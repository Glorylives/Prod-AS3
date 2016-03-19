// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1r4.JitterWatcher

package 1r4{
    import flash.display.Sprite;
    import 1n4.1cA;
    import _CU._13j;
    import __AS3__.vec.Vector;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import flash.events.Event;
    import flash.utils.getTimer;
    import AO.du;
    import __AS3__.vec.*;

    public class JitterWatcher extends Sprite {

        private static const zM:1cA = new 1cA();

        private var text_:_13j = null;
        private var 4c:int = -1;
        private var 5e:Vector.<int>;
        private var 15U:int;

        public function JitterWatcher(){
            this.5e = new Vector.<int>();
            super();
            this.text_ = new _13j().setSize(14).setColor(0xFFFFFF);
            this.text_.setAutoSize(TextFieldAutoSize.LEFT);
            this.text_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.text_);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function record():void{
            var _local3:int;
            var _local1:int = getTimer();
            if (this.4c == -1)
            {
                this.4c = _local1;
                return;
            }
            var _local2:int = (_local1 - this.4c);
            this.5e.push(_local2);
            this.15U = (this.15U + _local2);
            if (this.5e.length > 50)
            {
                _local3 = this.5e.shift();
                this.15U = (this.15U - _local3);
            }
            this.4c = _local1;
        }

        private function onAddedToStage(_arg1:Event):void{
            stage.addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onEnterFrame(_arg1:Event):void{
            this.text_.setStringBuilder(zM.setParams(du.1WC, {jitter:this.jitter()}));
        }

        private function jitter():Number{
            var _local4:int;
            var _local1:int = this.5e.length;
            if (_local1 == 0)
            {
                return (0);
            }
            var _local2:Number = (this.15U / _local1);
            var _local3:Number = 0;
            for each (_local4 in this.5e)
            {
                _local3 = (_local3 + ((_local4 - _local2) * (_local4 - _local2)));
            }
            return (Math.sqrt((_local3 / _local1)));
        }


    }
}//package 1r4

