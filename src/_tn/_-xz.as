// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//TN.xz

package TN{
    import flash.display.Sprite;
    import flash.display.DisplayObject;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util.BitmapUtil;
    import flash.display.Bitmap;
    import flash.geom.Rectangle;
    import _CU._13j;

    public class xz extends Sprite {

        public static const 0A7:String = "redLootBag";
        public static const 1hq:int = 0;


        protected static function makeIcon():DisplayObject{
            var _local2:DisplayObject;
            var _local1:BitmapData = AssetLibrary.1JR(0A7, 1hq);
            _local1 = TextureRedrawer.redraw(_local1, 40, true, 0);
            _local1 = BitmapUtil.0Bs(_local1, 10, 10, (_local1.width - 20), (_local1.height - 20));
            _local2 = new Bitmap(_local1);
            _local2.x = 3;
            _local2.y = 3;
            return (_local2);
        }


        protected function positionText(_arg1:DisplayObject, _arg2:_13j):void{
            var _local4:Number;
            var _local3:Rectangle = _arg1.getBounds(this);
            _local4 = (_local3.top + (_local3.height / 2));
            _arg2.x = _local3.right;
            _arg2.y = (_local4 - (_arg2.height / 2));
        }


    }
}//package TN

