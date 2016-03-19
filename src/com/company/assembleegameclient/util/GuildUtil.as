// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.GuildUtil

package com.company.assembleegameclient.util{
    import AO.du;
    import flash.display.BitmapData;
    import com.company.util.AssetLibrary;

    public class GuildUtil {

        public static const Cn:int = 0;
        public static const 1BS:int = 10;
        public static const d8:int = 20;
        public static const Tx:int = 30;
        public static const 0AG:int = 40;
        public static const 0jA:int = 50;


        public static function 0Wv(_arg1:int):String{
            switch (_arg1)
            {
                case Cn:
                    return (1b(du.1XK));
                case 1BS:
                    return (1b(du.1Nu));
                case d8:
                    return (1b(du.0mO));
                case Tx:
                    return (1b(du.20n));
                case 0AG:
                    return (1b(du.2R));
            }
            return (1b(du.0T-));
        }

        private static function 1b(_arg1:String):String{
            return ((("{" + _arg1) + "}"));
        }

        public static function CW(_arg1:int, _arg2:int):BitmapData{
            var _local3:BitmapData;
            switch (_arg1)
            {
                case Cn:
                    _local3 = AssetLibrary.1JR("lofiInterfaceBig", 20);
                    break;
                case 1BS:
                    _local3 = AssetLibrary.1JR("lofiInterfaceBig", 19);
                    break;
                case d8:
                    _local3 = AssetLibrary.1JR("lofiInterfaceBig", 18);
                    break;
                case Tx:
                    _local3 = AssetLibrary.1JR("lofiInterfaceBig", 17);
                    break;
                case 0AG:
                    _local3 = AssetLibrary.1JR("lofiInterfaceBig", 16);
                    break;
            }
            return (TextureRedrawer.redraw(_local3, _arg2, true, 0, true));
        }

        public static function 1aD(_arg1:int):BitmapData{
            var _local2:BitmapData = AssetLibrary.1JR("lofiObj3", 226);
            return (TextureRedrawer.redraw(_local2, _arg1, true, 0, true));
        }

        public static function 1IN(_arg1:int, _arg2:int, _arg3:int):Boolean{
            if (_arg2 == _arg3)
            {
                return (false);
            }
            if ((((((_arg1 == 0AG)) && ((_arg2 < 0AG)))) && ((_arg3 < 0AG))))
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

        public static function 1OO(_arg1:int):int{
            switch (_arg1)
            {
                case Cn:
                    return (1BS);
                case 1BS:
                    return (d8);
                case d8:
                    return (Tx);
            }
            return (0AG);
        }

        public static function Ff(_arg1:int, _arg2:int):Boolean{
            var _local3:int = 1OO(_arg2);
            return (1IN(_arg1, _arg2, _local3));
        }

        public static function 1M3(_arg1:int):int{
            switch (_arg1)
            {
                case d8:
                    return (1BS);
                case Tx:
                    return (d8);
                case 0AG:
                    return (Tx);
            }
            return (Cn);
        }

        public static function 1sY(_arg1:int, _arg2:int):Boolean{
            var _local3:int = 1M3(_arg2);
            return (1IN(_arg1, _arg2, _local3));
        }

        public static function 0DD(_arg1:int, _arg2:int):Boolean{
            return ((((_arg1 >= d8)) && ((_arg2 < _arg1))));
        }


    }
}//package com.company.assembleegameclient.util

