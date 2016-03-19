// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1u-.1Ys

package _1u{
    public class _1Ys {

        public var name:String;
        public var text:String;
        public var objectId:int = -1;
        public var numStars:int = -1;
        public var _20u:String = "";
        public var rO:Boolean;
        public var _0EX:Boolean;
        public var tokens:Object;


        public static function make(_arg1:String, _arg2:String, _arg3:int=-1, _arg4:int=-1, _arg5:String="", _arg6:Boolean=false, _arg7:Object=null, _arg8:Boolean=false):_1Ys{
            var _local9:_1Ys = new (_1Ys)();
            _local9.name = _arg1;
            _local9.text = _arg2;
            _local9.objectId = _arg3;
            _local9.numStars = _arg4;
            _local9._20u = _arg5;
            _local9.rO = _arg6;
            _local9._0EX = _arg8;
            _local9.tokens = (((_arg7 == null)) ? {} : _arg7);
            return (_local9);
        }


    }
}//package 1u-

