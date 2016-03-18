// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//rz.0Hp

package rz{
    import flash.events.Event;

    public class 0Hp extends Event {

        public static const ys:String = "mediatorCreate";
        public static const 1mr:String = "mediatorRemove";

        private var 05I:Object;
        private var 0xx:Object;
        private var 1QV:1cl;
        private var _factory:lo;

        public function 0Hp(_arg1:String, _arg2:Object, _arg3:Object, _arg4:1cl, _arg5:lo){
            super(_arg1);
            this.05I = _arg2;
            this.0xx = _arg3;
            this.1QV = _arg4;
            this._factory = _arg5;
        }

        public function get mediator():Object{
            return (this.05I);
        }

        public function get view():Object{
            return (this.0xx);
        }

        public function get mapping():1cl{
            return (this.1QV);
        }

        public function get factory():lo{
            return (this._factory);
        }

        override public function clone():Event{
            return (new 0Hp(type, this.05I, this.0xx, this.1QV, this._factory));
        }


    }
}//package rz

