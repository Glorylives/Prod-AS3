// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0D5.G8

package 0D5{
    import 1cI.1iz;
    import aq.Account;
    import _0BB.Fu;
    import gx.1Nb;
    import WZ.0Te;
    import flash.utils.Timer;
    import flash.events.TimerEvent;
    import com.company.util.1X3;

    public class G8 extends 1iz {

        private static const 1aK:String = "account/getCredits";

        [Inject]
        public var account:Account;
        [Inject]
        public var client:Fu;
        [Inject]
        public var 0j3:1Nb;
        [Inject]
        public var SP:0Te;
        private var 10K:Array;
        private var timer:Timer;
        private var 2T:int = 0;

        public function G8(){
            this.10K = [2, 5, 15];
            this.timer = new Timer(1000);
            super();
        }

        override protected function startTask():void{
            this.timer.addEventListener(TimerEvent.TIMER, this.21Y);
            this.timer.start();
        }

        private function 21Y(_arg1:TimerEvent):void{
            var _local2 = this.10K;
            var _local3 = this.2T;
            var _local4 = (_local2[_local3] - 1);
            _local2[_local3] = _local4;
            if (this.10K[this.2T] <= 0)
            {
                this.timer.removeEventListener(TimerEvent.TIMER, this.21Y);
                this.1IQ();
                this.2T++;
                this.timer.stop();
            };
        }

        private function 1IQ():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest(1aK, this.0J4());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            var _local4:String;
            var _local3:Boolean;
            if (_arg1)
            {
                _local4 = XML(_arg2).toString();
                if (((!((_local4 == ""))) && (!((_local4.search("Error") == -1)))))
                {
                    this.1Ep(int(_local4));
                };
            } else
            {
                if (this.2T < this.10K.length)
                {
                    this.timer.addEventListener(TimerEvent.TIMER, this.21Y);
                    this.timer.start();
                    _local3 = true;
                };
            };
            ((!(_local3)) && (1d5(_arg1, _arg2)));
        }

        private function 1Ep(_arg1:int):void{
            if (_arg1 >= 0)
            {
                if (((((!((this.0j3 == null))) && (!((this.0j3.player == null))))) && (!((_arg1 == this.0j3.player.credits_)))))
                {
                    this.0j3.player.credits_ = _arg1;
                } else
                {
                    if (((!((this.SP == null))) && (!((this.SP.0ce() == _arg1)))))
                    {
                        this.SP.1Ep(_arg1);
                    };
                };
            };
        }

        private function 0J4():Object{
            var _local1:Object = {};
            1X3.1J7(_local1, this.account.1Y());
            return (_local1);
        }


    }
}//package 0D5

