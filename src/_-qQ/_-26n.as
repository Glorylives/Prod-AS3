// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//qQ.26n

package qQ{
    import _Jy._1HZ;
    import flash.utils.Dictionary;
    import flash.events.IEventDispatcher;
    import flash.events.Event;

    public class 26n extends _1HZ {

        private var 0g6:String;
        private var 1b8:Dictionary;

        public function 26n(_arg1:String, ... _args){
            this.0g6 = _arg1;
            this.1b8 = new Dictionary(true);
            super(_args);
        }

        public function map(_arg1:IEventDispatcher, _arg2):void{
            this.1b8[_arg1] = _arg2;
            _arg1.addEventListener(this.0g6, this.KT, false, 0, true);
        }

        private function KT(_arg1:Event):void{
            dispatch(this.1b8[_arg1.target]);
        }


    }
}//package qQ

