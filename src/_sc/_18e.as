﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//sc.18e

package _sc{
    import flash.utils.Dictionary;
    import _0OG._22M;

    public class _18e extends _09S {

        public function _18e(_arg1:Array, _arg2:uint, _arg3:Dictionary){
            super("ctor", _arg1, _arg2, false, _arg3);
        }

        public function createInstance(_arg1:Class, _arg2:_22M):Object{
            var _local4:Object;
            var _local3:Array = _0hl(_arg1, _arg1, _arg2);
            switch (_local3.length)
            {
                case 1:
                    _local4 = new _arg1(_local3[0]);
                    break;
                case 2:
                    _local4 = new _arg1(_local3[0], _local3[1]);
                    break;
                case 3:
                    _local4 = new _arg1(_local3[0], _local3[1], _local3[2]);
                    break;
                case 4:
                    _local4 = new _arg1(_local3[0], _local3[1], _local3[2], _local3[3]);
                    break;
                case 5:
                    _local4 = new _arg1(_local3[0], _local3[1], _local3[2], _local3[3], _local3[4]);
                    break;
                case 6:
                    _local4 = new _arg1(_local3[0], _local3[1], _local3[2], _local3[3], _local3[4], _local3[5]);
                    break;
                case 7:
                    _local4 = new _arg1(_local3[0], _local3[1], _local3[2], _local3[3], _local3[4], _local3[5], _local3[6]);
                    break;
                case 8:
                    _local4 = new _arg1(_local3[0], _local3[1], _local3[2], _local3[3], _local3[4], _local3[5], _local3[6], _local3[7]);
                    break;
                case 9:
                    _local4 = new _arg1(_local3[0], _local3[1], _local3[2], _local3[3], _local3[4], _local3[5], _local3[6], _local3[7], _local3[8]);
                    break;
                case 10:
                    _local4 = new _arg1(_local3[0], _local3[1], _local3[2], _local3[3], _local3[4], _local3[5], _local3[6], _local3[7], _local3[8], _local3[9]);
                    break;
            };
            _local3.length = 0;
            return (_local4);
        }


    }
}//package _sc

