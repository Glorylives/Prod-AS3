﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util._J2

package com.company.util{
    import flash.display.BitmapData;

    public class _J2 {

        public var _7D:Vector.<BitmapData>;

        public function _J2(){
            this._7D = new Vector.<BitmapData>();
        }

        public function add(_arg1:BitmapData):void{
            this._7D.push(_arg1);
        }

        public function random():BitmapData{
            return (this._7D[int((Math.random() * this._7D.length))]);
        }

        public function addFromBitmapData(_arg1:BitmapData, _arg2:int, _arg3:int):void{
            var _local7:int;
            var _local4:int = (_arg1.width / _arg2);
            var _local5:int = (_arg1.height / _arg3);
            var _local6:int;
            while (_local6 < _local5)
            {
                _local7 = 0;
                while (_local7 < _local4)
                {
                    this._7D.push(BitmapUtil._0Bs(_arg1, (_local7 * _arg2), (_local6 * _arg3), _arg2, _arg3));
                    _local7++;
                }
                _local6++;
            }
        }


    }
}//package com.company.util

