// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.0Zn

package OZ{
    import flash.display.BitmapData;
    import com.company.util.AssetLibrary;
    import flash.display.Bitmap;
    import flash.display.Sprite;

    public class 0Zn {

        public static const 1GG:String = "left";
        public static const 1ST:String = "right";


        public static function 0QY(_arg1:String="left", _arg2:int=4, _arg3:Number=0):Sprite{
            var _local4:BitmapData;
            if (_arg1 == 1GG)
            {
                _local4 = AssetLibrary.1JR("lofiInterface", 55);
            } else
            {
                _local4 = AssetLibrary.1JR("lofiInterface", 54);
            };
            var _local5:Bitmap = new Bitmap(_local4);
            _local5.scaleX = _arg2;
            _local5.scaleY = _arg2;
            _local5.rotation = _arg3;
            var _local6:Sprite = new Sprite();
            _local6.addChild(_local5);
            return (_local6);
        }


    }
}//package OZ

