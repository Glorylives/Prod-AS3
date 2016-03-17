// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.1ze

package com.company.assembleegameclient.util{
    public class 1ze {

        public static const 1UW:int = 86400000;
        public static const ll:int = 86400;
        public static const 17Q:int = 3600;
        public static const 1rT:int = 60;


        public static function ut(_arg1:Number):Number{
            return ((_arg1 / ll));
        }

        public static function bd(_arg1:Number):Number{
            return ((_arg1 / 17Q));
        }

        public static function 7b(_arg1:Number):Number{
            return ((_arg1 / 1rT));
        }

        public static function 25u(_arg1:String):Date{
            var _local2:Array = _arg1.match(/(\d\d\d\d)-(\d\d)-(\d\d) (\d\d):(\d\d):(\d\d)/);
            var _local3:Date = new Date();
            _local3.setUTCFullYear(int(_local2[1]), (int(_local2[2]) - 1), int(_local2[3]));
            _local3.setUTCHours(int(_local2[4]), int(_local2[5]), int(_local2[6]), 0);
            return (_local3);
        }


    }
}//package com.company.assembleegameclient.util

