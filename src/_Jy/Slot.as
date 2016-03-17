// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Jy.Slot

package _Jy{
    public class Slot implements _201 {

        protected var _signal:g4;
        protected var 1lo:Boolean = true;
        protected var 1Kb:Function;
        protected var _once:Boolean = false;
        protected var Ke:int = 0;
        protected var 1RX:Array;

        public function Slot(_arg1:Function, _arg2:g4, _arg3:Boolean=false, _arg4:int=0){
            this.1Kb = _arg1;
            this._once = _arg3;
            this._signal = _arg2;
            this.Ke = _arg4;
            this.1-g(_arg1);
        }

        public function execute0():void{
            if (!this.1lo)
            {
                return;
            };
            if (this._once)
            {
                this.remove();
            };
            if (((this.1RX) && (this.1RX.length)))
            {
                this.1Kb.apply(null, this.1RX);
                return;
            };
            this.1Kb();
        }

        public function execute1(_arg1:Object):void{
            if (!this.1lo)
            {
                return;
            };
            if (this._once)
            {
                this.remove();
            };
            if (((this.1RX) && (this.1RX.length)))
            {
                this.1Kb.apply(null, [_arg1].concat(this.1RX));
                return;
            };
            this.1Kb(_arg1);
        }

        public function execute(_arg1:Array):void{
            if (!this.1lo)
            {
                return;
            };
            if (this._once)
            {
                this.remove();
            };
            if (((this.1RX) && (this.1RX.length)))
            {
                _arg1 = _arg1.concat(this.1RX);
            };
            var _local2:int = _arg1.length;
            if (_local2 == 0)
            {
                this.1Kb();
            } else
            {
                if (_local2 == 1)
                {
                    this.1Kb(_arg1[0]);
                } else
                {
                    if (_local2 == 2)
                    {
                        this.1Kb(_arg1[0], _arg1[1]);
                    } else
                    {
                        if (_local2 == 3)
                        {
                            this.1Kb(_arg1[0], _arg1[1], _arg1[2]);
                        } else
                        {
                            this.1Kb.apply(null, _arg1);
                        };
                    };
                };
            };
        }

        public function get listener():Function{
            return (this.1Kb);
        }

        public function set listener(_arg1:Function):void{
            if (null == _arg1)
            {
                throw (new ArgumentError("Given listener is null.\nDid you want to set enabled to false instead?"));
            };
            this.1-g(_arg1);
            this.1Kb = _arg1;
        }

        public function get once():Boolean{
            return (this._once);
        }

        public function get priority():int{
            return (this.Ke);
        }

        public function toString():String{
            return ((((((((("[Slot listener: " + this.1Kb) + ", once: ") + this._once) + ", priority: ") + this.Ke) + ", enabled: ") + this.1lo) + "]"));
        }

        public function get enabled():Boolean{
            return (this.1lo);
        }

        public function set enabled(_arg1:Boolean):void{
            this.1lo = _arg1;
        }

        public function get params():Array{
            return (this.1RX);
        }

        public function set params(_arg1:Array):void{
            this.1RX = _arg1;
        }

        public function remove():void{
            this._signal.remove(this.1Kb);
        }

        protected function 1-g(_arg1:Function):void{
            if (null == _arg1)
            {
                throw (new ArgumentError("Given listener is null."));
            };
            if (null == this._signal)
            {
                throw (new Error("Internal signal reference has not been set yet."));
            };
        }


    }
}//package _Jy

