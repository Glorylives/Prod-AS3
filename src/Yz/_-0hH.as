﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Yz.0hH

package Yz{
    import com.hurlant.util.Base64;

    public class 0hH {


        public function decode(_arg1:String):String{
            var _local2:RegExp = /-/g;
            var _local3:RegExp = /_/g;
            var _local4:int = (4 - (_arg1.length % 4));
            while (_local4--)
            {
                _arg1 = (_arg1 + "=");
            };
            _arg1 = _arg1.replace(_local2, "+").replace(_local3, "/");
            return (Base64.decode(_arg1));
        }


    }
}//package Yz
