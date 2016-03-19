// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.assets.model.Animation

package kabam.rotmg.assets.model{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import flash.display.BitmapData;
    import flash.utils.Timer;
    import flash.events.TimerEvent;

    public class Animation extends Sprite {

        private const _0t4:int = 200;
        private const kN:Bitmap = makeBitmap();
        private const Bk:Vector.<BitmapData> = new <BitmapData>[];
        private const timer:Timer = _1Ef();

        private var _0i0:Boolean;
        private var index:int;
        private var count:uint;
        private var disposed:Boolean;


        private function makeBitmap():Bitmap{
            var _local1:Bitmap = new Bitmap();
            addChild(_local1);
            return (_local1);
        }

        private function _1Ef():Timer{
            var _local1:Timer = new Timer(this._0t4);
            _local1.addEventListener(TimerEvent.TIMER, this._3C);
            return (_local1);
        }

        public function _0dU():int{
            return (this.timer.delay);
        }

        public function _1og(_arg1:int):void{
            this.timer.delay = _arg1;
        }

        public function _Zx(... _args):void{
            var _local2:BitmapData;
            this.Bk.length = 0;
            this.index = 0;
            for each (_local2 in _args)
            {
                this.count = this.Bk.push(_local2);
            }
            if (this._0i0)
            {
                this.start();
            } else
            {
                this._3C();
            }
        }

        public function _0ff(_arg1:BitmapData):void{
            this.count = this.Bk.push(_arg1);
            ((this._0i0) && (this.start()));
        }

        public function start():void{
            if (((!(this._0i0)) && ((this.count > 0))))
            {
                this.timer.start();
                this._3C();
            }
            this._0i0 = true;
        }

        public function stop():void{
            ((this._0i0) && (this.timer.stop()));
            this._0i0 = false;
        }

        private function _3C(_arg1:TimerEvent=null):void{
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
            }
        }

        public function gS():Boolean{
            return (this._0i0);
        }

        public function _0JM():Boolean{
            return (this.disposed);
        }


    }
}//package kabam.rotmg.assets.model

