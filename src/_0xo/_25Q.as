// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0xo.25Q

package _0xo{
    import flash.utils.Timer;
    import _XF._1eq;
    import _Jy._1HZ;
    import flash.events.TimerEvent;

    public class _25Q {

        public var objectId:uint;
        private var mz:Array;
        private var _1Ok:uint;
        public var dY:uint;
        public var _0kC:int;
        public var position:int;
        public var available:Boolean;
        private var _1JX:int;
        private var g:Timer;
        private var yK:_1eq;
        private var _1qF:Timer;
        private var _1yD:_1eq;
        public var update:_1HZ;

        public function _25Q(){
            this.update = new _1HZ(int);
            this.available = true;
        }

        public function set t8(_arg1:Array):void{
            this.mz = _arg1;
            if (((!((_arg1 == null))) && ((_arg1.length > 0))))
            {
                this._1JX = 0;
            }
        }

        public function get t8():Array{
            return (this.mz);
        }

        public function set xK(_arg1:uint):void{
            this._1Ok = _arg1;
            this.g = new Timer(_arg1, 0);
            this.yK = new _1eq(this.g, TimerEvent.TIMER, TimerEvent);
            this.yK.add(this._0J8);
        }

        public function set lF(_arg1:uint):void{
            this.dY = _arg1;
            this._1qF = new Timer(_arg1, 0);
            this._1yD = new _1eq(this._1qF, TimerEvent.TIMER, TimerEvent);
            this._1yD.add(this._1Ae);
        }

        public function _0Xk():void{
            if (this.available)
            {
                this.g.reset();
                this.g.start();
                this._1qF.reset();
                this._1qF.start();
                this.available = false;
                if (this._1JX < (this.t8.length - 1))
                {
                    this._1JX++;
                }
                this.update.dispatch(this.position);
            }
        }

        private function _1Ae(_arg1:TimerEvent):void{
            if (this._1JX == 0)
            {
                this._1qF.stop();
            }
            this.available = true;
            this.update.dispatch(this.position);
        }

        private function _0J8(_arg1:TimerEvent):void{
            this._1JX--;
            if (this._1JX == 0)
            {
                this.g.stop();
            }
            this.update.dispatch(this.position);
        }

        public function _18j(_arg1:int):int{
            var _local2:int;
            if (_arg1 <= 0)
            {
                _local2 = this.t8[this._1JX];
            }
            return (_local2);
        }


    }
}//package 0xo

