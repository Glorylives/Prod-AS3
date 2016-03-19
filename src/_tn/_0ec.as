// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//tn.0ec

package _tn{
    import _Jy._1HZ;

    public class _0ec {

        public static const _0R9:int = 782;

        public const selected:_1HZ = new _1HZ(_0dE);
        private const map:Object = {};
        private const classes:Vector.<_0dE> = new <_0dE>[];

        private var count:uint = 0;
        private var _0b1:_0dE;


        public function _1sj():uint{
            return (this.count);
        }

        public function _1Pg(_arg1:int):_0dE{
            return (this.classes[_arg1]);
        }

        public function _7k(_arg1:int):_0dE{
            return ((this.map[_arg1] = ((this.map[_arg1]) || (this._1dA()))));
        }

        private function _1dA():_0dE{
            var _local1:_0dE = new _0dE();
            _local1.selected.add(this._0bb);
            this.count = this.classes.push(_local1);
            return (_local1);
        }

        private function _0bb(_arg1:_0dE):void{
            if (this._0b1 != _arg1)
            {
                ((this._0b1) && (this._0b1.eR(false)));
                this._0b1 = _arg1;
                this.selected.dispatch(_arg1);
            };
        }

        public function _0NO():_0dE{
            return (((this._0b1) || (this._7k(_0R9))));
        }

        public function LW(_arg1:int):_1iY{
            var _local2:_1iY;
            var _local3:_0dE;
            for each (_local3 in this.classes)
            {
                _local2 = _local3._0sP._15c(_arg1);
                if (_local2 != _local3._0sP._0i1()) break;
            };
            return (_local2);
        }


    }
}//package tn

