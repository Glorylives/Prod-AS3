// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1RM.rf

package 1RM{
    import flash.display.Sprite;
    import flash.utils.Timer;
    import _CU.sb;
    import 1n4.1cA;
    import AO.du;
    import flash.events.TimerEvent;
    import flash.filters.DropShadowFilter;

    public class rf extends Sprite {

        private const 20m:Number = 1;
        private const 1Oa:Number = 7;

        private var 0St:Number;
        private var 1y-:Timer;
        private var use :sb;
        private var 0D6:1cA;

        public function rf(){
            this.0St = this.1dE();
            this.use  = this.1dM();
            this.0D6 = new 1cA();
            super();
            addChild(this.use );
            this.use .setStringBuilder(this.0D6.setParams(du.0_ZS, {time:this.1Og()}));
            this.1y- = new Timer(1000);
            this.1y-.addEventListener(TimerEvent.TIMER, this.1GB);
            this.1y-.start();
        }

        private function 1GB(_arg1:TimerEvent):void{
            this.0St = (this.0St - 1000);
            this.use .setStringBuilder(this.0D6.setParams(du.0_ZS, {time:this.1Og()}));
        }

        private function 1Og():String{
            var _local1:int = this.0St;
            var _local2:int = Math.floor((_local1 / 86400000));
            _local1 = (_local1 % 86400000);
            var _local3:int = Math.floor((_local1 / 3600000));
            _local1 = (_local1 % 3600000);
            var _local4:int = Math.floor((_local1 / 60000));
            _local1 = (_local1 % 60000);
            var _local5:int = Math.floor((_local1 / 1000));
            var _local6 = "";
            if (_local2 > 0)
            {
                _local6 = (((((_local2 + " days, ") + _local3) + " hours, ") + _local4) + " minutes");
            } else
            {
                _local6 = (((((_local3 + " hours, ") + _local4) + " minutes, ") + _local5) + " seconds");
            }
            return (_local6);
        }

        private function 1dE():Number{
            var _local1:Date = new Date();
            var _local2:Date = this.0Tn();
            return ((_local2.getTime() - _local1.getTime()));
        }

        private function 0Tn():Date{
            var _local1:Date = new Date();
            if ((((_local1.dayUTC == this.20m)) && ((_local1.hoursUTC < this.1Oa))))
            {
                _local1.setUTCHours((this.1Oa - _local1.hoursUTC));
                return (_local1);
            }
            _local1.setUTCHours(7);
            _local1.setUTCMinutes(0);
            _local1.setUTCSeconds(0);
            _local1.setUTCMilliseconds(0);
            _local1.setUTCDate((_local1.dateUTC + 1));
            while (_local1.dayUTC != this.20m)
            {
                _local1.setUTCDate((_local1.dateUTC + 1));
            }
            return (_local1);
        }

        private function 1dM():sb{
            var _local1:sb = new sb();
            _local1.setSize(14).setColor(16567065).setBold(true);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            return (_local1);
        }


    }
}//package 1RM

