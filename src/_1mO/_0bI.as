// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1mO.0bI

package _1mO{
    import flash.display.Sprite;
    import flash.text.TextField;
    import flash.utils.Timer;
    import flash.events.TimerEvent;
    import _04_._1JZ;
    import _AO._nz;

    public class _0bI extends Sprite {

        private static var pendingScrollText:String = "";

        private const WIDTH:int = 280;
        private const HEIGHT:int = 25;
        private const _0Eq:int = 2;
        private const _0uH:String = "                                                                               ";
        private const _1Gx:String = "                                                                                ";

        public var _1pL:TextField;
        private var timer:Timer;
        private var _22A:uint = 0;
        private var _1Ym:int = 0;

        public function _0bI(){
            this._1pL = this._0IA();
            this.timer = new Timer(0.17, 0);
            this._0aJ();
            this.align();
            this.visible = false;
            if (_0bI.pendingScrollText != "")
            {
                this._1p5(_0bI.pendingScrollText);
                _0bI.pendingScrollText = "";
            }
        }

        public static function Vs(_arg1:String):void{
            _0bI.pendingScrollText = _arg1;
        }


        public function _1p5(_arg1:String):void{
            if (this.visible == false)
            {
                this.visible = true;
            } else
            {
                return;
            }
            this._1pL.text = ((this._0uH + _arg1) + this._1Gx);
            this.timer.addEventListener(TimerEvent.TIMER, this.vx);
            this._22A = 1;
            this.timer.start();
        }

        private function vx(_arg1:TimerEvent):void{
            this.timer.stop();
            if (this._1pL.scrollH < this._1pL.maxScrollH)
            {
                this._1Ym++;
                this._1pL.scrollH = this._1Ym;
                this.timer.start();
            } else
            {
                if ((((this._22A >= 1)) && ((this._22A < this._0Eq))))
                {
                    this._22A++;
                    this._1Ym = 0;
                    this._1pL.scrollH = 0;
                    this.timer.start();
                } else
                {
                    this._22A = 0;
                    this._1Ym = 0;
                    this._1pL.scrollH = 0;
                    this.timer.removeEventListener(TimerEvent.TIMER, this.vx);
                    this.visible = false;
                }
            }
        }

        private function align():void{
            this._1pL.x = 5;
            this._1pL.y = 2;
        }

        private function _0aJ():void{
            graphics.beginFill(0, 0.4);
            graphics.drawRoundRect(0, 0, this.WIDTH, this.HEIGHT, 12, 12);
            graphics.endFill();
        }

        private function _0IA():TextField{
            var _local1:TextField;
            _local1 = new TextField();
            var _local2:_nz = _1JZ._0JF().getInstance(_nz);
            _local2.apply(_local1, 16, 0xFFFFFF, false);
            _local1.selectable = false;
            _local1.doubleClickEnabled = false;
            _local1.mouseEnabled = false;
            _local1.mouseWheelEnabled = false;
            _local1.text = "";
            _local1.wordWrap = false;
            _local1.multiline = false;
            _local1.selectable = false;
            _local1.width = (this.WIDTH - 10);
            _local1.height = 25;
            addChild(_local1);
            return (_local1);
        }


    }
}//package 1mO

