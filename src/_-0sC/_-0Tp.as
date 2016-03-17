// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.0Tp

package 0sC{
    import 0hd.Frame;
    import _Jy._1HZ;
    import 0hd.pv;
    import com.company.assembleegameclient.ui.1im;
    import AO.du;
    import XF.lY;
    import flash.events.MouseEvent;
    import qs.1T5;
    import flash.events.KeyboardEvent;
    import flash.events.Event;
    import com.company.util.02E;
    import _CU._13j;
    import 1n4.1WS;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormatAlign;
    import flash.filters.DropShadowFilter;

    public class 0Tp extends Frame {

        public var 0-e:_1HZ;
        public var forgot:_1HZ;
        public var register:_1HZ;
        public var email:pv;
        private var password:pv;
        private var 1HY:1im;
        private var 1K4:1im;

        public function 0Tp(_arg1:Boolean=false){
            super(du.106, "", du.yV, "/signIn");
            this.0nT();
            if (_arg1)
            {
                addChild(this.1UU("Attention!", -165, -85).setColor(0xFF0000));
                addChild(this.1UU("A new password was sent to your Sign In Email Address.", -165, -65));
                addChild(this.1UU("Please use the new password to Sign In.", -165, -45));
            };
            this.forgot = new lY(this.1HY, MouseEvent.CLICK);
            this.register = new lY(this.1K4, MouseEvent.CLICK);
            this.0-e = new _1HZ(1T5);
        }

        private function 0nT():void{
            this.email = new pv(du.0wX, false);
            I2(this.email);
            this.password = new pv(du.1Il, true);
            I2(this.password);
            this.1HY = new 1im(12, false, du.04k);
            0-C(this.1HY);
            this.1K4 = new 1im(12, false, du.jl);
            0-C(this.1K4);
            9u.addEventListener(MouseEvent.CLICK, this.1Mi);
            addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if (_arg1.keyCode == 02E.ENTER)
            {
                this.1Oe();
            };
        }

        private function 1Mi(_arg1:MouseEvent):void{
            this.1Oe();
        }

        private function 1Oe():void{
            var _local1:1T5;
            if (((this.0n5()) && (this.PH())))
            {
                _local1 = new 1T5();
                _local1.username = this.email.text();
                _local1.password = this.password.text();
                this.0-e.dispatch(_local1);
            };
        }

        private function PH():Boolean{
            var _local1 = !((this.password.text() == ""));
            if (!_local1)
            {
                this.password.07n(du.1Dy);
            };
            return (_local1);
        }

        private function 0n5():Boolean{
            var _local1 = !((this.email.text() == ""));
            if (!_local1)
            {
                this.email.07n(du.l2);
            };
            return (_local1);
        }

        public function 07n(_arg1:String):void{
            this.password.07n(_arg1);
        }

        public function 1UU(_arg1:String, _arg2:int, _arg3:int):_13j{
            var _local4:_13j = new _13j().setSize(16).setColor(0xFFFFFF).setTextWidth(600);
            _local4.setBold(true);
            _local4.setStringBuilder(new 1WS(_arg1));
            _local4.setSize(16).setColor(0xFFFFFF);
            _local4.setWordWrap(true);
            _local4.setMultiLine(true);
            _local4.setAutoSize(TextFieldAutoSize.CENTER);
            _local4.setHorizontalAlign(TextFormatAlign.CENTER);
            _local4.filters = [new DropShadowFilter(0, 0, 0)];
            _local4.x = _arg2;
            _local4.y = _arg3;
            return (_local4);
        }


    }
}//package 0sC

