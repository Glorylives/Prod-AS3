// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.ve

package 1UB{
    import flash.display.Sprite;
    import _CU.sb;
    import 1n4.1WS;
    import flash.utils.Timer;
    import flash.events.TimerEvent;
    import flash.filters.DropShadowFilter;

    public class ve extends Sprite {

        private const kV:sb = ve.iN();
        private const Fm:1WS = new 1WS();
        private const timer:Timer = new Timer(1000);

        private var xa:Number = 0;


        public function start():void{
            this.1y-(null);
            this.timer.addEventListener(TimerEvent.TIMER, this.1y-);
            this.timer.start();
        }

        public function stop():void{
            this.timer.removeEventListener(TimerEvent.TIMER, this.1y-);
            this.timer.stop();
        }

        private function 1y-(_arg1:TimerEvent):void{
            var _local2:int = (this.xa / 60);
            var _local3:int = (this.xa % 60);
            var _local4:String = (((_local2 < 10)) ? "0" : "");
            _local4 = (_local4 + (_local2 + ":"));
            _local4 = (_local4 + (((_local3 < 10)) ? "0" : ""));
            _local4 = (_local4 + _local3);
            this.kV.setStringBuilder(this.Fm.setString(_local4));
            this.xa++;
        }

        private function iN():sb{
            var _local1:sb = new sb();
            _local1.setSize(24).setBold(true).setColor(0xFFFFFF);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            addChild(_local1);
            return (_local1);
        }


    }
}//package 1UB

