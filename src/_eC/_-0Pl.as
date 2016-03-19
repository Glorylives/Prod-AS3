// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.0Pl

package eC{
    import flash.display.Sprite;
    import com.company.ui._eG;
    import flash.display.Bitmap;
    import com.company.util.AssetLibrary;
    import flash.geom.ColorTransform;

    public class 0Pl extends 1u2 {

        private var background:Sprite;
        private var text:_eG;
        private var 0ie:Bitmap;
        private var Fi:Bitmap;

        public function 0Pl(_arg1:int, _arg2:Sprite, _arg3:_eG){
            super(_arg1);
            this.Os(_arg2);
            if (_arg3)
            {
                this.1Gi(_arg3);
            }
        }

        public function OS(_arg1:int):void{
            if (this.Fi == null)
            {
                this.Fi = new Bitmap();
                this.Fi.bitmapData = AssetLibrary.1JR("lofiInterface", 110);
                this.Fi.x = (this.x - 10);
                this.Fi.y = 5;
                this.Fi.scaleX = (this.Fi.scaleY = 1.5);
                addChild(this.Fi);
                this.0ie = new Bitmap();
                this.0ie.bitmapData = AssetLibrary.1JR("lofiInterface", 110);
                this.0ie.x = (this.x - 12);
                this.0ie.y = 3;
                this.0ie.scaleX = (this.0ie.scaleY = 2);
                addChild(this.0ie);
            }
            this.Fi.visible = (this.0ie.visible = (_arg1 > 0));
        }

        private function Os(_arg1:Sprite):void{
            this.background = _arg1;
            addChild(_arg1);
        }

        private function 1Gi(_arg1:_eG):void{
            this.text = _arg1;
            _arg1.x = 5;
            addChild(_arg1);
        }

        override public function setSelected(_arg1:Boolean):void{
            var _local2:ColorTransform = this.background.transform.colorTransform;
            _local2.color = ((_arg1) ? 16w.1Vo : 16w.0IQ);
            this.background.transform.colorTransform = _local2;
        }


    }
}//package eC

