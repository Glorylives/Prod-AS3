// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.ObjectProcessor

package 0NI{
    import 1i-.1o;

    public class ObjectProcessor {

        private const _handlers:Array = [];


        public function 0Pz(_arg1:1o, _arg2:Function):void{
            this._handlers.push(new ObjectHandler(_arg1, _arg2));
        }

        public function 17M(_arg1:Object):void{
            var _local2:ObjectHandler;
            for each (_local2 in this._handlers)
            {
                _local2.handle(_arg1);
            };
        }


    }
}//package 0NI

import 1i-.1o;

class ObjectHandler {

    private var _matcher:1o;
    private var _handler:Function;

    public function ObjectHandler(_arg1:1o, _arg2:Function){
        this._matcher = _arg1;
        this._handler = _arg2;
    }

    public function handle(_arg1:Object):void{
        ((this._matcher.matches(_arg1)) && (this._handler(_arg1)));
    }


}

