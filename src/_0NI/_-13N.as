// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.13N

package 0NI{
    import __AS3__.vec.Vector;
    import 0Fr.0qM;
    import __AS3__.vec.*;

    public class 13N {

        private const B4:Vector.<String> = new Vector.<String>();
        private const 1yb:MessageDispatcher = new MessageDispatcher();
        private const _callbacks:Array = [];

        private var _name:String;
        private var 1eO:03u;
        private var mB:String;
        private var _finalState:String;
        private var _preTransitionEvent:String;
        private var _transitionEvent:String;
        private var _postTransitionEvent:String;
        private var 0Am:Boolean;

        public function 13N(_arg1:String, _arg2:03u){
            this._name = _arg1;
            this.1eO = _arg2;
        }

        public function fromStates(... _args):13N{
            var _local2:String;
            for each (_local2 in _args)
            {
                this.B4.push(_local2);
            };
            return (this);
        }

        public function toStates(_arg1:String, _arg2:String):13N{
            this.mB = _arg1;
            this._finalState = _arg2;
            return (this);
        }

        public function withEvents(_arg1:String, _arg2:String, _arg3:String):13N{
            this._preTransitionEvent = _arg1;
            this._transitionEvent = _arg2;
            this._postTransitionEvent = _arg3;
            ((this.0Am) && (this.1eO.0U(_arg1, _arg2, _arg3)));
            return (this);
        }

        public function inReverse():13N{
            this.0Am = true;
            this.1eO.0U(this._preTransitionEvent, this._transitionEvent, this._postTransitionEvent);
            return (this);
        }

        public function 0N8(_arg1:Function):13N{
            this.1yb.1XH(this._name, _arg1);
            return (this);
        }

        public function enter(_arg1:Function=null):void{
            var initialState:String;
            var callback = _arg1;
            if (this.1eO.state == this._finalState)
            {
                ((callback) && (safelyCallBack(callback, null, this._name)));
                return;
            };
            if (this.1eO.state == this.mB)
            {
                ((callback) && (this._callbacks.push(callback)));
                return;
            };
            if (this.0z5())
            {
                this.reportError("Invalid transition", [callback]);
                return;
            };
            initialState = this.1eO.state;
            ((callback) && (this._callbacks.push(callback)));
            this.setState(this.mB);
            this.1yb.J5(this._name, function (_arg1:Object):void{
                var _local3:Function;
                if (_arg1)
                {
                    setState(initialState);
                    reportError(_arg1, _callbacks);
                    return;
                };
                dispatch(_preTransitionEvent);
                dispatch(_transitionEvent);
                setState(_finalState);
                var _local2:Array = _callbacks.concat();
                _callbacks.length = 0;
                for each (_local3 in _local2)
                {
                    safelyCallBack(_local3, null, _name);
                };
                dispatch(_postTransitionEvent);
            }, this.0Am);
        }

        private function 0z5():Boolean{
            return ((((this.B4.length > 0)) && ((this.B4.indexOf(this.1eO.state) == -1))));
        }

        private function setState(_arg1:String):void{
            ((_arg1) && (this.1eO.1gD(_arg1)));
        }

        private function dispatch(_arg1:String):void{
            if (((_arg1) && (this.1eO.hasEventListener(_arg1))))
            {
                this.1eO.dispatchEvent(new 0qM(_arg1));
            };
        }

        private function reportError(_arg1:Object, _arg2:Array=null):void{
            var _local4:0qM;
            var _local5:Function;
            var _local3:Error = (((_arg1 is Error)) ? (_arg1 as Error) : new Error(_arg1));
            if (this.1eO.hasEventListener(0qM.ERROR))
            {
                _local4 = new 0qM(0qM.ERROR);
                _local4.error = _local3;
                this.1eO.dispatchEvent(_local4);
                if (_arg2)
                {
                    for each (_local5 in _arg2)
                    {
                        ((_local5) && (safelyCallBack(_local5, _local3, this._name)));
                    };
                    _arg2.length = 0;
                };
            } else
            {
                throw (_local3);
            };
        }


    }
}//package 0NI

