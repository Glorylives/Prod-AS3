// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Fa.0Ka

package _0Fa{
    import flash.display.Sprite;
    import _1u._tM;
    import _1n4._1cA;
    import _AO._du;
    import _CU._13j;
    import flash.display.Bitmap;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;

    public class _0Ka extends Sprite {

        public static const _0A7:String = "lofiInterfaceBig";
        public static const Vj:int = 21;

        public function _0Ka(){
            this._1zR();
            this._4o();
        }

        public function setup(_arg1:_tM):void{
            x = 0;
            y = (_arg1._1Xo.height - _arg1._1jC);
        }

        private function _1zR():_13j{
            var _local1:_1cA = new _1cA().setParams(_du._1H6);
            var _local2:_13j = new _13j();
            _local2.setStringBuilder(_local1);
            _local2.x = 29;
            addChild(_local2);
            return (_local2);
        }

        private function _4o():Bitmap{
            var _local2:Bitmap;
            var _local1:BitmapData = AssetLibrary._1JR(_0A7, Vj);
            _local1 = TextureRedrawer.redraw(_local1, 20, true, 0, false);
            _local2 = new Bitmap(_local1);
            _local2.x = -5;
            _local2.y = -10;
            addChild(_local2);
            return (_local2);
        }


    }
}//package _0Fa

