// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util.YB

package com.company.util{
    public class YB {


        public static function D8():String{
            var _local1:Date = new Date();
            var _local2:Number = _local1.getTime();
            _local2 = (_local2 + (((_local1.timezoneOffset - 420) * 60) * 1000));
            _local1.setTime(_local2);
            var _local3:1-f = new 1-f();
            _local3.0hR = "MMMM D, YYYY";
            return (_local3.Xp(_local1));
        }


    }
}//package com.company.util

