// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util._V4

package com.company.assembleegameclient.util{
    import flash.utils.Dictionary;
    import __AS3__.vec.Vector;
    import flash.display.BitmapData;
    import __AS3__.vec.*;

    public class _V4 {

        private static var _1HK:Dictionary = new Dictionary();


        public static function _1Q2(_arg1:String, _arg2:int):_BJ{
            var _local3:Vector.<_BJ> = _1HK[_arg1];
            if ((((_local3 == null)) || ((_arg2 >= _local3.length))))
            {
                return (null);
            }
            return (_local3[_arg2]);
        }

        public static function add(_arg1:String, _arg2:BitmapData, _arg3:BitmapData, _arg4:int, _arg5:int, _arg6:int, _arg7:int, _arg8:int):void{
            var _local11:_0s0;
            var _local9:Vector.<_BJ> = new Vector.<_BJ>();
            var _local10:_0H9 = new _0H9();
            _local10.addFromBitmapData(_arg2, _arg3, _arg6, _arg7);
            for each (_local11 in _local10._7D)
            {
                _local9.push(new _BJ(_local11, _arg4, _arg5, _arg8));
            }
            _1HK[_arg1] = _local9;
        }


    }
}//package com.company.assembleegameclient.util

