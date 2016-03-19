// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0DE.0WY

package 0DE{
    import flash.geom.Matrix;
    import flash.display.Bitmap;
    import h0.1mR;
    import _04_._1JZ;
    import _CU.1CD;
    import 1n4.1WS;
    import flash.display.BitmapData;

    public class 0WY extends 14l {

        private static const 1Ab:Matrix = new Matrix();

        public var hotKey:int;
        private var 0Uu:Bitmap;

        public function 0WY(_arg1:int, _arg2:1mR, _arg3:Boolean){
            super(_arg1, _arg2, _arg3);
        }

        public function 15A(_arg1:int):void{
            this.hotKey = _arg1;
            this.07s();
        }

        public function 07s():void{
            var _local1:1CD = _1JZ.0JF().getInstance(1CD);
            var _local2:BitmapData = _local1.make(new 1WS(String(this.hotKey)), 26, 0x363636, true, 1Ab, false);
            this.0Uu = new Bitmap(_local2);
            this.0Uu.x = ((WIDTH / 2) - (this.0Uu.width / 2));
            this.0Uu.y = ((HEIGHT / 2) - 14);
            addChildAt(this.0Uu, 0);
        }

        override public function setItemSprite(_arg1:0bw):void{
            super.setItemSprite(_arg1);
            _arg1.setDim(false);
        }

        override public function setItem(_arg1:int):Boolean{
            var _local2:Boolean = super.setItem(_arg1);
            if (_local2)
            {
                this.0Uu.visible = (0ep.itemId <= 0);
            }
            return (_local2);
        }

        override protected function beginDragCallback():void{
            this.0Uu.visible = true;
        }

        override protected function endDragCallback():void{
            this.0Uu.visible = (0ep.itemId <= 0);
        }


    }
}//package _0DE

