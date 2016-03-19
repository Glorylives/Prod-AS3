// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.n1

package eC{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import flash.geom.ColorTransform;

    public class n1 extends 1u2 {

        private var background:Sprite;
        private var icon:Bitmap;

        public function n1(_arg1:int, _arg2:Sprite, _arg3:Bitmap){
            super(_arg1);
            this.Os(_arg2);
            if (_arg3)
            {
                this.23h(_arg3);
            }
        }

        private function Os(_arg1:Sprite):void{
            this.background = _arg1;
            addChild(_arg1);
        }

        private function 23h(_arg1:Bitmap):void{
            this.icon = _arg1;
            _arg1.x = (_arg1.x - 5);
            _arg1.y = (_arg1.y - 11);
            addChild(_arg1);
        }

        override public function setSelected(_arg1:Boolean):void{
            var _local2:ColorTransform = this.background.transform.colorTransform;
            _local2.color = ((_arg1) ? 16w.1Vo : 16w.0IQ);
            this.background.transform.colorTransform = _local2;
        }


    }
}//package eC

