// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.1SY

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import flash.events.Event;
    import flash.display.BitmapData;
    import flash.events.MouseEvent;
    import flash.net.FileReference;
    import 17t.0Ab;

    public class 1SY extends Sprite {

        private var bitmap_:Bitmap;
        private var uJ:1nN;
        private var 1ZA:1nN;

        public function 1SY(_arg1:BitmapData){
            this.bitmap_ = new Bitmap(_arg1);
            addChild(this.bitmap_);
            this.uJ = new 1nN(16, "Save");
            addChild(this.uJ);
            this.1ZA = new 1nN(16, "Close");
            addChild(this.1ZA);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onAddedToStage(_arg1:Event):void{
            this.uJ.addEventListener(MouseEvent.CLICK, this.1q0);
            this.1ZA.addEventListener(MouseEvent.CLICK, this.D2);
            this.bitmap_.x = ((stage.stageHeight / 2) - (this.bitmap_.width / 2));
            this.bitmap_.y = ((stage.stageHeight / 2) - (this.bitmap_.height / 2));
            this.1ZA.x = ((this.bitmap_.x + this.bitmap_.width) - this.1ZA.width);
            this.1ZA.y = ((this.bitmap_.y + this.bitmap_.height) + 10);
            this.uJ.x = ((this.1ZA.x - this.uJ.width) - 10);
            this.uJ.y = ((this.bitmap_.y + this.bitmap_.height) + 10);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.uJ.removeEventListener(MouseEvent.CLICK, this.1q0);
            this.1ZA.removeEventListener(MouseEvent.CLICK, this.D2);
        }

        private function 1q0(_arg1:Event):void{
            new FileReference().save(0Ab.encode(this.bitmap_.bitmapData), "map.png");
        }

        private function D2(_arg1:Event):void{
            if (parent != null)
            {
                parent.removeChild(this);
            };
        }


    }
}//package com.company.assembleegameclient.ui

