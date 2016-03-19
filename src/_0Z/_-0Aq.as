// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Z-.0Aq

package 0Z-{
    import flash.display.Sprite;
    import flash.display.Shape;
    import _CU._13j;
    import 1n4.1cA;
    import 1n4.AppendingLineBuilder;
    import flash.display.Bitmap;
    import 0IN.1qO;
    import flash.events.Event;
    import flash.geom.ColorTransform;

    public class 0Aq extends Sprite {

        protected var 0C3:Shape;
        protected var 03X:Shape;
        protected var bg:Shape;
        private var 0oU:_13j;
        private var 01D:1cA;
        private var 0Il:_13j;
        private var 0zz:AppendingLineBuilder;
        protected var 0ep:Sprite;
        protected var mQ:Bitmap;
        protected var icon:Sprite;
        public var itemId:int = -1;
        public var w:int = -1;
        public var objectId:int = -1;

        public function 0Aq(){
            this.0C3 = 1qO.1V2(46, 0x545454, 0, false, true);
            this.03X = 1qO.1V2(40, 0x545454, 3, false, true);
            this.bg = 1qO.1V2(46, 0x545454, 0, true, false);
            this.0oU = 1qO.aT();
            this.01D = new 1cA();
            this.0Il = 1qO.1eg(16777103, 100);
            this.0zz = new AppendingLineBuilder();
            this.0ep = new Sprite();
            this.mQ = new Bitmap();
            super();
            this.Fl();
            this.0Il.textChanged.add(this.1Pw);
            this.0oU.textChanged.add(this.1Pw);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function setTitle(_arg1:String, _arg2:Object):void{
            this.01D.setParams(_arg1, _arg2);
            this.0oU.setStringBuilder(this.01D);
        }

        public function iY(_arg1:String, _arg2:Object):void{
            this.0zz.clear();
            this.0zz.pushParams(_arg1, _arg2);
            this.0Il.setStringBuilder(this.0zz);
        }

        public function 0LZ(_arg1:Boolean):void{
            this.0C3.visible = !(_arg1);
            var _local2:int = ((_arg1) ? 40 : 46);
            var _local3:int = ((_arg1) ? 3 : 0);
            this.bg.graphics.clear();
            this.bg.graphics.beginFill(0x464646);
            this.bg.graphics.drawRoundRect(0, _local3, _local2, _local2, 16, 16);
            this.bg.x = ((100 - _local2) * 0.5);
        }

        public function 1ZU(_arg1:Boolean, _arg2:int=16777103, _arg3:Boolean=false):void{
            var _local5:ColorTransform;
            var _local4:ColorTransform = this.03X.transform.colorTransform;
            _local4.color = ((_arg1) ? _arg2 : 0x545454);
            this.03X.transform.colorTransform = _local4;
            if (this.0C3.visible)
            {
                _local5 = this.0C3.transform.colorTransform;
                _local5.color = ((_arg3) ? _arg2 : 0x545454);
                this.0C3.transform.colorTransform = _local5;
            };
        }

        protected function 0Pi():void{
            this.0ep.x = 0;
            this.0ep.y = 0;
            this.mQ.x = ((100 - this.mQ.width) * 0.5);
            this.mQ.y = ((46 - this.mQ.height) * 0.5);
        }

        public function setIcon(_arg1:Sprite):void{
            ((this.icon) && (removeChild(this.icon)));
            this.icon = _arg1;
            addChild(this.icon);
            this.002();
        }

        public function getIcon():Sprite{
            return (this.icon);
        }

        protected function 002():void{
            this.icon.x = ((100 - this.icon.width) * 0.5);
            this.icon.y = ((46 - this.icon.height) * 0.5);
        }

        protected function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.0Il.textChanged.remove(this.1Pw);
            this.0oU.textChanged.remove(this.1Pw);
        }

        private function Fl():void{
            this.0ep.addChild(this.mQ);
            addChild(this.bg);
            addChild(this.03X);
            addChild(this.0C3);
            addChild(this.0oU);
            addChild(this.0Il);
            addChild(this.0ep);
        }

        private function 1Pw():void{
            this.0Il.y = ((this.0oU.y + this.0oU.height) - 1);
        }


    }
}//package 0Z-

