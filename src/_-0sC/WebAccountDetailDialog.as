// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.WebAccountDetailDialog

package 0sC{
    import 0hd.Frame;
    import _Jy._1HZ;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1im;
    import XF.lY;
    import flash.events.MouseEvent;
    import 1n4.1WS;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;

    public class WebAccountDetailDialog extends Frame {

        public var cancel:_1HZ;
        public var change:_1HZ;
        public var logout:_1HZ;
        public var verify:_1HZ;
        private var loginText:_13j;
        private var 1Xk:_13j;
        private var tH:1im;
        private var ix:1im;
        private var 0ey:1im;

        public function WebAccountDetailDialog(){
            super("WebAccountDetailDialog.title", "", "WebAccountDetailDialog.rightButton", "/currentLogin");
            this.0Sl();
            this.33();
            h_ = (h_ + 88);
            this.cancel = new lY(9u, MouseEvent.CLICK);
            this.change = new _1HZ();
            this.logout = new _1HZ();
            this.verify = new _1HZ();
        }

        public function dV(_arg1:String, _arg2:Boolean):void{
            this.1Xk.setStringBuilder(new 1WS(_arg1));
            if (!_arg2)
            {
                this.zN();
            }
            this.0wZ();
            this.1Hh();
        }

        private function zN():void{
            if (this.tH != null)
            {
                removeChild(this.tH);
            }
            this.tH = new 1im(12, false, "WebAccountDetailDialog.verify");
            0-C(this.tH);
            this.tH.addEventListener(MouseEvent.CLICK, this.N2);
        }

        private function 0wZ():void{
            if (this.ix != null)
            {
                removeChild(this.ix);
            }
            this.ix = new 1im(12, false, "WebAccountDetailDialog.changePassword");
            this.ix.addEventListener(MouseEvent.CLICK, this.1c0);
            0-C(this.ix);
        }

        private function 1c0(_arg1:MouseEvent):void{
            this.change.dispatch();
        }

        private function 1Hh():void{
            if (this.0ey != null)
            {
                removeChild(this.0ey);
            }
            this.0ey = new 1im(12, false, "WebAccountDetailDialog.logout");
            this.0ey.addEventListener(MouseEvent.CLICK, this.0SZ);
            0-C(this.0ey);
        }

        private function 0SZ(_arg1:MouseEvent):void{
            this.logout.dispatch();
        }

        private function 0Sl():void{
            this.loginText = new _13j().setSize(18).setColor(0xB3B3B3);
            this.loginText.setBold(true);
            this.loginText.setStringBuilder(new 1cA().setParams("WebAccountDetailDialog.loginText"));
            this.loginText.filters = [new DropShadowFilter(0, 0, 0)];
            this.loginText.y = (h_ - 60);
            this.loginText.x = 17;
            addChild(this.loginText);
        }

        private function 33():void{
            this.1Xk = new _13j().setSize(16).setColor(0xB3B3B3);
            this.1Xk.y = (h_ - 30);
            this.1Xk.x = 17;
            addChild(this.1Xk);
        }

        private function N2(_arg1:MouseEvent):void{
            this.verify.dispatch();
            this.tH.1fW("WebAccountDetailDialog.sent");
        }


    }
}//package 0sC

