// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.13N

package _0NI{
    import _0Fr._0qM;

    public class _13N {

        private const B4:Vector.<String> = new Vector.<String>();
        private const _1yb:MessageDispatcher = new MessageDispatcher();
        private const _callbacks:Array = [];

        private var _name:String;
        private var _1eO:_03u;
        private var mB:String;
        private var _finalState:String;
        private var _preTransitionEvent:String;
        private var _transitionEvent:String;
        private var _postTransitionEvent:String;
        private var _0Am:Boolean;

        public function _13N(_arg1:String, _arg2:_03u){
            this._name = _arg1;
            this._1eO = _arg2;
        }

        public function fromStates(... _args):_13N{
            var _local2:String;
            for each (_local2 in _args)
            {
                this.B4.push(_local2);
            }
            return (this);
        }

        public function toStates(_arg1:String, _arg2:String):_13N{
            this.mB = _arg1;
            this._finalState = _arg2;
            return (this);
        }

        public function withEvents(_arg1:String, _arg2:String, _arg3:String):_13N{
            this._preTransitionEvent = _arg1;
            this._transitionEvent = _arg2;
            this._postTransitionEvent = _arg3;
            ((this._0Am) && (this._1eO._0U(_arg1, _arg2, _arg3)));
            return (this);
        }

        public function inReverse():_13N{
            this._0Am = true;
            this._1eO._0U(this._preTransitionEvent, this._transitionEvent, this._postTransitionEvent);
            return (this);
        }

        public function _0N8(_arg1:Function):_13N{
            this._1yb._1XH(this._name, _arg1);
            return (this);
        }

        public function enter(_arg1:Function=null):void{
            var initialState:String;
            var callback = _arg1;
            if (this._1eO.state == this._finalState)
            {
                ((callback) && (safelyCallBack(callback, null, this._name)));
                return;
            }
            if (this._1eO.state == this.mB)
            {
                ((callback) && (this._callbacks.push(callback)));
                return;
            }
            if (this._0z5())
            {
                this.reportError("Invalid transition", [callback]);
                return;
            }
            initialState = this._1eO.state;
            ((callback) && (this._callbacks.push(callback)));
            this.setState(this.mB);
            this._1yb.J5(this._name, function (_arg1:Object):void{
                var _local3:Function;
                if (_arg1)
                {
                    setState(initialState);
                    reportError(_arg1, _callbacks);
                    return;
                }
                dispatch(_preTransitionEvent);
                dispatch(_transitionEvent);
                setState(_finalState);
                var _local2:Array = _callbacks.concat();
                _callbacks.length = 0;
                for each (_local3 in _local2)
                {
                    safelyCallBack(_local3, null, _name);
                }
                dispatch(_postTransitionEvent);
            }, this._0Am);
        }

        private function _0z5():Boolean{
            return ((((this.B4.length > 0)) && ((this.B4.indexOf(this._1eO.state) == -1))));
        }

        private function setState(_arg1:String):void{
            ((_arg1) && (this._1eO._1gD(_arg1)));
        }

        private function dispatch(_arg1:String):void{
            if (((_arg1) && (this._1eO.hasEventListener(_arg1))))
            {
                this._1eO.dispatchEvent(new _0qM(_arg1));
            }
        }

        private function reportError(_arg1:Object, _arg2:Array=null):void{
            var _local4:_0qM;
            var _local5:Function;
            var _local3:Error = (((_arg1 is Error)) ? (_arg1 as Error) : new Error(_arg1));
            if (this._1eO.hasEventListener(_0qM.ERROR))
            {
                _local4 = new _0qM(_0qM.ERROR);
                _local4.error = _local3;
                this._1eO.dispatchEvent(_local4);
                if (_arg2)
                {
                    for each (_local5 in _arg2)
                    {
                        ((_local5) && (safelyCallBack(_local5, _local3, this._name)));
                    }
                    _arg2.length = 0;
                }
            } else
            {
                throw (_local3);
            }
        }


    }
}//package 0NI

