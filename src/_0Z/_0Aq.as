// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Z-.0Aq

package _0Z{
    import flash.display.Sprite;
    import flash.display.Shape;
    import _CU._13j;
    import _1n4._1cA;
    import _1n4.AppendingLineBuilder;
    import flash.display.Bitmap;
    import _0IN._1qO;
    import flash.events.Event;
    import flash.geom.ColorTransform;

    public class _0Aq extends Sprite {

        protected var _0C3:Shape;
        protected var _03X:Shape;
        protected var bg:Shape;
        private var _0oU:_13j;
        private var _01D:_1cA;
        private var _0Il:_13j;
        private var _0zz:AppendingLineBuilder;
        protected var _0ep:Sprite;
        protected var mQ:Bitmap;
        protected var icon:Sprite;
        public var itemId:int = -1;
        public var w:int = -1;
        public var objectId:int = -1;

        public function _0Aq(){
            this._0C3 = _1qO._1V2(46, 0x545454, 0, false, true);
            this._03X = _1qO._1V2(40, 0x545454, 3, false, true);
            this.bg = _1qO._1V2(46, 0x545454, 0, true, false);
            this._0oU = _1qO.aT();
            this._01D = new _1cA();
            this._0Il = _1qO._1eg(16777103, 100);
            this._0zz = new AppendingLineBuilder();
            this._0ep = new Sprite();
            this.mQ = new Bitmap();
            super();
            this.Fl();
            this._0Il.textChanged.add(this._1Pw);
            this._0oU.textChanged.add(this._1Pw);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function setTitle(_arg1:String, _arg2:Object):void{
            this._01D.setParams(_arg1, _arg2);
            this._0oU.setStringBuilder(this._01D);
        }

        public function iY(_arg1:String, _arg2:Object):void{
            this._0zz.clear();
            this._0zz.pushParams(_arg1, _arg2);
            this._0Il.setStringBuilder(this._0zz);
        }

        public function _0LZ(_arg1:Boolean):void{
            this._0C3.visible = !(_arg1);
            var _local2:int = ((_arg1) ? 40 : 46);
            var _local3:int = ((_arg1) ? 3 : 0);
            this.bg.graphics.clear();
            this.bg.graphics.beginFill(0x464646);
            this.bg.graphics.drawRoundRect(0, _local3, _local2, _local2, 16, 16);
            this.bg.x = ((100 - _local2) * 0.5);
        }

        public function _1ZU(_arg1:Boolean, _arg2:int=16777103, _arg3:Boolean=false):void{
            var _local5:ColorTransform;
            var _local4:ColorTransform = this._03X.transform.colorTransform;
            _local4.color = ((_arg1) ? _arg2 : 0x545454);
            this._03X.transform.colorTransform = _local4;
            if (this._0C3.visible)
            {
                _local5 = this._0C3.transform.colorTransform;
                _local5.color = ((_arg3) ? _arg2 : 0x545454);
                this._0C3.transform.colorTransform = _local5;
            };
        }

        protected function _0Pi():void{
            this._0ep.x = 0;
            this._0ep.y = 0;
            this.mQ.x = ((100 - this.mQ.width) * 0.5);
            this.mQ.y = ((46 - this.mQ.height) * 0.5);
        }

        public function setIcon(_arg1:Sprite):void{
            ((this.icon) && (removeChild(this.icon)));
            this.icon = _arg1;
            addChild(this.icon);
            this._002();
        }

        public function getIcon():Sprite{
            return (this.icon);
        }

        protected function _002():void{
            this.icon.x = ((100 - this.icon.width) * 0.5);
            this.icon.y = ((46 - this.icon.height) * 0.5);
        }

        protected function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this._0Il.textChanged.remove(this._1Pw);
            this._0oU.textChanged.remove(this._1Pw);
        }

        private function Fl():void{
            this._0ep.addChild(this.mQ);
            addChild(this.bg);
            addChild(this._03X);
            addChild(this._0C3);
            addChild(this._0oU);
            addChild(this._0Il);
            addChild(this._0ep);
        }

        private function _1Pw():void{
            this._0Il.y = ((this._0oU.y + this._0oU.height) - 1);
        }


    }
}//package 0Z-

