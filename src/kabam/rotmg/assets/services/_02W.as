// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.assets.services.02W

package kabam.rotmg.assets.services{
import _1yZ._1go;

import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.util.BitmapUtil;
    import flash.display.Bitmap;

    public class _02W {


        public static function makeCoin():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary._1JR("lofiObj3", 225), null, 40, true, 0, 0);
            return (_038(_local1));
        }

        public static function _1vS():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary._1JR("lofiCharBig", 32), null, 20, true, 0, 0);
            return (_038(_local1));
        }

        public static function _19i():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary._1JR("lofiObj3", 224), null, 40, true, 0, 0);
            return (_038(_local1));
        }

        public static function _26N():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary._1JR("lofiObj3", 226), null, 40, true, 0, 0);
            return (_038(_local1));
        }

        private static function _038(_arg1:BitmapData):BitmapData{
            _arg1 = _1go._0Lr(_arg1, 0xFFFFFFFF);
            _arg1 = BitmapUtil._0Bs(_arg1, 10, 10, (_arg1.width - 20), (_arg1.height - 20));
            return (_arg1);
        }


        public function cR(_arg1:int):Bitmap{
            var _local2:BitmapData = AssetLibrary._1JR("lofiInterfaceBig", _arg1);
            _local2 = TextureRedrawer.redraw(_local2, (320 / _local2.width), true, 0);
            return (new Bitmap(_local2));
        }


    }
}//package kabam.rotmg.assets.services

