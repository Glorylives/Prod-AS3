// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0MS.08s

package 0MS{
    import 0NI.0cf;
    import flash.events.IEventDispatcher;
    import flash.events.EventDispatcher;
    import 0Fr.dW;
    import 0Fr.*;

    public class 08s implements 0dM {

        private const 1NG:String = 0cf.create(08s);

        private var _eventDispatcher:IEventDispatcher;

        public function 08s(_arg1:IEventDispatcher=null){
            this._eventDispatcher = ((_arg1) || (new EventDispatcher()));
        }

        public function extend(_arg1:dW):void{
            _arg1.kf.map(IEventDispatcher).1eo(this._eventDispatcher);
        }

        public function toString():String{
            return (this.1NG);
        }


    }
}//package 0MS

