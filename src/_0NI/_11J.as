// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.11J

package _0NI{
    import _0Fr._06y;

    public class _11J {

        private const _3T:String = "You can't change the guards and hooks on an existing mapping. Unmap first.";
        private const _1Xv:String = " The stacktrace for this error was stored at the time when you duplicated the mapping - you may have failed to add guards and hooks that were already present.";

        private var _0q7:Array;
        private var BD:Array;
        private var _0BU;
        private var _1VF;
        private var _0Zj:_06y;
        private var rj:Boolean = false;

        public function _11J(_arg1:Array, _arg2:Array, _arg3, _arg4){
            this._0q7 = _arg1;
            this.BD = _arg2;
            this._0BU = _arg3;
            this._1VF = _arg4;
            super();
        }

        public function get c3():Boolean{
            return (this.rj);
        }

        public function _0gc():void{
            this.rj = false;
            this._0Zj = new _06y((this._3T + this._1Xv), this._0BU, this._1VF);
        }

        public function _1K9(_arg1:Array, _arg2:Array):void{
            if (((!(this._0ln(this._0q7, _arg1))) || (!(this._0ln(this.BD, _arg2)))))
            {
                ((this._0qd()) || (this._2T()));
            }
            this.rj = true;
            this._0Zj = null;
        }

        public function _1LZ(_arg1:Array):void{
            if (this._0Zv(this._0q7, _arg1))
            {
                this._2T();
            }
        }

        public function _0zI(_arg1:Array):void{
            if (this._0Zv(this.BD, _arg1))
            {
                this._2T();
            }
        }

        private function _0Zv(_arg1:Array, _arg2:Array):Boolean{
            var _local3:*;
            _arg2 = this._1mf(_arg2);
            for each (_local3 in _arg2)
            {
                if (_arg1.indexOf(_local3) == -1)
                {
                    return (true);
                }
            }
            return (false);
        }

        private function _0ln(_arg1:Array, _arg2:Array):Boolean{
            var _local3:int;
            _arg1 = _arg1.slice();
            if (_arg1.length != _arg2.length)
            {
                return (false);
            }
            var _local4:uint = _arg2.length;
            var _local5:uint;
            while (_local5 < _local4)
            {
                _local3 = _arg1.indexOf(_arg2[_local5]);
                if (_local3 == -1)
                {
                    return (false);
                }
                _arg1.splice(_local3, 1);
                _local5++;
            }
            return (true);
        }

        public function _1mf(_arg1:Array):Array{
            var _local3:*;
            var _local2:Array = [];
            for each (_local3 in _arg1)
            {
                if ((_local3 is Array))
                {
                    _local2 = _local2.concat(this._1mf((_local3 as Array)));
                } else
                {
                    _local2.push(_local3);
                }
            }
            return (_local2);
        }

        private function _2T():void{
            throw (new _06y(this._3T, this._0BU, this._1VF));
        }

        private function _0qd():Boolean{
            if (this._0Zj)
            {
                throw (this._0Zj);
            }
            return (false);
        }


    }
}//package 0NI

