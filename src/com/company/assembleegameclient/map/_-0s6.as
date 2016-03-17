// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.0s6

package com.company.assembleegameclient.map{
    import flash.utils.Dictionary;
    import com.company.assembleegameclient.objects.1J1;
    import flash.display.BitmapData;
    import com.company.util.BitmapUtil;

    public class 0s6 {

        public static const 0Ri:Dictionary = new Dictionary();
        public static const GD:Dictionary = new Dictionary();
        public static const hE:Dictionary = new Dictionary();

        private static var LS:Dictionary = new Dictionary();
        public static var get:Dictionary = new Dictionary();
        public static var 8v:1je;


        public static function 1ty(_arg1:XML):void{
            var _local2:XML;
            var _local3:int;
            for each (_local2 in _arg1.Ground)
            {
                _local3 = int(_local2.@type);
                0Ri[_local3] = new 1je(_local2);
                GD[_local3] = _local2;
                hE[_local3] = new 1J1(_local2);
                get[String(_local2.@id)] = _local3;
            };
            8v = 0Ri[0xFF];
        }

        public static function Uq(_arg1:int):String{
            var _local2:1je = 0Ri[_arg1];
            if (_local2 == null)
            {
                return (null);
            };
            return (_local2.id_);
        }

        public static function getBitmapData(_arg1:int, _arg2:int=0):BitmapData{
            return (hE[_arg1].getTexture(_arg2));
        }

        public static function getColor(_arg1:int):uint{
            var _local2:XML;
            var _local3:uint;
            var _local4:BitmapData;
            if (!LS.hasOwnProperty(_arg1))
            {
                _local2 = GD[_arg1];
                if (_local2.hasOwnProperty("Color"))
                {
                    _local3 = uint(_local2.Color);
                } else
                {
                    _local4 = getBitmapData(_arg1);
                    _local3 = BitmapUtil.1WN(_local4);
                };
                LS[_arg1] = _local3;
            };
            return (LS[_arg1]);
        }


    }
}//package com.company.assembleegameclient.map

