// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Fa.1Q7

package _0Fa{
    import flash.display.Sprite;
    import flash.utils.Timer;
    import flash.events.TimerEvent;
    import _1u._tM;

    public class _1Q7 extends Sprite {

        private const timer:Timer = new Timer(1000);
        private const _06E:Vector.<_1si> = new Vector.<_1si>();

        private var MH:Vector.<_1si>;
        private var _1x9:Vector.<_1si>;
        private var _1Se:int;
        private var index:int;
        private var _1fZ:Boolean;
        private var Gm:Boolean = false;
        private var _0xX:int;

        public function _1Q7(_arg1:int=7, _arg2:uint=150){
            mouseEnabled = true;
            mouseChildren = true;
            this.MH = new Vector.<_1si>();
            this._1x9 = new Vector.<_1si>();
            this._1Se = _arg1;
            this._0xX = _arg2;
            this.index = 0;
            this._1fZ = true;
            this.timer.addEventListener(TimerEvent.TIMER, this._0xr);
            this.timer.start();
        }

        private function _0xr(_arg1:TimerEvent):void{
            var _local2:_1si;
            var _local3:_1si;
            for each (_local2 in this._1x9)
            {
                if (((_local2.ik()) && (!(this.Gm))))
                {
                    this._06E.push(_local2);
                } else
                {
                    break;
                }
            }
            while (this._06E.length > 0)
            {
                this.AI(this._06E.pop());
                if (!this._1fZ)
                {
                    _local3 = this.MH[this.index++];
                    if (!_local3.ik())
                    {
                        this.tw(_local3);
                        this._1fZ = (this.index == this.MH.length);
                        this.gG();
                    }
                }
            }
        }

        public function setup(_arg1:_tM):void{
            this._1Se = _arg1._1Se;
        }

        public function _1_CU(_arg1:_1si):void{
            var _local2:_1si;
            if (this.MH.length > this._0xX)
            {
                _local2 = this.MH.shift();
                this.AI(_local2);
                this.index--;
                if (((!(this._1fZ)) && ((this.index < this._1Se))))
                {
                    this._1qN();
                }
            }
            this.MH.push(_arg1);
            if (this._1fZ)
            {
                this.HI(_arg1);
            }
        }

        private function AI(_arg1:_1si):void{
            var _local2:int = this._1x9.indexOf(_arg1);
            if (_local2 != -1)
            {
                removeChild(_arg1);
                this._1x9.splice(_local2, 1);
                this._1fZ = (this.index == this.MH.length);
            }
        }

        private function HI(_arg1:_1si):void{
            this.index++;
            this.tw(_arg1);
            this.im();
            this.gG();
        }

        public function _0lv():void{
            if (((this.Gm) && (this._1JP())))
            {
                this.Qv();
            } else
            {
                this._21U();
            }
            this.Gm = true;
        }

        public function _21U():void{
            var _local4:_1si;
            var _local1:int = ((this.index - this._1x9.length) - 1);
            var _local2:int = Math.max(0, ((this.index - this._1Se) - 1));
            var _local3:int = _local1;
            while (_local3 > _local2)
            {
                _local4 = this.MH[_local3];
                if (this._1x9.indexOf(_local4) == -1)
                {
                    this._1hm(_local4);
                }
                _local3--;
            }
            this.gG();
        }

        public function _1cf():void{
            if (this.Gm)
            {
                this.Gm = false;
                this._1kg();
                this._0xr(null);
            }
            if (!this._1fZ)
            {
                this._13();
            } else
            {
                if (this.Gm)
                {
                    this.Gm = false;
                }
            }
        }

        public function _1kg():void{
            while (!(this._1fZ))
            {
                this._13();
            }
        }

        public function _0ve():void{
            var _local1:int;
            if (!this.Gm)
            {
                this._21U();
                this.Gm = true;
            } else
            {
                _local1 = 0;
                while (_local1 < this._1Se)
                {
                    if (this._1JP())
                    {
                        this.Qv();
                    } else
                    {
                        return;
                    }
                    _local1++;
                }
            }
        }

        public function _1qN():void{
            var _local1:int;
            while (_local1 < this._1Se)
            {
                if (!this._1fZ)
                {
                    this._13();
                } else
                {
                    this.Gm = false;
                    return;
                }
                _local1++;
            }
        }

        private function tw(_arg1:_1si):void{
            this._1x9.push(_arg1);
            addChild(_arg1);
        }

        private function im():void{
            if (this._1x9.length > this._1Se)
            {
                removeChild(this._1x9.shift());
            }
        }

        private function _1JP():Boolean{
            return ((this.index > this._1Se));
        }

        private function Qv():void{
            var _local1:_1si = this.MH[(--this.index - this._1Se)];
            this._1hm(_local1);
            this._0oi();
            this.gG();
            this._1fZ = false;
        }

        private function _13():void{
            if (this.index < 0)
            {
                this.index = 0;
            }
            var _local1:_1si = this.MH[this.index];
            this.index++;
            this.tw(_local1);
            this.im();
            this._1fZ = (this.index == this.MH.length);
            this.gG();
        }

        private function _1hm(_arg1:_1si):void{
            this._1x9.unshift(_arg1);
            addChild(_arg1);
        }

        private function _0oi():void{
            if (this._1x9.length > this._1Se)
            {
                removeChild(this._1x9.pop());
            }
        }

        private function gG():void{
            var _local3:_1si;
            var _local1:int;
            var _local2:int = this._1x9.length;
            while (_local2--)
            {
                _local3 = this._1x9[_local2];
                _local3.y = _local1;
                _local1 = (_local1 - _local3.height);
            }
        }


    }
}//package _0Fa

