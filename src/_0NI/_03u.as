// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.03u

package _0NI{
    import flash.events.EventDispatcher;
    import flash.utils.Dictionary;
    import flash.events.IEventDispatcher;
    import _0Fr.*;

    public class _03u extends EventDispatcher implements _1pT {

        private const Th:Dictionary = new Dictionary();

        private var _state:String = "uninitialized";
        private var _1kW:Object;
        private var jE:int;
        private var _1mV:_13N;
        private var Iz:_13N;
        private var O:_13N;
        private var _0Rk:_13N;

        public function _03u(_arg1:Object){
            this._1kW = _arg1;
            this._1Wn();
        }

        public function get state():String{
            return (this._state);
        }

        public function get target():Object{
            return (this._1kW);
        }

        public function get initialized():Boolean{
            return (((!((this._state == _YA._1qZ))) && (!((this._state == _YA._153)))));
        }

        public function get active():Boolean{
            return ((this._state == _YA.B9));
        }

        public function get suspended():Boolean{
            return ((this._state == _YA._0q5));
        }

        public function get destroyed():Boolean{
            return ((this._state == _YA._278));
        }

        public function initialize(_arg1:Function=null):void{
            this._1mV.enter(_arg1);
        }

        public function suspend(_arg1:Function=null):void{
            this.Iz.enter(_arg1);
        }

        public function resume(_arg1:Function=null):void{
            this.O.enter(_arg1);
        }

        public function destroy(_arg1:Function=null):void{
            this._0Rk.enter(_arg1);
        }

        public function _7i(_arg1:Function):_1pT{
            this._1mV._0N8(_arg1);
            return (this);
        }

        public function _0HW(_arg1:Function):_1pT{
            this.Iz._0N8(_arg1);
            return (this);
        }

        public function _25k(_arg1:Function):_1pT{
            this.O._0N8(_arg1);
            return (this);
        }

        public function _0Sh(_arg1:Function):_1pT{
            this._0Rk._0N8(_arg1);
            return (this);
        }

        public function _1bf(_arg1:Function):_1pT{
            this.addEventListener(_0qM._16E, this._0p0(_arg1, true));
            return (this);
        }

        public function PS(_arg1:Function):_1pT{
            this.addEventListener(_0qM._0DM, this._0p0(_arg1));
            return (this);
        }

        public function set(_arg1:Function):_1pT{
            this.addEventListener(_0qM.HW, this._0p0(_arg1));
            return (this);
        }

        public function _0f3(_arg1:Function):_1pT{
            this.addEventListener(_0qM.wu, this._0p0(_arg1, true));
            return (this);
        }

        public function _0qQ(_arg1:Function):_1pT{
            this.addEventListener(_0qM._1zA, this._0p0(_arg1, true));
            return (this);
        }

        public function _0JT(_arg1:Function):_1pT{
            this.addEventListener(_0qM._1mh, this._0p0(_arg1));
            return (this);
        }

        public function _0zm(_arg1:Function):_1pT{
            this.addEventListener(_0qM._0E2, this._0p0(_arg1));
            return (this);
        }

        public function _1Ox(_arg1:Function):_1pT{
            this.addEventListener(_0qM._0Dw, this._0p0(_arg1, true));
            return (this);
        }

        override public function addEventListener(_arg1:String, _arg2:Function, _arg3:Boolean=false, _arg4:int=0, _arg5:Boolean=false):void{
            _arg4 = this._18L(_arg1, _arg4);
            super.addEventListener(_arg1, _arg2, _arg3, _arg4, _arg5);
        }

        function _1gD(_arg1:String):void{
            if (this._state == _arg1)
            {
                return;
            }
            this._state = _arg1;
        }

        function _0U(... _args):void{
            var _local2:String;
            for each (_local2 in _args)
            {
                this.Th[_local2] = true;
            }
        }

        private function _1Wn():void{
            this._1mV = new _13N(_0qM._0yZ, this).fromStates(_YA._1qZ).toStates(_YA._153, _YA.B9).withEvents(_0qM._0yZ, _0qM._16E, _0qM._1zA);
            this.Iz = new _13N(_0qM._1JJ, this).fromStates(_YA.B9).toStates(_YA._1Bp, _YA._0q5).withEvents(_0qM._1JJ, _0qM._0DM, _0qM._1mh).inReverse();
            this.O = new _13N(_0qM._0F3, this).fromStates(_YA._0q5).toStates(_YA.tr, _YA.B9).withEvents(_0qM._0F3, _0qM.HW, _0qM._0E2);
            this._0Rk = new _13N(_0qM._0bH, this).fromStates(_YA._0q5, _YA.B9).toStates(_YA._7z, _YA._278).withEvents(_0qM._0bH, _0qM.wu, _0qM._0Dw).inReverse();
        }

        private function _18L(_arg1:String, _arg2:int):int{
            return ((((((_arg2 == 0)) && (this.Th[_arg1]))) ? this.jE++ : _arg2));
        }

        private function _0p0(_arg1:Function, _arg2:Boolean=false):Function{
            var handler:Function = _arg1;
            var once:Boolean = _arg2;
            if (handler.length > 1)
            {
                throw (new Error("When and After handlers must accept 0-1 arguments"));
            }
            if (handler.length == 1)
            {
                return (function (_arg1:_0qM):void{
                    ((once) && (IEventDispatcher(_arg1.target).removeEventListener(_arg1.type, arguments.callee)));
                    handler(_arg1.type);
                });
            }
            return (function (_arg1:_0qM):void{
                ((once) && (IEventDispatcher(_arg1.target).removeEventListener(_arg1.type, arguments.callee)));
                handler();
            });
        }


    }
}//package 0NI

