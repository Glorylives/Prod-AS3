// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.GuildUtil

package com.company.assembleegameclient.util{
    import _AO._du;
    import flash.display.BitmapData;
    import com.company.util.AssetLibrary;

    public class GuildUtil {

        public static const Cn:int = 0;
        public static const _1BS:int = 10;
        public static const d8:int = 20;
        public static const Tx:int = 30;
        public static const _0AG:int = 40;
        public static const _0jA:int = 50;


        public static function _0Wv(_arg1:int):String{
            switch (_arg1)
            {
                case Cn:
                    return (_1b(_du._1XK));
                case _1BS:
                    return (_1b(_du._1Nu));
                case d8:
                    return (_1b(_du._0mO));
                case Tx:
                    return (_1b(_du._20n));
                case _0AG:
                    return (_1b(_du._2R));
            }
            return (_1b(_du._0T));
        }

        private static function _1b(_arg1:String):String{
            return ((("{" + _arg1) + "}"));
        }

        public static function CW(_arg1:int, _arg2:int):BitmapData{
            var _local3:BitmapData;
            switch (_arg1)
            {
                case Cn:
                    _local3 = AssetLibrary._1JR("lofiInterfaceBig", 20);
                    break;
                case _1BS:
                    _local3 = AssetLibrary._1JR("lofiInterfaceBig", 19);
                    break;
                case d8:
                    _local3 = AssetLibrary._1JR("lofiInterfaceBig", 18);
                    break;
                case Tx:
                    _local3 = AssetLibrary._1JR("lofiInterfaceBig", 17);
                    break;
                case _0AG:
                    _local3 = AssetLibrary._1JR("lofiInterfaceBig", 16);
                    break;
            }
            return (TextureRedrawer.redraw(_local3, _arg2, true, 0, true));
        }

        public static function _1aD(_arg1:int):BitmapData{
            var _local2:BitmapData = AssetLibrary._1JR("lofiObj3", 226);
            return (TextureRedrawer.redraw(_local2, _arg1, true, 0, true));
        }

        public static function _1IN(_arg1:int, _arg2:int, _arg3:int):Boolean{
            if (_arg2 == _arg3)
            {
                return (false);
            }
            if ((((((_arg1 == _0AG)) && ((_arg2 < _0AG)))) && ((_arg3 < _0AG))))
            {
                return (true);
            }
            if ((((((_arg1 == Tx)) && ((_arg2 < Tx)))) && ((_arg3 <= Tx))))
            {
                return (true);
            }
            if ((((((_arg1 == d8)) && ((_arg2 < d8)))) && ((_arg3 < d8))))
            {
                return (true);
            }
            return (false);
        }

        public static function _1OO(_arg1:int):int{
            switch (_arg1)
            {
                case Cn:
                    return (_1BS);
                case _1BS:
                    return (d8);
                case d8:
                    return (Tx);
            }
            return (_0AG);
        }

        public static function Ff(_arg1:int, _arg2:int):Boolean{
            var _local3:int = _1OO(_arg2);
            return (_1IN(_arg1, _arg2, _local3));
        }

        public static function _1M3(_arg1:int):int{
            switch (_arg1)
            {
                case d8:
                    return (_1BS);
                case Tx:
                    return (d8);
                case _0AG:
                    return (Tx);
            }
            return (Cn);
        }

        public static function _1sY(_arg1:int, _arg2:int):Boolean{
            var _local3:int = _1M3(_arg2);
            return (_1IN(_arg1, _arg2, _local3));
        }

        public static function _0DD(_arg1:int, _arg2:int):Boolean{
            return ((((_arg1 >= d8)) && ((_arg2 < _arg1))));
        }


    }
}//package com.company.assembleegameclient.util

