﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1js.1fP

package 1js{
    import flash.display.Graphics;

    public class 1fP {


        public function 0Zx(_arg1:int, _arg2:int, _arg3:4w, _arg4:Graphics):void{
            var _local5:int = (_arg1 + _arg3.width);
            var _local6:int = (_arg2 + _arg3.height);
            var _local7:int = _arg3.06f;
            if (_arg3.0iI)
            {
                _arg4.moveTo(_arg1, (_arg2 + _local7));
                _arg4.lineTo((_arg1 + _local7), _arg2);
            } else
            {
                _arg4.moveTo(_arg1, _arg2);
            };
            if (_arg3.07l)
            {
                _arg4.lineTo((_local5 - _local7), _arg2);
                _arg4.lineTo(_local5, (_arg2 + _local7));
            } else
            {
                _arg4.lineTo(_local5, _arg2);
            };
            if (_arg3.Cm)
            {
                _arg4.lineTo(_local5, (_local6 - _local7));
                _arg4.lineTo((_local5 - _local7), _local6);
            } else
            {
                _arg4.lineTo(_local5, _local6);
            };
            if (_arg3.26P)
            {
                _arg4.lineTo((_arg1 + _local7), _local6);
                _arg4.lineTo(_arg1, (_local6 - _local7));
            } else
            {
                _arg4.lineTo(_arg1, _local6);
            };
        }


    }
}//package 1js

