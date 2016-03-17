// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0xo.25Q

package 0xo{
    import flash.utils.Timer;
    import XF.1eq;
    import _Jy._1HZ;
    import flash.events.TimerEvent;

    public class 25Q {

        public var objectId:uint;
        private var mz:Array;
        private var 1Ok:uint;
        public var dY:uint;
        public var 0kC:int;
        public var position:int;
        public var available:Boolean;
        private var 1JX:int;
        private var g:Timer;
        private var yK:1eq;
        private var 1qF:Timer;
        private var 1yD:1eq;
        public var update:_1HZ;

        public function 25Q(){
            this.update = new _1HZ(int);
            this.available = true;
        }

        public function set t8(_arg1:Array):void{
            this.mz = _arg1;
            if (((!((_arg1 == null))) && ((_arg1.length > 0))))
            {
                this.1JX = 0;
            };
        }

        public function get t8():Array{
            return (this.mz);
        }

        public function set xK(_arg1:uint):void{
            this.1Ok = _arg1;
            this.g = new Timer(_arg1, 0);
            this.yK = new 1eq(this.g, TimerEvent.TIMER, TimerEvent);
            this.yK.add(this.0J8);
        }

        public function set lF(_arg1:uint):void{
            this.dY = _arg1;
            this.1qF = new Timer(_arg1, 0);
            this.1yD = new 1eq(this.1qF, TimerEvent.TIMER, TimerEvent);
            this.1yD.add(this.1Ae);
        }

        public function 0Xk():void{
            if (this.available)
            {
                this.g.reset();
                this.g.start();
                this.1qF.reset();
                this.1qF.start();
                this.available = false;
                if (this.1JX < (this.t8.length - 1))
                {
                    this.1JX++;
                };
                this.update.dispatch(this.position);
            };
        }

        private function 1Ae(_arg1:TimerEvent):void{
            if (this.1JX == 0)
            {
                this.1qF.stop();
            };
            this.available = true;
            this.update.dispatch(this.position);
        }

        private function 0J8(_arg1:TimerEvent):void{
            this.1JX--;
            if (this.1JX == 0)
            {
                this.g.stop();
            };
            this.update.dispatch(this.position);
        }

        public function 18j(_arg1:int):int{
            var _local2:int;
            if (_arg1 <= 0)
            {
                _local2 = this.t8[this.1JX];
            };
            return (_local2);
        }


    }
}//package 0xo

