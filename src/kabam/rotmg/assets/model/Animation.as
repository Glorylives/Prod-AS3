// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.assets.model.Animation

package kabam.rotmg.assets.model{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import __AS3__.vec.Vector;
    import flash.display.BitmapData;
    import flash.utils.Timer;
    import flash.events.TimerEvent;
    import __AS3__.vec.*;

    public class Animation extends Sprite {

        private const 0t4:int = 200;
        private const kN:Bitmap = Animation.makeBitmap();
        private const Bk:Vector.<BitmapData> = new <BitmapData>[];
        private const timer:Timer = Animation.1Ef();

        private var 0i0:Boolean;
        private var index:int;
        private var count:uint;
        private var disposed:Boolean;


        private function makeBitmap():Bitmap{
            var _local1:Bitmap = new Bitmap();
            addChild(_local1);
            return (_local1);
        }

        private function 1Ef():Timer{
            var _local1:Timer = new Timer(this.0t4);
            _local1.addEventListener(TimerEvent.TIMER, this.3C);
            return (_local1);
        }

        public function 0dU():int{
            return (this.timer.delay);
        }

        public function 1og(_arg1:int):void{
            this.timer.delay = _arg1;
        }

        public function Zx(... _args):void{
            var _local2:BitmapData;
            this.Bk.length = 0;
            this.index = 0;
            for each (_local2 in _args)
            {
                this.count = this.Bk.push(_local2);
            };
            if (this.0i0)
            {
                this.start();
            } else
            {
                this.3C();
            };
        }

        public function 0ff(_arg1:BitmapData):void{
            this.count = this.Bk.push(_arg1);
            ((this.0i0) && (this.start()));
        }

        public function start():void{
            if (((!(this.0i0)) && ((this.count > 0))))
            {
                this.timer.start();
                this.3C();
            };
            this.0i0 = true;
        }

        public function stop():void{
            ((this.0i0) && (this.timer.stop()));
            this.0i0 = false;
        }

        private function 3C(_arg1:TimerEvent=null):void{
            this.index = (++this.index % this.count);
            this.kN.bitmapData = this.Bk[this.index];
        }

        public function dispose():void{
            var _local1:BitmapData;
            this.disposed = true;
            this.stop();
            this.index = 0;
            this.count = 0;
            this.Bk.length = 0;
            for each (_local1 in this.Bk)
            {
                _local1.dispose();
            };
        }

        public function gS():Boolean{
            return (this.0i0);
        }

        public function 0JM():Boolean{
            return (this.disposed);
        }


    }
}//package kabam.rotmg.assets.model

