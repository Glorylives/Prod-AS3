// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.screens.charrects.CreateNewCharacterRect

package com.company.assembleegameclient.screens.charrects{
    import flash.display.Bitmap;
    import 1n4.1cA;
    import AO.du;
    import com.company.assembleegameclient.util.09g;
    import WZ.0Te;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import com.company.assembleegameclient.util._BJ;
    import flash.display.BitmapData;
    import com.company.util.BitmapUtil;

    public class CreateNewCharacterRect extends CharacterRect {

        private var bitmap_:Bitmap;

        public function CreateNewCharacterRect(_arg1:0Te){
            var _local2:int;
            super();
            super.className = new 1cA().setParams(du.0gw);
            super.color = 0x545454;
            super.overColor = 0x777777;
            super.init();
            this.makeBitmap();
            if (_arg1.z4() != 09g.1yg())
            {
                _local2 = (09g.1yg() - _arg1.z4());
                super.makeTaglineIcon();
                super.makeTaglineText(new 1cA().setParams(du.wP, {remainingStars:_local2}));
                taglineText.x = (taglineText.x + taglineIcon.width);
            }
        }

        public function makeBitmap():void{
            var _local1:XML = ObjectLibrary.1wa[int((ObjectLibrary.1wa.length * Math.random()))];
            var _local2:BitmapData = SavedCharacter.getImage(null, _local1, _BJ.RIGHT, _BJ.1OS, 0, false, false);
            _local2 = BitmapUtil.0Bs(_local2, 6, 6, (_local2.width - 12), (_local2.height - 6));
            this.bitmap_ = new Bitmap();
            this.bitmap_.bitmapData = _local2;
            this.bitmap_.x = CharacterRectConstants.ICON_POS_X;
            this.bitmap_.y = CharacterRectConstants.ICON_POS_Y;
            selectContainer.addChild(this.bitmap_);
        }


    }
}//package com.company.assembleegameclient.screens.charrects

