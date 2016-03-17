// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//TN.XL

package TN{
    import flash.display.Sprite;
    import flash.utils.Timer;
    import flash.events.Event;
    import flash.display.BlendMode;
    import flash.events.TimerEvent;

    public class XL extends Sprite {

        private const 27K:Sprite = XL.0g-();
        private const 0pJ:Sprite = XL.21N();
        private const HX:Sprite = XL.0Mu();
        private const timer:Timer = new Timer(25);
        private const radius:int = 22;
        private const color:uint = 0xFFFFFF;

        public function XL(){
            x = (y = this.radius);
            this.Fl();
            addEventListener(Event.ADDED_TO_STAGE, this.zp);
            addEventListener(Event.REMOVED_FROM_STAGE, this.1io);
        }

        private function 0g-():Sprite{
            var _local1:Sprite;
            _local1 = new Sprite();
            _local1.blendMode = BlendMode.LAYER;
            _local1.graphics.beginFill(this.color);
            _local1.graphics.drawCircle(0, 0, this.radius);
            _local1.graphics.endFill();
            return (_local1);
        }

        private function 21N():Sprite{
            var _local1:Sprite = new Sprite();
            _local1.blendMode = BlendMode.ERASE;
            _local1.graphics.beginFill((0xFFFFFF * 0.6));
            _local1.graphics.drawCircle(0, 0, (this.radius / 2));
            _local1.graphics.endFill();
            return (_local1);
        }

        private function 0Mu():Sprite{
            var _local1:Sprite = new Sprite();
            _local1.graphics.beginFill(0xFFFFFF);
            _local1.graphics.drawRect(0, 0, this.radius, this.radius);
            _local1.graphics.endFill();
            return (_local1);
        }

        private function Fl():void{
            this.27K.addChild(this.0pJ);
            this.27K.addChild(this.HX);
            this.27K.mask = this.HX;
            addChild(this.27K);
        }

        private function zp(_arg1:Event):void{
            this.timer.addEventListener(TimerEvent.TIMER, this.Gh);
            this.timer.start();
        }

        private function 1io(_arg1:Event):void{
            this.timer.stop();
            this.timer.removeEventListener(TimerEvent.TIMER, this.Gh);
        }

        private function Gh(_arg1:TimerEvent):void{
            this.HX.rotation = (this.HX.rotation + 20);
        }


    }
}//package TN

