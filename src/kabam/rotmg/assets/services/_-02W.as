// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.assets.services.02W

package kabam.rotmg.assets.services{
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import 1yZ.1go;
    import com.company.util.BitmapUtil;
    import flash.display.Bitmap;

    public class 02W {


        public static function makeCoin():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary.1JR("lofiObj3", 225), null, 40, true, 0, 0);
            return (038(_local1));
        }

        public static function 1vS():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary.1JR("lofiCharBig", 32), null, 20, true, 0, 0);
            return (038(_local1));
        }

        public static function 19i():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary.1JR("lofiObj3", 224), null, 40, true, 0, 0);
            return (038(_local1));
        }

        public static function 26N():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary.1JR("lofiObj3", 226), null, 40, true, 0, 0);
            return (038(_local1));
        }

        private static function 038(_arg1:BitmapData):BitmapData{
            _arg1 = 1go.0Lr(_arg1, 0xFFFFFFFF);
            _arg1 = BitmapUtil.0Bs(_arg1, 10, 10, (_arg1.width - 20), (_arg1.height - 20));
            return (_arg1);
        }


        public function cR(_arg1:int):Bitmap{
            var _local2:BitmapData = AssetLibrary.1JR("lofiInterfaceBig", _arg1);
            _local2 = TextureRedrawer.redraw(_local2, (320 / _local2.width), true, 0);
            return (new Bitmap(_local2));
        }


    }
}//package kabam.rotmg.assets.services

