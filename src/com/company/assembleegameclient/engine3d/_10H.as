// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d.10H

package com.company.assembleegameclient.engine3d{

    public class _10H {

        public var bk:_1hA;
        public var _0Vc:Vector.<int>;
        public var _18b:Boolean;

        public function _10H(_arg1:_1hA, _arg2:Vector.<int>, _arg3:Boolean){
            this.bk = _arg1;
            this._0Vc = _arg2;
            this._18b = _arg3;
        }

        public static function _0Ys(_arg1:_10H, _arg2:_10H):Number{
            var _local3:Number;
            var _local4:int;
            var _local5:Number = Number.MAX_VALUE;
            var _local6:Number = Number.MIN_VALUE;
            _local4 = 0;
            while (_local4 < _arg1._0Vc.length)
            {
                _local3 = _arg2.bk.vL_[((_arg1._0Vc[_local4] * 3) + 2)];
                _local5 = (((_local3 < _local5)) ? _local3 : _local5);
                _local6 = (((_local3 > _local6)) ? _local3 : _local6);
                _local4++;
            }
            var _local7:Number = Number.MAX_VALUE;
            var _local8:Number = Number.MIN_VALUE;
            _local4 = 0;
            while (_local4 < _arg2._0Vc.length)
            {
                _local3 = _arg2.bk.vL_[((_arg2._0Vc[_local4] * 3) + 2)];
                _local7 = (((_local3 < _local7)) ? _local3 : _local7);
                _local8 = (((_local3 > _local8)) ? _local3 : _local8);
                _local4++;
            }
            if (_local7 > _local5)
            {
                return (-1);
            }
            if (_local7 < _local5)
            {
                return (1);
            }
            if (_local8 > _local6)
            {
                return (-1);
            }
            if (_local8 < _local6)
            {
                return (1);
            }
            return (0);
        }


    }
}//package com.company.assembleegameclient.engine3d

