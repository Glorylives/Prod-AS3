// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1mO.0bI

package 1mO{
    import flash.display.Sprite;
    import flash.text.TextField;
    import flash.utils.Timer;
    import flash.events.TimerEvent;
    import _04_._1JZ;
    import AO.nz;

    public class 0bI extends Sprite {

        private static var pendingScrollText:String = "";

        private const WIDTH:int = 280;
        private const HEIGHT:int = 25;
        private const 0Eq:int = 2;
        private const 0uH:String = "                                                                               ";
        private const 1Gx:String = "                                                                                ";

        public var 1pL:TextField;
        private var timer:Timer;
        private var 22A:uint = 0;
        private var 1Ym:int = 0;

        public function 0bI(){
            this.1pL = this.0IA();
            this.timer = new Timer(0.17, 0);
            this.0aJ();
            this.align();
            this.visible = false;
            if (0bI.pendingScrollText != "")
            {
                this.1p5(0bI.pendingScrollText);
                0bI.pendingScrollText = "";
            };
        }

        public static function Vs(_arg1:String):void{
            0bI.pendingScrollText = _arg1;
        }


        public function 1p5(_arg1:String):void{
            if (this.visible == false)
            {
                this.visible = true;
            } else
            {
                return;
            };
            this.1pL.text = ((this.0uH + _arg1) + this.1Gx);
            this.timer.addEventListener(TimerEvent.TIMER, this.vx);
            this.22A = 1;
            this.timer.start();
        }

        private function vx(_arg1:TimerEvent):void{
            this.timer.stop();
            if (this.1pL.scrollH < this.1pL.maxScrollH)
            {
                this.1Ym++;
                this.1pL.scrollH = this.1Ym;
                this.timer.start();
            } else
            {
                if ((((this.22A >= 1)) && ((this.22A < this.0Eq))))
                {
                    this.22A++;
                    this.1Ym = 0;
                    this.1pL.scrollH = 0;
                    this.timer.start();
                } else
                {
                    this.22A = 0;
                    this.1Ym = 0;
                    this.1pL.scrollH = 0;
                    this.timer.removeEventListener(TimerEvent.TIMER, this.vx);
                    this.visible = false;
                };
            };
        }

        private function align():void{
            this.1pL.x = 5;
            this.1pL.y = 2;
        }

        private function 0aJ():void{
            graphics.beginFill(0, 0.4);
            graphics.drawRoundRect(0, 0, this.WIDTH, this.HEIGHT, 12, 12);
            graphics.endFill();
        }

        private function 0IA():TextField{
            var _local1:TextField;
            _local1 = new TextField();
            var _local2:nz = _1JZ.0JF().getInstance(nz);
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

