// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Jy._04t

package _Jy{
    import flash.utils.getQualifiedClassName;
    import flash.errors.IllegalOperationError;

    public class _04t implements g4 {

        protected var _0Sq:Array;
        protected var _0LG:_0Y4;

        public function _04t(... _args){
            this._0LG = _0Y4.NIL;
            super();
            this.valueClasses = (((((_args.length == 1)) && ((_args[0] is Array)))) ? _args[0] : _args);
        }

        [ArrayElementType("Class")]
        public function get valueClasses():Array{
            return (this._0Sq);
        }

        public function set valueClasses(_arg1:Array):void{
            this._0Sq = ((_arg1) ? _arg1.slice() : []);
            var _local2:int = this._0Sq.length;
            while (_local2--)
            {
                if (!(this._0Sq[_local2] is Class))
                {
                    throw (new ArgumentError((((((("Invalid valueClasses argument: " + "item at index ") + _local2) + " should be a Class but was:<") + this._0Sq[_local2]) + ">.") + getQualifiedClassName(this._0Sq[_local2]))));
                };
            };
        }

        public function get _03f():uint{
            return (this._0LG.length);
        }

        public function addOnce(_arg1:Function):_201{
            return (this._0z2(_arg1, true));
        }

        public function remove(_arg1:Function):_201{
            var _local2:_201 = this._0LG.find(_arg1);
            if (!_local2)
            {
                return (null);
            };
            this._0LG = this._0LG._1aC(_arg1);
            return (_local2);
        }

        public function removeAll():void{
            this._0LG = _0Y4.NIL;
        }

        public function dispatch(... _args):void{
            var _local2:int = this._0Sq.length;
            var _local3:int = _args.length;
            if (_local3 < _local2)
            {
                throw (new ArgumentError(((((("Incorrect number of arguments. " + "Expected at least ") + _local2) + " but received ") + _local3) + ".")));
            };
            var _local4:int;
            while (_local4 < _local2)
            {
                if ((((_args[_local4] is this._0Sq[_local4])) || ((_args[_local4] === null))))
                {
                } else
                {
                    throw (new ArgumentError((((("Value object <" + _args[_local4]) + "> is not an instance of <") + this._0Sq[_local4]) + ">.")));
                };
                _local4++;
            };
            var _local5:_0Y4 = this._0LG;
            if (_local5.nonEmpty)
            {
                while (_local5.nonEmpty)
                {
                    _local5._0kc.execute(_args);
                    _local5 = _local5._0wv;
                };
            };
        }

        protected function _0z2(_arg1:Function, _arg2:Boolean=false):_201{
            var _local3:_201;
            if (this._0rK(_arg1, _arg2))
            {
                _local3 = new Slot(_arg1, this, _arg2);
                this._0LG = this._0LG.prepend(_local3);
                return (_local3);
            };
            return (this._0LG.find(_arg1));
        }

        protected function _0rK(_arg1:Function, _arg2:Boolean):Boolean{
            if (!this._0LG.nonEmpty)
            {
                return (true);
            };
            var _local3:_201 = this._0LG.find(_arg1);
            if (!_local3)
            {
                return (true);
            };
            if (_local3.once != _arg2)
            {
                throw (new IllegalOperationError("You cannot addOnce() then add() the same listener without removing the relationship first."));
            };
            return (false);
        }


    }
}//package _Jy

