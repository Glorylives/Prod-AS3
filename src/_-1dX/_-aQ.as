// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1dX.aQ

package 1dX{
    import flash.display.Sprite;
    import flash.display.DisplayObject;
    import kabam.rotmg.assets.0EP;
    import flash.events.Event;
    import flash.utils.getTimer;

    public class aQ extends Sprite {

        public const 6m:DisplayObject = new 0EP.StarburstSpinner();

        public var 0hE:Number;
        private var 1rU:Number;
        private var 1P7:Number;

        public function aQ(){
            this.1rU = 0;
            this.J7();
            this.Nw();
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            addEventListener(Event.REMOVED_FROM_STAGE, this.1io);
        }

        private function J7():void{
            this.0hE = 50;
        }

        private function Nw():void{
            addChild(this.6m);
            this.6m.x = ((-1 * width) / 2);
            this.6m.y = ((-1 * height) / 2);
        }

        private function 1io(_arg1:Event):void{
            removeEventListener(Event.REMOVED_FROM_STAGE, this.1io);
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onEnterFrame(_arg1:Event):void{
            this.0u1();
            rotation = ((this.0hE * this.1rU) % 360);
        }

        private function 0u1():void{
            var _local1:Number = (getTimer() / 1000);
            if (this.1P7)
            {
                this.1rU = (this.1rU + (_local1 - this.1P7));
            }
            this.1P7 = _local1;
        }


    }
}//package 1dX

