// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.0H9

package com.company.assembleegameclient.util{
import com.company.util.J2;

import flash.display.BitmapData;

public class _0H9 {

        public var _7D:Vector.<_0s0>;

        public function _0H9(){
            this._7D = new Vector.<_0s0>();
            super();
        }

        public function addFromBitmapData(_arg1:BitmapData, _arg2:BitmapData, _arg3:int, _arg4:int):void{
            var _local5:J2 = new J2();
            _local5.addFromBitmapData(_arg1, _arg3, _arg4);
            var _local6:J2;
            if (_arg2 != null)
            {
                _local6 = new J2();
                _local6.addFromBitmapData(_arg2, _arg3, _arg4);
            }
            var _local7:int;
            while (_local7 < _local5._7D.length)
            {
                this._7D.push(new _0s0(_local5._7D[_local7], (((_local6 == null)) ? null : _local6._7D[_local7])));
                _local7++;
            }
        }

        public function _1ee(_arg1:_0s0, _arg2:int, _arg3:int):void{
            this.addFromBitmapData(_arg1.image_, _arg1.mask_, _arg2, _arg3);
        }


    }
}//package com.company.assembleegameclient.util

