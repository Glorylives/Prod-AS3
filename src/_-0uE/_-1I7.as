// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1I7

package 0uE{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import 2--.CaretakerQueryDialog;
    import flash.display.BitmapData;

    public class 1I7 extends Sprite {

        private const zR:1O = 1I7.4o();
        private const e5:xN = 1I7.S4();
        private const icon:Bitmap = 1I7.hY();


        private function 4o():1O{
            var _local1:1O;
            _local1 = new 1O(CaretakerQueryDialog.02U);
            _local1.x = 60;
            addChild(_local1);
            return (_local1);
        }

        private function S4():xN{
            var _local1:xN;
            _local1 = new xN();
            _local1.y = 60;
            return (_local1);
        }

        private function hY():Bitmap{
            var _local1:Bitmap = new Bitmap(this.1lp());
            _local1.x = -16;
            _local1.y = -32;
            addChild(_local1);
            return (_local1);
        }

        private function 1lp():BitmapData{
            return (new HL(42, 42, true, 0xFF00FF00));
        }

        public function 1Bk(_arg1:String):void{
            this.e5.1wG(_arg1);
            removeChild(this.zR);
            addChild(this.e5);
        }

        public function s8():void{
            removeChild(this.e5);
            addChild(this.zR);
        }

        public function 0Pe(_arg1:BitmapData):void{
            this.icon.bitmapData = _arg1;
        }


    }
}//package 0uE

