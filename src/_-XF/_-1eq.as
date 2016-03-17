// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//XF.1eq

package XF{
    import flash.events.IEventDispatcher;
    import _Jy.0Y4;
    import flash.events.Event;
    import _Jy._201;
    import _Jy.Slot;
    import flash.errors.IllegalOperationError;

    public class 1eq implements 1tq {

        protected var 1kW:IEventDispatcher;
        protected var 1t9:String;
        protected var Ty:Class;
        protected var 0Sq:Array;
        protected var 0LG:0Y4;

        public function 1eq(_arg1:IEventDispatcher=null, _arg2:String="", _arg3:Class=null){
            this.0LG = 0Y4.NIL;
            this.target = _arg1;
            this.0g6 = _arg2;
            this.eventClass = _arg3;
        }

        public function get 0g6():String{
            return (this.1t9);
        }

        public function set 0g6(_arg1:String):void{
            this.1t9 = _arg1;
        }

        public function get eventClass():Class{
            return (this.Ty);
        }

        public function set eventClass(_arg1:Class):void{
            this.Ty = ((_arg1) || (Event));
            this.0Sq = [this.Ty];
        }

        [ArrayElementType(="Class")]
        public function get valueClasses():Array{
            return (this.0Sq);
        }

        public function set valueClasses(_arg1:Array):void{
            this.eventClass = ((((_arg1) && ((_arg1.length > 0)))) ? _arg1[0] : null);
        }

        public function get 03f():uint{
            return (this.0LG.length);
        }

        public function get target():IEventDispatcher{
            return (this.1kW);
        }

        public function set target(_arg1:IEventDispatcher):void{
            if (_arg1 == this.1kW)
            {
                return;
            };
            if (this.1kW)
            {
                this.removeAll();
            };
            this.1kW = _arg1;
        }

        public function add(_arg1:Function):_201{
            return (this.03e(_arg1));
        }

        public function 03e(_arg1:Function, _arg2:int=0):_201{
            return (this.nk(_arg1, false, _arg2));
        }

        public function addOnce(_arg1:Function):_201{
            return (this.03Z(_arg1));
        }

        public function 03Z(_arg1:Function, _arg2:int=0):_201{
            return (this.nk(_arg1, true, _arg2));
        }

        public function remove(_arg1:Function):_201{
            var _local2:_201 = this.0LG.find(_arg1);
            if (!_local2)
            {
                return (null);
            };
            this.1kW.removeEventListener(this.1t9, _local2.execute1);
            this.0LG = this.0LG.1aC(_arg1);
            return (_local2);
        }

        public function removeAll():void{
            var _local1:0Y4 = this.0LG;
            while (_local1.nonEmpty)
            {
                this.target.removeEventListener(this.1t9, _local1.0kc.execute1);
                _local1 = _local1.0wv;
            };
            this.0LG = 0Y4.NIL;
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
                throw (new ArgumentError((((("Event object " + _arg1) + " is not an instance of ") + this.eventClass) + ".")));
            };
            if (_arg1.type != this.0g6)
            {
                throw (new ArgumentError((((("Event object has incorrect type. Expected <" + this.0g6) + "> but was <") + _arg1.type) + ">.")));
            };
            return (this.target.dispatchEvent(_arg1));
        }

        protected function nk(_arg1:Function, _arg2:Boolean=false, _arg3:int=0):_201{
            var _local4:_201;
            if (!this.target)
            {
                throw (new ArgumentError("Target object cannot be null."));
            };
            if (this.0rK(_arg1, _arg2))
            {
                _local4 = new Slot(_arg1, this, _arg2, _arg3);
                this.0LG = this.0LG.prepend(_local4);
                this.1kW.addEventListener(this.1t9, _local4.execute1, false, _arg3);
                return (_local4);
            };
            return (this.0LG.find(_arg1));
        }

        protected function 0rK(_arg1:Function, _arg2:Boolean):Boolean{
            if (!this.0LG.nonEmpty)
            {
                return (true);
            };
            var _local3:_201 = this.0LG.find(_arg1);
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

