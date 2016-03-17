// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Fa.0Ka

package 0Fa{
    import flash.display.Sprite;
    import 1u-.tM;
    import 1n4.1cA;
    import AO.du;
    import _CU._13j;
    import flash.display.Bitmap;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;

    public class 0Ka extends Sprite {

        public static const 0A7:String = "lofiInterfaceBig";
        public static const Vj:int = 21;

        public function 0Ka(){
            this.1zR();
            this.4o();
        }

        public function setup(_arg1:tM):void{
            x = 0;
            y = (_arg1.1Xo.height - _arg1.1jC);
        }

        private function 1zR():_13j{
            var _local1:1cA = new 1cA().setParams(du.1H6);
            var _local2:_13j = new _13j();
            _local2.setStringBuilder(_local1);
            _local2.x = 29;
            addChild(_local2);
            return (_local2);
        }

        private function 4o():Bitmap{
            var _local2:Bitmap;
            var _local1:BitmapData = AssetLibrary.1JR(0A7, Vj);
            _local1 = TextureRedrawer.redraw(_local1, 20, true, 0, false);
            _local2 = new Bitmap(_local1);
            _local2.x = -5;
            _local2.y = -10;
            addChild(_local2);
            return (_local2);
        }


    }
}//package 0Fa

