// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0pT.0Jh

package 0pT{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import __AS3__.vec.Vector;
    import flash.display.BitmapData;
    import com.company.util.AssetLibrary;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.events.Event;
    import __AS3__.vec.*;

    public class 0Jh extends Sprite {

        public static const 07c:int = 0;
        public static const 034:int = 1;
        public static const 0Sf:int = 2;
        public static const 0K9:int = 3;
        public static const 14E:int = 4;
        public static const 1aJ:int = 0;

        private const 1BP:Number = 176;

        public var 25p:Bitmap;
        private var 08H:Vector.<Bitmap>;
        private var d2:Number = 210;
        private var 16W:Number = 0;
        private var 0KG:Number;
        public var size_:int = 150;

        public function 0Jh(){
            var _local1:BitmapData;
            var _local2:uint;
            var _local3:Bitmap;
            super();
            this.08H = new Vector.<Bitmap>();
            _local2 = 0;
            while (_local2 < 3)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", (this.1BP + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 1aJ, false);
                _local3 = new Bitmap(_local1);
                _local3.filters = [new ColorMatrixFilter(MoreColorUtil.1Z6)];
                this.08H.push(_local3);
                _local2++;
            }
            _local2 = 0;
            while (_local2 < 3)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", ((this.1BP + 16) + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 1aJ, false);
                this.08H.push(new Bitmap(_local1));
                _local2++;
            }
            _local2 = 0;
            while (_local2 < 7)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", ((this.1BP + 32) + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 1aJ, false);
                this.08H.push(new Bitmap(_local1));
                _local2++;
            }
            _local2 = 0;
            while (_local2 < 7)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", ((this.1BP + 48) + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 1aJ, false);
                this.08H.push(new Bitmap(_local1));
                _local2++;
            }
            _local2 = 0;
            while (_local2 < 5)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", ((this.1BP + 64) + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 1aJ, false);
                this.08H.push(new Bitmap(_local1));
                _local2++;
            }
            _local2 = 0;
            while (_local2 < 8)
            {
                _local1 = AssetLibrary.1JR("lofiCharBig", ((this.1BP + 80) + _local2));
                _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 1aJ, false);
                this.08H.push(new Bitmap(_local1));
                _local2++;
            }
            this.reset();
            _local1 = AssetLibrary.1JR("lofiCharBig", 32);
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 1aJ, false);
            this.25p = new Bitmap(_local1);
            addChild(this.25p);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function reset():void{
            this.0GT(0K9);
        }

        public function setXPos(_arg1:Number):void{
            this.x = (_arg1 - (this.width / 2));
        }

        public function setYPos(_arg1:Number):void{
            this.y = (_arg1 - (this.height / 2));
        }

        public function getCenterX():Number{
            return ((this.x + (this.width / 2)));
        }

        public function getCenterY():Number{
            return ((this.y + (this.height / 2)));
        }

        public function Ql(_arg1:int, _arg2:int):void{
            removeChild(this.25p);
            this.25p = this.08H[(this.16W + uint(((_arg1 / this.d2) % this.0KG)))];
            addChild(this.25p);
        }

        public function setAnimationDuration(_arg1:Number):void{
            this.d2 = _arg1;
        }

        public function setAnimation(_arg1:Number, _arg2:Number):void{
            this.16W = _arg1;
            this.0KG = _arg2;
        }

        public function 0GT(_arg1:int):void{
            switch (_arg1)
            {
                case 07c:
                    this.setAnimation(0, 0);
                    this.setAnimationDuration(250);
                    return;
                case 034:
                    this.setAnimation(3, 3);
                    this.setAnimationDuration(10);
                    return;
                case 0Sf:
                    this.setAnimation(6, 7);
                    this.setAnimationDuration(80);
                    return;
                case 0K9:
                    this.setAnimation(13, 7);
                    this.setAnimationDuration(210);
                    return;
                case 14E:
                    this.setAnimation(20, 13);
                    this.setAnimationDuration(120);
                    return;
                default:
                    this.setAnimation(13, 7);
            }
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.25p = null;
            this.08H = null;
        }


    }
}//package 0pT

