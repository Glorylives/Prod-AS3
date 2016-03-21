// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util.AssetLibrary

package com.company.util{
    import flash.utils.Dictionary;
    import flash.display.BitmapData;
    import flash.media.Sound;
    import flash.media.SoundTransform;

    public class AssetLibrary {

        private static var _7D:Dictionary = new Dictionary();
        private static var _13D:Dictionary = new Dictionary();
        private static var _1MX:Dictionary = new Dictionary();
        private static var _2a:Dictionary = new Dictionary();

        public function AssetLibrary(_arg1:StaticEnforcer){
        }

        public static function _25E(_arg1:String, _arg2:BitmapData):void{
            _7D[_arg1] = _arg2;
            _2a[_arg2] = _arg1;
        }

        public function _1Rx5(_arg1:String, _arg2:BitmapData, _arg3:int, _arg4:int):void{
            _7D[_arg1] = _arg2;
            var _local5:_J2 = new _J2();
            _local5.addFromBitmapData(_arg2, _arg3, _arg4);
            _13D[_arg1] = _local5;
            var _local6:int;
            while (_local6 < _local5._7D.length)
            {
                _2a[_local5._7D[_local6]] = [_arg1, _local6];
                _local6++;
            }
        }

        public static function _01H(_arg1:String, _arg2:BitmapData):void{
            var _local3:_J2 = _13D[_arg1];
            if (_local3 == null)
            {
                _local3 = new _J2();
                _13D[_arg1] = _local3;
            }
            _local3.add(_arg2);
            var _local4:int = (_local3._7D.length - 1);
            _2a[_local3._7D[_local4]] = [_arg1, _local4];
        }

        public static function _1eD(_arg1:String, _arg2:Class):void{
            var _local3:Array = _1MX[_arg1];
            if (_local3 == null)
            {
                _1MX[_arg1] = new Array();
            }
            _1MX[_arg1].push(_arg2);
        }

        public static function GB(_arg1:BitmapData):Object{
            return (_2a[_arg1]);
        }

        public static function getImage(_arg1:String):BitmapData{
            return (_7D[_arg1]);
        }

        public static function _0wJ(_arg1:String):_J2{
            return (_13D[_arg1]);
        }

        public static function _1JR(_arg1:String, _arg2:int):BitmapData{
            var _local3:_J2 = _13D[_arg1];
            return (_local3._7D[_arg2]);
        }

        public static function _cl(_arg1:String):Sound{
            var _local2:Array = _1MX[_arg1];
            var _local3:int = (Math.random() * _local2.length);
            return (new (_1MX[_arg1][_local3])());
        }

        public static function _0pw(_arg1:String, _arg2:Number=1):void{
            var _local3:Array = _1MX[_arg1];
            var _local4:int = (Math.random() * _local3.length);
            var _local5:Sound = new (_1MX[_arg1][_local4])();
            var _local6:SoundTransform;
            if (_arg2 != 1)
            {
                _local6 = new SoundTransform(_arg2);
            }
            _local5.play(0, 0, _local6);
        }


    }
}//package com.company.util

class StaticEnforcer {


}

