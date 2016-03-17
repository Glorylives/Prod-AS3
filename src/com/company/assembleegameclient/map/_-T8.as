// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.T8

package com.company.assembleegameclient.map{
    import flash.utils.Dictionary;

    public class T8 {

        public static const GD:Dictionary = new Dictionary();

        public static var get:Dictionary = new Dictionary();


        public static function _1ty(_arg1:XML):void{
            var _local2:XML;
            var _local3:int;
            for each (_local2 in _arg1.Region)
            {
                _local3 = int(_local2.@type);
                GD[_local3] = _local2;
                get[String(_local2.@id)] = _local3;
            };
        }

        public static function Uq(_arg1:int):String{
            var _local2:XML = GD[_arg1];
            if (_local2 == null)
            {
                return (null);
            };
            return (String(_local2.@id));
        }

        public static function getColor(_arg1:int):uint{
            var _local2:XML = GD[_arg1];
            if (_local2 == null)
            {
                return (0);
            };
            return (uint(_local2.Color));
        }


    }
}//package com.company.assembleegameclient.map

