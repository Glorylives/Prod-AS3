// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.0wI

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import com.company.assembleegameclient.objects.Player;
    import flash.display.Bitmap;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.events.MouseEvent;
    import flash.events.Event;

    public class 0wI extends Sprite {

        public static const 01g:String = "lofiInterfaceBig";
        public static const 1hq:int = 22;

        private var D-:BoostPanel;
        private var player:Player;

        public function 0wI(_arg1:Player){
            var _local4:Bitmap;
            super();
            this.player = _arg1;
            var _local2:BitmapData = AssetLibrary.1JR(01g, 1hq);
            var _local3:BitmapData = TextureRedrawer.redraw(_local2, 20, true, 0);
            _local4 = new Bitmap(_local3);
            _local4.x = -7;
            _local4.y = -10;
            addChild(_local4);
            addEventListener(MouseEvent.MOUSE_OVER, this.043);
            addEventListener(MouseEvent.MOUSE_OUT, this.UF);
        }

        private function 043(_arg1:Event):void{
            addChild((this.D- = new BoostPanel(this.player)));
            this.D-.F9.add(this.1LX);
            this.1LX();
        }

        private function 1LX():void{
            this.D-.x = -(this.D-.width);
            this.D-.y = -(this.D-.height);
        }

        private function UF(_arg1:Event):void{
            if (this.D-)
            {
                removeChild(this.D-);
            }
        }


    }
}//package com.company.assembleegameclient.ui

