// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//099.1Nr

package 099{
    import flash.display.Sprite;
    import flash.geom.ColorTransform;
    import flash.display.BitmapData;
    import flash.display.Bitmap;
    import _CU._13j;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.filters.DropShadowFilter;
    import 1n4.1cA;
    import flash.events.MouseEvent;
    import com.company.util.MoreColorUtil;
    import com.company.util.hd;

    public class 1Nr extends Sprite {

        protected static const 0Zb:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));

        protected var 1oS:BitmapData;
        protected var 11n:BitmapData;
        protected var e4:Bitmap;
        protected var text_:_13j;
        protected var 1Tp:ColorTransform = null;

        public function 1Nr(_arg1:BitmapData, _arg2:uint, _arg3:String){
            this.1oS = _arg1;
            this.11n = TextureRedrawer.redraw(_arg1, this.1C0(), true, 0);
            this.e4 = new Bitmap(this.11n);
            this.e4.filters = [new DropShadowFilter(0, 0, 0)];
            this.e4.x = -12;
            this.e4.y = -15;
            addChild(this.e4);
            this.text_ = new _13j().setSize(18).setColor(_arg2);
            this.text_.setBold(true);
            this.text_.setStringBuilder(new 1cA().setParams(_arg3));
            this.text_.filters = [new DropShadowFilter(0, 0, 0)];
            this.text_.x = 20;
            this.text_.y = -6;
            addChild(this.text_);
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        }

        public function 0bB(_arg1:ColorTransform):void{
            var _local2:BitmapData;
            if (_arg1 == this.1Tp)
            {
                return;
            };
            this.1Tp = _arg1;
            if (this.1Tp == null)
            {
                this.e4.bitmapData = this.11n;
                this.text_.transform.colorTransform = MoreColorUtil.identity;
            } else
            {
                _local2 = hd.07J(this.1oS, this.1Tp);
                _local2 = TextureRedrawer.redraw(_local2, this.1C0(), true, 0);
                this.e4.bitmapData = _local2;
                this.text_.transform.colorTransform = this.1Tp;
            };
        }

        protected function onMouseOver(_arg1:MouseEvent):void{
            this.0bB(0Zb);
        }

        protected function onMouseOut(_arg1:MouseEvent):void{
            this.0bB(null);
        }

        protected function 1C0():int{
            return ((40 / (this.1oS.width / 8)));
        }


    }
}//package 099

