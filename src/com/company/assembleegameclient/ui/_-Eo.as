// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.Eo

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import flash.events.MouseEvent;
    import flash.filters.GlowFilter;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.util.AssetLibrary;
    import _ZS.0H7;
    import __ZS._VA;

    public class Eo extends Sprite {

        private var bitmap_:Bitmap;

        public function Eo(){
            this.bitmap_ = new Bitmap();
            super();
            addChild(this.bitmap_);
            this.bitmap_.scaleX = 2;
            this.bitmap_.scaleY = 2;
            this.2t();
            addEventListener(MouseEvent.CLICK, this.09o);
            filters = [new GlowFilter(0, 1, 4, 4, 2, 1)];
        }

        private function 2t():void{
            this.bitmap_.bitmapData = ((((Parameters.data_.playMusic) || (Parameters.data_.playSFX))) ? AssetLibrary.1JR("lofiInterfaceBig", 3) : AssetLibrary.1JR("lofiInterfaceBig", 4));
        }

        private function 09o(_arg1:MouseEvent):void{
            var _local2 = !(((Parameters.data_.playMusic) || (Parameters.data_.playSFX)));
            0H7.rs(_local2);
            _VA.12W(_local2);
            Parameters.data_.playPewPew = _local2;
            Parameters.save();
            this.2t();
        }


    }
}//package com.company.assembleegameclient.ui

