// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.1nU

package 1UB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU.sb;
    import 1n4.1WS;
    import flash.utils.Timer;
    import flash.events.TimerEvent;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;

    public class 1nU extends Sprite {

        public const close:_1HZ = new _1HZ();
        private const 0CR:Sprite = new Sprite();
        private const 1mT:sb = 1nU.0nU();
        private const 1XS:1WS = new 1WS();
        private const 0g2:sb = 1nU.0Ee();
        private const 20F:Timer = new Timer(1000);
        private const 04I:Sprite = new Sprite();
        private const 1AU = 1nU.0BT();
        private const Tg:sb = 1nU.0oM();
        private const 0PC:sb = 1nU.0dv();
        private const 0F9:sb = 1nU.0up();
        private const ML:Timer = new Timer(1500, 1);

        private var 0Lp:Class;
        private var count:int = 5;
        private var waveNumber:int = -1;

        public function 1nU(){
            this.0Lp = Qw;
            super();
        }

        public function init():void{
            mouseChildren = false;
            mouseEnabled = false;
            this.20F.addEventListener(TimerEvent.TIMER, this.Ka);
            this.20F.start();
        }

        public function destroy():void{
            this.20F.stop();
            this.20F.removeEventListener(TimerEvent.TIMER, this.Ka);
            this.ML.stop();
            this.ML.removeEventListener(TimerEvent.TIMER, this.an);
        }

        public function show():void{
            addChild(this.0CR);
            this.center();
        }

        public function 1dj(_arg1:int):void{
            this.waveNumber = _arg1;
            this.0PC.setStringBuilder(new 1WS(this.waveNumber.toString()));
            this.0PC.x = ((this.1AU.width / 2) - (this.0PC.width / 2));
        }

        private function center():void{
            x = (300 - (width / 2));
            y = ((contains(this.0CR)) ? 138 : 87.5);
        }

        private function Ka(_arg1:TimerEvent):void{
            if (this.count > 1)
            {
                this.count--;
                this.0g2.setStringBuilder(this.1XS.setString(this.count.toString()));
                this.0g2.x = ((this.1mT.width / 2) - (this.0g2.width / 2));
            } else
            {
                removeChild(this.0CR);
                addChild(this.04I);
                this.20F.removeEventListener(TimerEvent.TIMER, this.Ka);
                this.ML.addEventListener(TimerEvent.TIMER, this.an);
                this.ML.start();
                this.center();
            }
        }

        private function an(_arg1:TimerEvent):void{
            this.ML.removeEventListener(TimerEvent.TIMER, this.an);
            this.close.dispatch();
        }

        private function 0nU():sb{
            var _local1:sb = new sb();
            _local1.setSize(20).setBold(true).setColor(0xCCCCCC);
            _local1.setStringBuilder(new 1cA().setParams(du.0pd));
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 2)];
            this.0CR.addChild(_local1);
            return (_local1);
        }

        private function 0Ee():sb{
            var _local1:sb;
            _local1 = new sb();
            _local1.setSize(42).setBold(true).setColor(0xCCCCCC);
            _local1.setStringBuilder(this.1XS.setString(this.count.toString()));
            _local1.y = this.1mT.height;
            _local1.x = ((this.1mT.width / 2) - (_local1.width / 2));
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 2)];
            this.0CR.addChild(_local1);
            return (_local1);
        }

        private function 0oM():sb{
            var _local1:sb = new sb();
            _local1.setSize(18).setBold(true).setColor(16567065);
            _local1.setStringBuilder(new 1cA().setParams(du.0la));
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 2)];
            _local1.x = ((this.1AU.width / 2) - (_local1.width / 2));
            _local1.y = (((this.1AU.height / 2) - (_local1.height / 2)) - 15);
            this.04I.addChild(_local1);
            return (_local1);
        }

        private function 0dv():sb{
            var _local1:sb = new sb();
            _local1.setSize(40).setBold(true).setColor(16567065);
            _local1.y = ((this.Tg.y + this.Tg.height) - 5);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 2)];
            this.04I.addChild(_local1);
            return (_local1);
        }

        private function 0BT(){
            var _local1:* = new this.0Lp();
            this.04I.addChild(_local1);
            return (_local1);
        }

        private function 0up():sb{
            var _local1:sb = new sb();
            _local1.setSize(32).setBold(true).setColor(0xB3B3B3);
            _local1.setStringBuilder(new 1cA().setParams(du.19X));
            _local1.y = ((this.1AU.y + this.1AU.height) - 5);
            _local1.x = ((this.1AU.width / 2) - (_local1.width / 2));
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 2)];
            this.04I.addChild(_local1);
            return (_local1);
        }


    }
}//package 1UB

