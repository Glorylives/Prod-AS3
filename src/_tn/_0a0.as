// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//tn.0a0

package _tn{

public class _0a0 {

        private const _0sP:Vector.<_1iY> = new <_1iY>[];
        private const map:Object = {};

        private var VI:_1iY;
        private var F4:_1iY;
        private var _17g:int;


        public function _1sj():int{
            return (this._0sP.length);
        }

        public function _0i1():_1iY{
            return (this.VI);
        }

        public function _05i():_1iY{
            return (this.F4);
        }

        public function _0c(_arg1:int):_1iY{
            return (this._0sP[_arg1]);
        }

        public function _1UF(_arg1:_1iY, _arg2:Boolean=false):void{
            _arg1.n4.add(this._1KC);
            this._0sP.push(_arg1);
            this.map[_arg1.id] = _arg1;
            this.sl(_arg1);
            if (_arg2)
            {
                this.VI = _arg1;
                if (!this.F4)
                {
                    this.F4 = _arg1;
                    _arg1.eR(true);
                };
            } else
            {
                if (_arg1._1DB())
                {
                    this.F4 = _arg1;
                };
            };
        }

        private function _1KC(_arg1:_1iY):void{
            if (((_arg1._1DB()) && (!((this.F4 == _arg1)))))
            {
                ((this.F4) && (this.F4.eR(false)));
                this.F4 = _arg1;
            };
        }

        public function _1JT(_arg1:int):void{
            var _local2:_1iY;
            this._17g = _arg1;
            for each (_local2 in this._0sP)
            {
                this.sl(_local2);
            };
        }

        private function sl(_arg1:_1iY):void{
            if (!_arg1._1S1)
            {
                _arg1.setState(_Lm.UNLISTED);
            } else
            {
                if (_arg1._0QA()._0T())
                {
                    _arg1.setState(this._0y8(_arg1));
                };
            };
        }

        private function _0y8(_arg1:_1iY):_Lm{
            if (!_arg1._1S1)
            {
                return (_Lm.UNLISTED);
            };
            if ((((this._17g >= _arg1.unlockLevel)) && ((_arg1.CM == null))))
            {
                return (_Lm.PURCHASABLE);
            };
            return (_Lm.LOCKED);
        }

        public function _15c(_arg1:int):_1iY{
            return (((this.map[_arg1]) || (this.VI)));
        }

        public function nf():Vector.<_1iY>{
            var _local2:_1iY;
            var _local1:Vector.<_1iY> = new Vector.<_1iY>();
            for each (_local2 in this._0sP)
            {
                if (_local2._0QA() != _Lm.UNLISTED)
                {
                    _local1.push(_local2);
                };
            };
            return (_local1);
        }


    }
}//package tn

