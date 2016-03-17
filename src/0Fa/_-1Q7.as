// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Fa.1Q7

package 0Fa{
    import flash.display.Sprite;
    import flash.utils.Timer;
    import __AS3__.vec.Vector;
    import flash.events.TimerEvent;
    import 1u-.tM;
    import __AS3__.vec.*;

    public class 1Q7 extends Sprite {

        private const timer:Timer = new Timer(1000);
        private const 06E:Vector.<1si> = new Vector.<1si>();

        private var MH:Vector.<1si>;
        private var 1x9:Vector.<1si>;
        private var 1Se:int;
        private var index:int;
        private var 1fZ:Boolean;
        private var Gm:Boolean = false;
        private var 0xX:int;

        public function 1Q7(_arg1:int=7, _arg2:uint=150){
            mouseEnabled = true;
            mouseChildren = true;
            this.MH = new Vector.<1si>();
            this.1x9 = new Vector.<1si>();
            this.1Se = _arg1;
            this.0xX = _arg2;
            this.index = 0;
            this.1fZ = true;
            this.timer.addEventListener(TimerEvent.TIMER, this.0xr);
            this.timer.start();
        }

        private function 0xr(_arg1:TimerEvent):void{
            var _local2:1si;
            var _local3:1si;
            for each (_local2 in this.1x9)
            {
                if (((_local2.ik()) && (!(this.Gm))))
                {
                    this.06E.push(_local2);
                } else
                {
                    break;
                };
            };
            while (this.06E.length > 0)
            {
                this.AI(this.06E.pop());
                if (!this.1fZ)
                {
                    _local3 = this.MH[this.index++];
                    if (!_local3.ik())
                    {
                        this.tw(_local3);
                        this.1fZ = (this.index == this.MH.length);
                        this.gG();
                    };
                };
            };
        }

        public function setup(_arg1:tM):void{
            this.1Se = _arg1.1Se;
        }

        public function 1_CU(_arg1:1si):void{
            var _local2:1si;
            if (this.MH.length > this.0xX)
            {
                _local2 = this.MH.shift();
                this.AI(_local2);
                this.index--;
                if (((!(this.1fZ)) && ((this.index < this.1Se))))
                {
                    this.1qN();
                };
            };
            this.MH.push(_arg1);
            if (this.1fZ)
            {
                this.HI(_arg1);
            };
        }

        private function AI(_arg1:1si):void{
            var _local2:int = this.1x9.indexOf(_arg1);
            if (_local2 != -1)
            {
                removeChild(_arg1);
                this.1x9.splice(_local2, 1);
                this.1fZ = (this.index == this.MH.length);
            };
        }

        private function HI(_arg1:1si):void{
            this.index++;
            this.tw(_arg1);
            this.im();
            this.gG();
        }

        public function 0lv():void{
            if (((this.Gm) && (this.1JP())))
            {
                this.Qv();
            } else
            {
                this.21U();
            };
            this.Gm = true;
        }

        public function 21U():void{
            var _local4:1si;
            var _local1:int = ((this.index - this.1x9.length) - 1);
            var _local2:int = Math.max(0, ((this.index - this.1Se) - 1));
            var _local3:int = _local1;
            while (_local3 > _local2)
            {
                _local4 = this.MH[_local3];
                if (this.1x9.indexOf(_local4) == -1)
                {
                    this.1hm(_local4);
                };
                _local3--;
            };
            this.gG();
        }

        public function 1cf():void{
            if (this.Gm)
            {
                this.Gm = false;
                this.1kg();
                this.0xr(null);
            };
            if (!this.1fZ)
            {
                this.1-3();
            } else
            {
                if (this.Gm)
                {
                    this.Gm = false;
                };
            };
        }

        public function 1kg():void{
            while (!(this.1fZ))
            {
                this.1-3();
            };
        }

        public function 0ve():void{
            var _local1:int;
            if (!this.Gm)
            {
                this.21U();
                this.Gm = true;
            } else
            {
                _local1 = 0;
                while (_local1 < this.1Se)
                {
                    if (this.1JP())
                    {
                        this.Qv();
                    } else
                    {
                        return;
                    };
                    _local1++;
                };
            };
        }

        public function 1qN():void{
            var _local1:int;
            while (_local1 < this.1Se)
            {
                if (!this.1fZ)
                {
                    this.1-3();
                } else
                {
                    this.Gm = false;
                    return;
                };
                _local1++;
            };
        }

        private function tw(_arg1:1si):void{
            this.1x9.push(_arg1);
            addChild(_arg1);
        }

        private function im():void{
            if (this.1x9.length > this.1Se)
            {
                removeChild(this.1x9.shift());
            };
        }

        private function 1JP():Boolean{
            return ((this.index > this.1Se));
        }

        private function Qv():void{
            var _local1:1si = this.MH[(--this.index - this.1Se)];
            this.1hm(_local1);
            this.0oi();
            this.gG();
            this.1fZ = false;
        }

        private function 1-3():void{
            if (this.index < 0)
            {
                this.index = 0;
            };
            var _local1:1si = this.MH[this.index];
            this.index++;
            this.tw(_local1);
            this.im();
            this.1fZ = (this.index == this.MH.length);
            this.gG();
        }

        private function 1hm(_arg1:1si):void{
            this.1x9.unshift(_arg1);
            addChild(_arg1);
        }

        private function 0oi():void{
            if (this.1x9.length > this.1Se)
            {
                removeChild(this.1x9.pop());
            };
        }

        private function gG():void{
            var _local3:1si;
            var _local1:int;
            var _local2:int = this.1x9.length;
            while (_local2--)
            {
                _local3 = this.1x9[_local2];
                _local3.y = _local1;
                _local1 = (_local1 - _local3.height);
            };
        }


    }
}//package 0Fa

