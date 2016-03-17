// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//TN.0eN

package TN{
    import flash.display.Sprite;
    import flash.display.DisplayObject;
    import _CU._13j;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.display.Bitmap;
    import 1n4.1WS;

    public class 0eN extends Sprite {

        var 6m:DisplayObject;
        var text:_13j;

        public function 0eN(){
            this.text = new _13j().setSize(18).setColor(0xFFFFFF);
            super();
        }

        public function init():void{
            var _local1:BitmapData = AssetLibrary.1JR("lofiObj3", 225);
            _local1 = TextureRedrawer.redraw(_local1, 40, true, 0);
            this.6m = new Bitmap(_local1);
            addChild(this.6m);
            addChild(this.text);
            this.6m.x = (-(this.6m.width) - 8);
            this.6m.y = ((-(this.6m.height) / 2) - 6);
            this.text.textChanged.add(this.onTextChanged);
        }

        private function onTextChanged():void{
            this.text.x = ((this.6m.x - this.text.width) + 4);
            this.text.y = ((-(this.text.height) / 2) - 6);
        }

        public function 0zh(_arg1:int):void{
            this.text.setStringBuilder(new 1WS(String(_arg1)));
        }


    }
}//package TN

