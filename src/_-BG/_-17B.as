// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.17B

package BG{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import flash.display.BitmapData;
    import _CU._13j;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util.AssetLibrary;
    import bD.0A-;
    import 1n4.1WS;
    import flash.filters.DropShadowFilter;
    import flash.geom.Rectangle;
    import flash.events.MouseEvent;
    import _04_._1JZ;
    import 1qg.0io;
    import 1mO.1fd;
    import _ZS.0ZC;

    public class 17B extends Sprite {

        public static const 0A7:String = "lofiObj2";
        public static const 1hq:int = 345;

        public static var 2-:Boolean = false;

        private var kN:Bitmap;
        private var background:Sprite;
        private var background2:Sprite;
        private var icon:BitmapData;
        private var text:_13j;

        public function 17B(){
            mouseChildren = false;
            this.icon = TextureRedrawer.redraw(AssetLibrary.1JR(0A7, 1hq), 40, true, 0);
            this.kN = new Bitmap(this.icon);
            this.kN.x = -5;
            this.kN.y = -8;
            this.background = 0A-.gU();
            this.background2 = 0A-.23(31, 0A-.TE);
            this.text = new _13j().setSize(16).setColor(0xFFFFFF);
            this.text.setStringBuilder(new 1WS("Update!"));
            this.text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            this.text.setVerticalAlign(_13j.BOTTOM);
            this.25w();
            var _local1:Rectangle = this.kN.getBounds(this);
            var _local2:int = 10;
            this.text.x = (_local1.right - _local2);
            this.text.y = (_local1.bottom - _local2);
            addEventListener(MouseEvent.CLICK, this.0eJ);
        }

        public function 0eJ(_arg1:MouseEvent):void{
            var _local2:0io = _1JZ.0JF().getInstance(0io);
            _local2.dispatch(new 1fd());
            0ZC.play("button_click");
        }

        public function 25w():void{
            if (1fd.zh())
            {
                2- = true;
                addChild(this.background);
                addChild(this.text);
            } else
            {
                2- = false;
                addChild(this.background2);
            };
            addChild(this.kN);
        }


    }
}//package BG

