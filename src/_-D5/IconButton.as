// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//D5.IconButton

package D5{
    import flash.display.Sprite;
    import flash.geom.ColorTransform;
    import 1r-.1L6;
    import flash.display.BitmapData;
    import flash.display.Bitmap;
    import _CU._13j;
    import 0qj.6P;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import 1n4.1cA;
    import flash.events.MouseEvent;
    import AO.du;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.util.02E;
    import com.company.util.MoreColorUtil;
    import 1Bg.1hy;
    import 1Bg.of;
    import 1r-.*;

    public class IconButton extends Sprite implements u- {

        protected static const 0Zb:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));
        protected static const 1Ws:ColorTransform = new ColorTransform(0.6, 0.6, 0.6, 1);

        public var 1-P:1L6;
        protected var 1oS:BitmapData;
        protected var 11n:BitmapData;
        protected var e4:Bitmap;
        protected var label_:_13j;
        protected var Sp:String;
        protected var 1Tp:ColorTransform = null;
        private var toolTip_:6P = null;

        public function IconButton(_arg1:BitmapData, _arg2:String, _arg3:String, _arg4:String=""){
            this.1-P = new 1L6();
            super();
            this.1oS = _arg1;
            this.11n = TextureRedrawer.redraw(this.1oS, (320 / this.1oS.width), true, 0);
            this.e4 = new Bitmap(this.11n);
            this.e4.x = -12;
            this.e4.y = -12;
            addChild(this.e4);
            if (_arg2 != "")
            {
                this.label_ = new _13j().setColor(0xFFFFFF).setSize(14);
                this.label_.setStringBuilder(new 1cA().setParams(_arg2));
                this.label_.x = ((this.e4.x + this.e4.width) - 8);
                this.label_.y = 0;
                addChild(this.label_);
            };
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            this.NB(_arg3);
            this.Sp = _arg4;
            if (this.Sp != "")
            {
                this.0C9(du.1zo, {hotkey:02E.24x[Parameters.data_[this.Sp]]});
            };
        }

        public function destroy():void{
            removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            this.1-P.0I0();
            this.1-P.tooltip = null;
            this.1-P = null;
            this.1oS = null;
            this.11n = null;
            this.e4 = null;
            this.label_ = null;
            this.toolTip_ = null;
        }

        public function NB(_arg1:String, _arg2:Object=null):void{
            if (_arg1 != "")
            {
                if (this.toolTip_ == null)
                {
                    this.toolTip_ = new 6P(0x363636, 0x9B9B9B, "", "", 200);
                    this.1-P.1pS(this);
                    this.1-P.tooltip = this.toolTip_;
                };
                this.toolTip_.setTitle(new 1cA().setParams(_arg1, _arg2));
            };
        }

        public function 0C9(_arg1:String, _arg2:Object=null):void{
            if (_arg1 != "")
            {
                if (this.toolTip_ == null)
                {
                    this.toolTip_ = new 6P(0x363636, 0x9B9B9B, "", "", 200);
                    this.1-P.1pS(this);
                    this.1-P.tooltip = this.toolTip_;
                };
                this.toolTip_.1wG(new 1cA().setParams(_arg1, _arg2));
            };
        }

        public function 0bB(_arg1:ColorTransform):void{
            if (_arg1 == this.1Tp)
            {
                return;
            };
            this.1Tp = _arg1;
            if (this.1Tp == null)
            {
                transform.colorTransform = MoreColorUtil.identity;
            } else
            {
                transform.colorTransform = this.1Tp;
            };
        }

        public function set enabled(_arg1:Boolean):void{
            if (_arg1)
            {
                addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
                addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
                this.0bB(null);
                mouseEnabled = (mouseChildren = true);
            } else
            {
                removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
                removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
                this.0bB(1Ws);
                mouseEnabled = (mouseChildren = false);
            };
        }

        protected function onMouseOver(_arg1:MouseEvent):void{
            this.0bB(0Zb);
        }

        protected function onMouseOut(_arg1:MouseEvent):void{
            this.0bB(null);
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


    }
}//package D5

