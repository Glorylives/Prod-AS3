// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Jy.0Y4

package _Jy{
    public final class _0Y4 {

        public static const NIL:_0Y4 = new _0Y4(null, null);

        public var _0kc:_201;
        public var _0wv:_0Y4;
        public var nonEmpty:Boolean = false;

        public function _0Y4(_arg1:_201, _arg2:_0Y4=null){
            if (((!(_arg1)) && (!(_arg2))))
            {
                if (NIL)
                {
                    throw (new ArgumentError("Parameters head and tail are null. Use the NIL element instead."));
                };
                this.nonEmpty = false;
            } else
            {
                if (!_arg1)
                {
                    throw (new ArgumentError("Parameter head cannot be null."));
                };
                this._0kc = _arg1;
                this._0wv = ((_arg2) || (NIL));
                this.nonEmpty = true;
            };
        }

        public function get length():uint{
            if (!this.nonEmpty)
            {
                return (0);
            };
            if (this._0wv == NIL)
            {
                return (1);
            };
            var _local1:uint;
            var _local2:_0Y4 = this;
            while (_local2.nonEmpty)
            {
                _local1++;
                _local2 = _local2._0wv;
            };
            return (_local1);
        }

        public function prepend(_arg1:_201):_0Y4{
            return (new _0Y4(_arg1, this));
        }

        public function append(_arg1:_201):_0Y4{
            if (!_arg1)
            {
                return (this);
            };
            if (!this.nonEmpty)
            {
                return (new _0Y4(_arg1));
            };
            if (this._0wv == NIL)
            {
                return (new _0Y4(_arg1).prepend(this._0kc));
            };
            var _local2:_0Y4 = new _0Y4(this._0kc);
            var _local3:_0Y4 = _local2;
            var _local4:_0Y4 = this._0wv;
            while (_local4.nonEmpty)
            {
                _local3 = (_local3._0wv = new _0Y4(_local4._0kc));
                _local4 = _local4._0wv;
            };
            _local3._0wv = new _0Y4(_arg1);
            return (_local2);
        }

        public function insertWithPriority(_arg1:_201):_0Y4{
            if (!this.nonEmpty)
            {
                return (new _0Y4(_arg1));
            };
            var _local2:int = _arg1.priority;
            if (_local2 > this._0kc.priority)
            {
                return (this.prepend(_arg1));
            };
            var _local3:_0Y4 = new _0Y4(this._0kc);
            var _local4:_0Y4 = _local3;
            var _local5:_0Y4 = this._0wv;
            while (_local5.nonEmpty)
            {
                if (_local2 > _local5._0kc.priority)
                {
                    _local4._0wv = _local5.prepend(_arg1);
                    return (_local3);
                };
                _local4 = (_local4._0wv = new _0Y4(_local5._0kc));
                _local5 = _local5._0wv;
            };
            _local4._0wv = new _0Y4(_arg1);
            return (_local3);
        }

        public function _1aC(_arg1:Function):_0Y4{
            if (((!(this.nonEmpty)) || ((_arg1 == null))))
            {
                return (this);
            };
            if (_arg1 == this._0kc.listener)
            {
                return (this._0wv);
            };
            var _local2:_0Y4 = new _0Y4(this._0kc);
            var _local3:_0Y4 = _local2;
            var _local4:_0Y4 = this._0wv;
            while (_local4.nonEmpty)
            {
                if (_local4._0kc.listener == _arg1)
                {
                    _local3._0wv = _local4._0wv;
                    return (_local2);
                };
                _local3 = (_local3._0wv = new _0Y4(_local4._0kc));
                _local4 = _local4._0wv;
            };
            return (this);
        }

        public function contains(_arg1:Function):Boolean{
            if (!this.nonEmpty)
            {
                return (false);
            };
            var _local2:_0Y4 = this;
            while (_local2.nonEmpty)
            {
                if (_local2._0kc.listener == _arg1)
                {
                    return (true);
                };
                _local2 = _local2._0wv;
            };
            return (false);
        }

        public function find(_arg1:Function):_201{
            if (!this.nonEmpty)
            {
                return (null);
            };
            var _local2:_0Y4 = this;
            while (_local2.nonEmpty)
            {
                if (_local2._0kc.listener == _arg1)
                {
                    return (_local2._0kc);
                };
                _local2 = _local2._0wv;
            };
            return (null);
        }

        public function toString():String{
            var _local1 = "";
            var _local2:_0Y4 = this;
            while (_local2.nonEmpty)
            {
                _local1 = (_local1 + (_local2._0kc + " -> "));
                _local2 = _local2._0wv;
            };
            _local1 = (_local1 + "NIL");
            return ((("[List " + _local1) + "]"));
        }


    }
}//package _Jy

