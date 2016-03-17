// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB._cO

package _1PB{
    import _Jy._1HZ;

import _gY._11k;

import flash.utils.Dictionary;

    public class _cO {

        public var complete:_1HZ;
        private var _1T4:Dictionary;

        public function _cO(){
            this.complete = new _1HZ();
            this._1T4 = new Dictionary();
            super();
        }

        public function push(_arg1:_1HZ):_cO{
            this._1T4[_arg1] = true;
            this.mC(_arg1);
            return (this);
        }

        public function pushArgs(... _args):_cO{
            var _local2:_1HZ;
            for each (_local2 in _args)
            {
                this.push(_local2);
            };
            return (this);
        }

        private function mC(_arg1:_1HZ):void{
            var onTextChanged:Function;
            var value:_1HZ = _arg1;
            onTextChanged = function ():void{
                delete _1T4[value];
                _0dt();
            };
            value.addOnce(onTextChanged);
        }

        private function _0dt():void{
            if (this.isEmpty())
            {
                this.complete.dispatch();
            };
        }

        public function isEmpty():Boolean{
            return ((_11k._0H2(this._1T4).length == 0));
        }


    }
}//package 1PB

