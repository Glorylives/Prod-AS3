// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.GiftStatusDisplay

package BG{
    import flash.display.Sprite;
    import 1r-.1L6;
    import flash.display.Bitmap;
    import flash.display.BitmapData;
    import _CU._13j;
    import 0qj.6P;
    import AO.du;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util.AssetLibrary;
    import bD.0A-;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import flash.geom.Rectangle;
    import 1Bg.1hy;
    import 1Bg.of;
    import 1r-.*;

    public class GiftStatusDisplay extends Sprite implements u- {

        public static const 0A7:String = "lofiObj2";
        public static const 1hq:int = 127;
        public static const 26r:Number = 110;
        public static const TE:Number = 25;
        public static const 0Xs:Number = 0.4;
        public static const kE:Number = 0;

        public var 1-P:1L6;
        private var kN:Bitmap;
        private var background:Sprite;
        private var Mx:BitmapData;
        private var text:_13j;
        private var tooltip:6P;

        public function GiftStatusDisplay(){
            this.1-P = new 1L6();
            this.tooltip = new 6P(0x363636, 0x9B9B9B, null, du.true , 200);
            super();
            mouseChildren = false;
            this.Mx = TextureRedrawer.redraw(AssetLibrary.1JR(0A7, 1hq), 40, true, 0);
            this.background = 0A-.gU();
            this.kN = new Bitmap(this.Mx);
            this.kN.x = -5;
            this.kN.y = -8;
            this.text = new _13j().setSize(16).setColor(0xFFFFFF);
            this.text.setStringBuilder(new 1cA().setParams(du.0KW));
            this.text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            this.text.setVerticalAlign(_13j.BOTTOM);
            this.1-P.1pS(this);
            this.1-P.tooltip = this.tooltip;
            this.25w();
            var _local1:Rectangle = this.kN.getBounds(this);
            var _local2:int = 10;
            this.text.x = (_local1.right - _local2);
            this.text.y = (_local1.bottom - _local2);
        }

        public function 4-(_arg1:1hy):void{
            this.1-P.4-(_arg1);
        }

        public function Bs():1hy{
            return (this.1-P.Bs());
        }

        public function na(_arg1:of):void{
            this.1-P.na(_arg1);
        }

        public function w1():of{
            return (this.1-P.w1());
        }

        public function 25w():void{
            addChild(this.background);
            addChild(this.text);
            addChild(this.kN);
        }

        public function 1By():void{
            if (((this.background) && ((this.background.parent == this))))
            {
                removeChild(this.background);
            }
            if (((this.text) && ((this.text.parent == this))))
            {
                removeChild(this.text);
            }
            if (((this.kN) && ((this.kN.parent == this))))
            {
                removeChild(this.kN);
            }
        }


    }
}//package BG

