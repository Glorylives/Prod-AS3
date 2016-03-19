// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.03u

package 0NI{
    import flash.events.EventDispatcher;
    import flash.utils.Dictionary;
    import 0Fr.YA;
    import 0Fr.1pT;
    import 0Fr.0qM;
    import flash.events.IEventDispatcher;
    import 0Fr.*;

    public class 03u extends EventDispatcher implements 1pT {

        private const Th:Dictionary = new Dictionary();

        private var _state:String = "uninitialized";
        private var 1kW:Object;
        private var jE:int;
        private var 1mV:13N;
        private var Iz:13N;
        private var O:13N;
        private var 0Rk:13N;

        public function 03u(_arg1:Object){
            this.1kW = _arg1;
            this.1Wn();
        }

        public function get state():String{
            return (this._state);
        }

        public function get target():Object{
            return (this.1kW);
        }

        public function get initialized():Boolean{
            return (((!((this._state == YA.1qZ))) && (!((this._state == YA.153)))));
        }

        public function get active():Boolean{
            return ((this._state == YA.B9));
        }

        public function get suspended():Boolean{
            return ((this._state == YA.0q5));
        }

        public function get destroyed():Boolean{
            return ((this._state == YA.278));
        }

        public function initialize(_arg1:Function=null):void{
            this.1mV.enter(_arg1);
        }

        public function suspend(_arg1:Function=null):void{
            this.Iz.enter(_arg1);
        }

        public function resume(_arg1:Function=null):void{
            this.O.enter(_arg1);
        }

        public function destroy(_arg1:Function=null):void{
            this.0Rk.enter(_arg1);
        }

        public function 7i(_arg1:Function):1pT{
            this.1mV.0N8(_arg1);
            return (this);
        }

        public function 0HW(_arg1:Function):1pT{
            this.Iz.0N8(_arg1);
            return (this);
        }

        public function 25k(_arg1:Function):1pT{
            this.O.0N8(_arg1);
            return (this);
        }

        public function 0Sh(_arg1:Function):1pT{
            this.0Rk.0N8(_arg1);
            return (this);
        }

        public function 1bf(_arg1:Function):1pT{
            this.addEventListener(0qM.16E, this.0p0(_arg1, true));
            return (this);
        }

        public function PS(_arg1:Function):1pT{
            this.addEventListener(0qM.0DM, this.0p0(_arg1));
            return (this);
        }

        public function set(_arg1:Function):1pT{
            this.addEventListener(0qM.HW, this.0p0(_arg1));
            return (this);
        }

        public function 0f3(_arg1:Function):1pT{
            this.addEventListener(0qM.wu, this.0p0(_arg1, true));
            return (this);
        }

        public function 0qQ(_arg1:Function):1pT{
            this.addEventListener(0qM.1zA, this.0p0(_arg1, true));
            return (this);
        }

        public function 0JT(_arg1:Function):1pT{
            this.addEventListener(0qM.1mh, this.0p0(_arg1));
            return (this);
        }

        public function 0zm(_arg1:Function):1pT{
            this.addEventListener(0qM.0E2, this.0p0(_arg1));
            return (this);
        }

        public function 1Ox(_arg1:Function):1pT{
            this.addEventListener(0qM.0Dw, this.0p0(_arg1, true));
            return (this);
        }

        override public function addEventListener(_arg1:String, _arg2:Function, _arg3:Boolean=false, _arg4:int=0, _arg5:Boolean=false):void{
            _arg4 = this.18L(_arg1, _arg4);
            super.addEventListener(_arg1, _arg2, _arg3, _arg4, _arg5);
        }

        function 1gD(_arg1:String):void{
            if (this._state == _arg1)
            {
                return;
            }
            this._state = _arg1;
        }

        function 0U(... _args):void{
            var _local2:String;
            for each (_local2 in _args)
            {
                this.Th[_local2] = true;
            }
        }

        private function 1Wn():void{
            this.1mV = new 13N(0qM.0yZ, this).fromStates(YA.1qZ).toStates(YA.153, YA.B9).withEvents(0qM.0yZ, 0qM.16E, 0qM.1zA);
            this.Iz = new 13N(0qM.1JJ, this).fromStates(YA.B9).toStates(YA.1Bp, YA.0q5).withEvents(0qM.1JJ, 0qM.0DM, 0qM.1mh).inReverse();
            this.O = new 13N(0qM.0F3, this).fromStates(YA.0q5).toStates(YA.tr, YA.B9).withEvents(0qM.0F3, 0qM.HW, 0qM.0E2);
            this.0Rk = new 13N(0qM.0bH, this).fromStates(YA.0q5, YA.B9).toStates(YA.7z, YA.278).withEvents(0qM.0bH, 0qM.wu, 0qM.0Dw).inReverse();
        }

        private function 18L(_arg1:String, _arg2:int):int{
            return ((((((_arg2 == 0)) && (this.Th[_arg1]))) ? this.jE++ : _arg2));
        }

        private function 0p0(_arg1:Function, _arg2:Boolean=false):Function{
            var handler:Function = _arg1;
            var once:Boolean = _arg2;
            if (handler.length > 1)
            {
                throw (new Error("When and After handlers must accept 0-1 arguments"));
            }
            if (handler.length == 1)
            {
                return (function (_arg1:0qM):void{
                    ((once) && (IEventDispatcher(_arg1.target).removeEventListener(_arg1.type, arguments.callee)));
                    handler(_arg1.type);
                });
            }
            return (function (_arg1:0qM):void{
                ((once) && (IEventDispatcher(_arg1.target).removeEventListener(_arg1.type, arguments.callee)));
                handler();
            });
        }


    }
}//package 0NI

