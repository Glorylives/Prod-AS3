// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1RM.0nj

package 1RM{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import 1UB.0eW;
    import flash.display.BitmapData;

    public class 0nj extends Sprite {

        private const zR:17i = 0nj.4o();
        private const e5:0by = 0nj.S4();
        private const icon:Bitmap = 0nj.TK();


        private function 4o():17i{
            var _local1:17i;
            _local1 = new 17i(0eW.02U);
            _local1.x = 60;
            addChild(_local1);
            return (_local1);
        }

        private function S4():0by{
            var _local1:0by;
            _local1 = new 0by();
            _local1.y = 60;
            return (_local1);
        }

        private function TK():Bitmap{
            var _local1:Bitmap = new Bitmap(this.1lp());
            _local1.x = 0;
            _local1.y = 0;
            addChild(_local1);
            return (_local1);
        }

        private function 1lp():BitmapData{
            return (new BitmapData(42, 42, true, 0xFF00FF00));
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

        public function mM(_arg1:BitmapData):void{
            this.icon.bitmapData = _arg1;
        }


    }
}//package 1RM

