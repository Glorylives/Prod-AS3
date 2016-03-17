// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//XF.Wb

package XF{
    import _Jy._1HZ;
    import flash.events.IEventDispatcher;
    import flash.events.Event;
    import _Jy._201;
    import _Jy.0Y4;
    import _Jy.Slot;

    public class Wb extends _1HZ implements 1tq {

        protected var 1kW:IEventDispatcher;
        protected var 1t9:String;
        protected var Ty:Class;

        public function Wb(_arg1:IEventDispatcher, _arg2:String, _arg3:Class=null){
            super(((_arg3) || (Event)));
            this.0g6 = _arg2;
            this.eventClass = _arg3;
            this.target = _arg1;
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
            0Sq = [this.Ty];
        }

        override public function set valueClasses(_arg1:Array):void{
            this.eventClass = ((((_arg1) && ((_arg1.length > 0)))) ? _arg1[0] : null);
        }

        override public function add(_arg1:Function):_201{
            return (this.03e(_arg1));
        }

        override public function addOnce(_arg1:Function):_201{
            return (this.03Z(_arg1));
        }

        public function 03e(_arg1:Function, _arg2:int=0):_201{
            return (this.nk(_arg1, false, _arg2));
        }

        public function 03Z(_arg1:Function, _arg2:int=0):_201{
            return (this.nk(_arg1, true, _arg2));
        }

        override public function remove(_arg1:Function):_201{
            var _local2:Boolean = 0LG.nonEmpty;
            var _local3:_201 = super.remove(_arg1);
            if (_local2 != 0LG.nonEmpty)
            {
                this.target.removeEventListener(this.0g6, this.onNativeEvent);
            };
            return (_local3);
        }

        override public function removeAll():void{
            if (this.target)
            {
                this.target.removeEventListener(this.0g6, this.onNativeEvent);
            };
            super.removeAll();
        }

        override public function dispatch(... _args):void{
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
            if (_arg1.type != this.0g6)
            {
                throw (new ArgumentError((((("Event object has incorrect type. Expected <" + this.0g6) + "> but was <") + _arg1.type) + ">.")));
            };
            return (this.target.dispatchEvent(_arg1));
        }

        protected function onNativeEvent(_arg1:Event):void{
            var _local2:0Y4 = 0LG;
            while (_local2.nonEmpty)
            {
                _local2.0kc.execute1(_arg1);
                _local2 = _local2.0wv;
            };
        }

        protected function nk(_arg1:Function, _arg2:Boolean=false, _arg3:int=0):_201{
            if (!this.target)
            {
                throw (new ArgumentError("Target object cannot be null."));
            };
            var _local4:Boolean = 0LG.nonEmpty;
            var _local5:_201;
            if (0rK(_arg1, _arg2))
            {
                _local5 = new Slot(_arg1, this, _arg2, _arg3);
                0LG = 0LG.insertWithPriority(_local5);
            } else
            {
                _local5 = 0LG.find(_arg1);
            };
            if (_local4 != 0LG.nonEmpty)
            {
                this.target.addEventListener(this.0g6, this.onNativeEvent, false, _arg3);
            };
            return (_local5);
        }


    }
}//package XF

