// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Cr.1TM

package 1Cr{
    import flash.display.Sprite;
    import flash.geom.ColorTransform;
    import 1r-.1L6;
    import 0qj.6P;
    import com.company.rotmg.graphics.DeleteXGraphic;
    import flash.events.MouseEvent;
    import com.company.util.MoreColorUtil;
    import 1Bg.1hy;
    import 1Bg.of;
    import 1r-.*;

    public class 1TM extends Sprite implements u- {

        protected static const 0Zb:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));

        public var 1-P:1L6;
        private var toolTip_:6P = null;

        public function 1TM(_arg1:String="", _arg2:String="", _arg3:Object=null){
            this.1-P = new 1L6();
            super();
            addChild(new DeleteXGraphic());
            if (_arg1 != "")
            {
                this.NB(_arg1, _arg2, _arg3);
            }
        }

        public function destroy():void{
            while (numChildren > 0)
            {
                this.removeChildAt((numChildren - 1));
            }
            this.toolTip_ = null;
            this.1-P.0I0();
            this.1-P = null;
            removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        }

        private function NB(_arg1:String, _arg2:String, _arg3:Object):void{
            this.toolTip_ = new 6P(0x363636, 0x9B9B9B, _arg1, _arg2, 200, _arg3);
            this.1-P.1pS(this);
            this.1-P.tooltip = this.toolTip_;
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        }

        protected function onMouseOver(_arg1:MouseEvent):void{
            transform.colorTransform = 0Zb;
        }

        protected function onMouseOut(_arg1:MouseEvent):void{
            transform.colorTransform = MoreColorUtil.identity;
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
}//package 1Cr

