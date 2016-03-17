// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//cA.1lk

package cA{
    import flash.events.IEventDispatcher;

    public class 1lk {

        private var 1yb:IEventDispatcher;
        private var t1:String;
        private var 1Kb:Function;
        private var Ty:Class;
        private var _callback:Function;
        private var 1gO:Boolean;

        public function 1lk(_arg1:IEventDispatcher, _arg2:String, _arg3:Function, _arg4:Class, _arg5:Function, _arg6:Boolean){
            this.1yb = _arg1;
            this.t1 = _arg2;
            this.1Kb = _arg3;
            this.Ty = _arg4;
            this._callback = _arg5;
            this.1gO = _arg6;
        }

        public function get dispatcher():IEventDispatcher{
            return (this.1yb);
        }

        public function get eventString():String{
            return (this.t1);
        }

        public function get listener():Function{
            return (this.1Kb);
        }

        public function get eventClass():Class{
            return (this.Ty);
        }

        public function get callback():Function{
            return (this._callback);
        }

        public function get useCapture():Boolean{
            return (this.1gO);
        }


    }
}//package cA

