// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.0mL

package 0sC{
    import 0hd.Frame;
    import _Jy._1HZ;
    import 0hd.0xG;
    import 1oo.DateField;
    import _CU._13j;
    import AO.du;
    import 1n4.1cA;
    import flash.events.TextEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.filters.DropShadowFilter;
    import XF.lY;
    import flash.events.MouseEvent;
    import qs.1T5;
    import com.company.util.1wL;

    public class 0mL extends Frame {

        private const errors:Array = [];

        public var register:_1HZ;
        public var signIn:_1HZ;
        public var cancel:_1HZ;
        private var 0G1:1xl;
        private var 1Ih:1xl;
        private var 1RR:1xl;
        private var checkbox:0xG;
        private var 2-I:DateField;
        private var 1Ph:_13j;
        private var 1jm:_13j;
        private var 20q:String = "</a></font>";

        public function 0mL(){
            super(du.2-E, "RegisterWebAccountDialog.leftButton", "RegisterWebAccountDialog.rightButton", "/registerAccount", 326);
            this.0HD();
            this.fp();
        }

        private function 0HD():void{
            this.0G1 = new 1xl(du.0Xh, false, 275);
            this.1Ih = new 1xl(du.0nq, true, 275);
            this.1RR = new 1xl(du.0xE, true, 275);
            this.2-I = new DateField();
            this.2-I.setTitle(du.oB);
            0Bj(this.0G1);
            0Bj(this.1Ih);
            0Bj(this.1RR);
            0Gq(this.2-I, 17);
            1e-(35);
            this.checkbox = new 0xG(du.1cK, false, 12);
            Sv(this.checkbox);
            1e-(17);
            this.147();
            1e-((17 * 2));
            this.0Va();
        }

        public function 0Va():void{
            this.1Ph = new _13j();
            var _local1 = '<font color="#7777EE"><a href="event:flash.events.TextEvent">';
            this.1Ph.setStringBuilder(new 1cA().setParams(du.0El, {
                signIn:_local1,
                _signIn:this.20q
            }));
            this.1Ph.addEventListener(TextEvent.LINK, this.0pR);
            this.j5(this.1Ph);
        }

        public function 147():void{
            this.1jm = new _13j();
            var _local1 = (('<font color="#7777EE"><a href="' + Parameters.dynamic) + '" target="_blank">');
            var _local2 = (('<font color="#7777EE"><a href="' + Parameters.0ku) + '" target="_blank">');
            this.1jm.setStringBuilder(new 1cA().setParams(du.0Rm, {
                tou:_local1,
                _tou:this.20q,
                policy:_local2,
                _policy:this.20q
            }));
            this.j5(this.1jm);
        }

        public function j5(_arg1:_13j):void{
            _arg1.setSize(12).setColor(0xB3B3B3).setBold(true);
            _arg1.setTextWidth(275);
            _arg1.setMultiLine(true).setWordWrap(true).setHTML(true);
            _arg1.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(_arg1);
            positionText(_arg1);
        }

        private function 0pR(_arg1:TextEvent):void{
            this.signIn.dispatch();
        }

        private function fp():void{
            this.cancel = new lY(0er, MouseEvent.CLICK);
            9u.addEventListener(MouseEvent.CLICK, this.0VB);
            this.register = new _1HZ(1T5);
            this.signIn = new _1HZ();
        }

        private function 0VB(_arg1:MouseEvent):void{
            var _local2:Boolean = this.0QB();
            this.0Zq();
            if (_local2)
            {
                this.08y();
            };
        }

        private function 0QB():Boolean{
            this.errors.length = 0;
            var _local1:Boolean = true;
            _local1 = ((this.0n5()) && (_local1));
            _local1 = ((this.PH()) && (_local1));
            _local1 = ((this.KF()) && (_local1));
            _local1 = ((this.isAgeVerified()) && (_local1));
            _local1 = ((this.1AZ()) && (_local1));
            return (_local1);
        }

        private function isAgeVerified():Boolean{
            var _local1:uint = 0jj.dv(this.2-I);
            var _local2 = (_local1 >= 13);
            this.2-I.0IF(!(_local2));
            if (!_local2)
            {
                this.errors.push(du.0ex);
            };
            return (_local2);
        }

        private function 1AZ():Boolean{
            var _local1:Boolean = this.2-I.L6();
            this.2-I.0IF(!(_local1));
            if (!_local1)
            {
                this.errors.push(du.0zV);
            };
            return (_local1);
        }

        private function 0n5():Boolean{
            var _local1:Boolean = 1wL.0xF(this.0G1.text());
            this.0G1.0IF(!(_local1));
            if (!_local1)
            {
                this.errors.push(du.PU);
            };
            return (_local1);
        }

        private function PH():Boolean{
            var _local1 = (this.1Ih.text().length >= 5);
            this.1Ih.0IF(!(_local1));
            if (!_local1)
            {
                this.errors.push(du.0WF);
            };
            return (_local1);
        }

        private function KF():Boolean{
            var _local1 = (this.1Ih.text() == this.1RR.text());
            this.1RR.0IF(!(_local1));
            if (!_local1)
            {
                this.errors.push(du.11j);
            };
            return (_local1);
        }

        public function 0Zq():void{
            if (this.errors.length == 0)
            {
                this.Wf();
            } else
            {
                this.0uU((((this.errors.length == 1)) ? this.errors[0] : du.0Ig));
            };
        }

        public function 0sN(_arg1:String):void{
            this.0uU(_arg1);
        }

        private function Wf():void{
            064.setStringBuilder(new 1cA().setParams(du.2-E));
            064.setColor(0xB3B3B3);
        }

        private function 0uU(_arg1:String):void{
            064.setStringBuilder(new 1cA().setParams(_arg1));
            064.setColor(16549442);
        }

        private function 08y():void{
            var _local1:1T5 = new 1T5();
            _local1.username = this.0G1.text();
            _local1.password = this.1Ih.text();
            _local1.Q4 = ((this.checkbox.0nK()) ? 1 : 0);
            this.register.dispatch(_local1);
        }


    }
}//package 0sC

