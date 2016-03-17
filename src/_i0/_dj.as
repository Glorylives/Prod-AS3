// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//i0._dj

package _i0{
import _sc._3A;

import flash.utils.Dictionary;
    import _1u9._vu;

    public class _dj {

        public var _085:Dictionary;
        private var _1eF:_vu;

        public function _dj(_arg1:_vu, _arg2:Dictionary){
            this._085 = _arg2;
            this._1eF = _arg1;
        }

        public function _W(_arg1:Class):_3A{
            return ((this._085[_arg1] = ((this._085[_arg1]) || (this._1eF._210(_arg1)))));
        }

        public function P5(_arg1:Class, _arg2:_3A):void{
            this._085[_arg1] = _arg2;
        }


    }
}//package i0

