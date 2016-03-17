// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//XF.1eq

package _XF{
import _Jy._0Y4;

import flash.events.IEventDispatcher;
    import flash.events.Event;
    import _Jy._201;
    import _Jy.Slot;
    import flash.errors.IllegalOperationError;

    public class _1eq implements _1tq {

        protected var _1kW:IEventDispatcher;
        protected var _1t9:String;
        protected var Ty:Class;
        protected var _0Sq:Array;
        protected var _0LG:_0Y4;

        public function _1eq(_arg1:IEventDispatcher=null, _arg2:String="", _arg3:Class=null){
            this._0LG = _0Y4.NIL;
            this.target = _arg1;
            this._0g6 = _arg2;
            this.eventClass = _arg3;
        }

        public function get _0g6():String{
            return (this._1t9);
        }

        public function set _0g6(_arg1:String):void{
            this._1t9 = _arg1;
        }

        public function get eventClass():Class{
            return (this.Ty);
        }

        public function set eventClass(_arg1:Class):void{
            this.Ty = ((_arg1) || (Event));
            this._0Sq = [this.Ty];
        }

        [ArrayElementType("Class")]
        public function get valueClasses():Array{
            return (this._0Sq);
        }

        public function set valueClasses(_arg1:Array):void{
            this.eventClass = ((((_arg1) && ((_arg1.length > 0)))) ? _arg1[0] : null);
        }

        public function get _03f():uint{
            return (this._0LG.length);
        }

        public function get target():IEventDispatcher{
            return (this._1kW);
        }

        public function set target(_arg1:IEventDispatcher):void{
            if (_arg1 == this._1kW)
            {
                return;
            };
            if (this._1kW)
            {
                this.removeAll();
            };
            this._1kW = _arg1;
        }

        public function add(_arg1:Function):_201{
            return (this._03e(_arg1));
        }

        public function _03e(_arg1:Function, _arg2:int=0):_201{
            return (this.nk(_arg1, false, _arg2));
        }

        public function addOnce(_arg1:Function):_201{
            return (this._03Z(_arg1));
        }

        public function _03Z(_arg1:Function, _arg2:int=0):_201{
            return (this.nk(_arg1, true, _arg2));
        }

        public function remove(_arg1:Function):_201{
            var _local2:_201 = this._0LG.find(_arg1);
            if (!_local2)
            {
                return (null);
            };
            this._1kW.removeEventListener(this._1t9, _local2.execute1);
            this._0LG = this._0LG._1aC(_arg1);
            return (_local2);
        }

        public function removeAll():void{
            var _local1:_0Y4 = this._0LG;
            while (_local1.nonEmpty)
            {
                this.target.removeEventListener(this._1t9, _local1._0kc.execute1);
                _local1 = _local1._0wv;
            };
            this._0LG = _0Y4.NIL;
        }

        public function dispatch(... _args):void{
            if (null == _args)
            {
                throw (new ArgumentError("Event object expected."));
            };
            if (_args.length != 1)
            {
                throw (new ArgumentError("No more than one Event object expected."));
            };
            this.dispatchEvent((_args[0] as Event));
        }

        public function dispatchEvent(_arg1:Event):Boolean{
            if (!this.target)
            {
                throw (new ArgumentError("Target object cannot be null."));
            };
            if (!_arg1)
            {
                throw (new ArgumentError("Event object cannot be null."));
            };
            if (!(_arg1 is this.eventClass))
            {
                throw (new ArgumentError((((("Event object " + _arg1) + " is not an instance _of ") + this.eventClass) + ".")));
            };
            if (_arg1.type != this._0g6)
            {
                throw (new ArgumentError((((("Event object has incorrect type. Expected <" + this._0g6) + "> but was <") + _arg1.type) + ">.")));
            };
            return (this.target.dispatchEvent(_arg1));
        }

        protected function nk(_arg1:Function, _arg2:Boolean=false, _arg3:int=0):_201{
            var _local4:_201;
            if (!this.target)
            {
                throw (new ArgumentError("Target object cannot be null."));
            };
            if (this._0rK(_arg1, _arg2))
            {
                _local4 = new Slot(_arg1, this, _arg2, _arg3);
                this._0LG = this._0LG.prepend(_local4);
                this._1kW.addEventListener(this._1t9, _local4.execute1, false, _arg3);
                return (_local4);
            };
            return (this._0LG.find(_arg1));
        }

        protected function _0rK(_arg1:Function, _arg2:Boolean):Boolean{
            if (!this._0LG.nonEmpty)
            {
                return (true);
            };
            var _local3:_201 = this._0LG.find(_arg1);
            if (_local3)
            {
                if (_local3.once != _arg2)
                {
                    throw (new IllegalOperationError("You cannot addOnce() then add() the same listener without removing the relationship first."));
                };
                return (false);
            };
            return (true);
        }


    }
}//package XF

