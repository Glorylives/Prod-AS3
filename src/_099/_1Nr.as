// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//099.1Nr

package _099{
    import flash.display.Sprite;
    import flash.geom.ColorTransform;
    import flash.display.BitmapData;
    import flash.display.Bitmap;
    import _CU._13j;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.filters.DropShadowFilter;
    import _1n4._1cA;
    import flash.events.MouseEvent;
    import com.company.util.MoreColorUtil;
    import com.company.util._hd;

    public class _1Nr extends Sprite {

        protected static const _0Zb:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));

        protected var _1oS:BitmapData;
        protected var _11n:BitmapData;
        protected var e4:Bitmap;
        protected var text_:_13j;
        protected var _1Tp:ColorTransform = null;

        public function _1Nr(_arg1:BitmapData, _arg2:uint, _arg3:String){
            this._1oS = _arg1;
            this._11n = TextureRedrawer.redraw(_arg1, this._1C0(), true, 0);
            this.e4 = new Bitmap(this._11n);
            this.e4.filters = [new DropShadowFilter(0, 0, 0)];
            this.e4.x = -12;
            this.e4.y = -15;
            addChild(this.e4);
            this.text_ = new _13j().setSize(18).setColor(_arg2);
            this.text_.setBold(true);
            this.text_.setStringBuilder(new _1cA().setParams(_arg3));
            this.text_.filters = [new DropShadowFilter(0, 0, 0)];
            this.text_.x = 20;
            this.text_.y = -6;
            addChild(this.text_);
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        }

        public function _0bB(_arg1:ColorTransform):void{
            var _local2:BitmapData;
            if (_arg1 == this._1Tp)
            {
                return;
            };
            this._1Tp = _arg1;
            if (this._1Tp == null)
            {
                this.e4.bitmapData = this._11n;
                this.text_.transform.colorTransform = MoreColorUtil.identity;
            } else
            {
                _local2 = _hd._07J(this._1oS, this._1Tp);
                _local2 = TextureRedrawer.redraw(_local2, this._1C0(), true, 0);
                this.e4.bitmapData = _local2;
                this.text_.transform.colorTransform = this._1Tp;
            };
        }

        protected function onMouseOver(_arg1:MouseEvent):void{
            this._0bB(_0Zb);
        }

        protected function onMouseOut(_arg1:MouseEvent):void{
            this._0bB(null);
        }

        protected function _1C0():int{
            return ((40 / (this._1oS.width / 8)));
        }


    }
}//package 099

