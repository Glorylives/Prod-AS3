// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.1F9

package com.company.assembleegameclient.objects{
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;

    public class 1F9 {


        public function 1JR(_arg1:String, _arg2:int):BitmapData{
            return (AssetLibrary.1JR(_arg1, _arg2));
        }

        public function getTexture(_arg1:int, _arg2:int):BitmapData{
            var _local4:Number;
            var _local5:BitmapData;
            var _local3:BitmapData = ObjectLibrary.getBitmapData(_arg1);
            if (_local3)
            {
                _local4 = ((_arg2 - TextureRedrawer.1hO) / _local3.width);
                _local5 = ObjectLibrary.getRedrawnTextureFromType(_arg1, 100, true, false, _local4);
                return (_local5);
            }
            return (new HL(_arg2, _arg2));
        }


    }
}//package com.company.assembleegameclient.objects

