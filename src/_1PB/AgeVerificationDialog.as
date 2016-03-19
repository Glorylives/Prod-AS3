// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.AgeVerificationDialog

package 1PB{
    import 1t6.Dialog;
    import _Jy._1HZ;
    import 1oo.DateField;
    import _CU._13j;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.parameters.Parameters;
    import 1n4.1cA;
    import flash.events.Event;

    public class AgeVerificationDialog extends Dialog {

        private static const WIDTH:int = 300;

        private const Nq:String = "AgeVerificationDialog.tooYoung";
        private const QR:String = "AgeVerificationDialog.invalidBirthDate";
        private const 02G:uint = 13;
        public const Ti:_1HZ = new _1HZ(Boolean);

        private var aI:DateField;
        private var qt:_13j;

        public function AgeVerificationDialog(){
            super(du.1GX, "", du.1C6, du.x4, "/ageVerificationDialog");
            addEventListener(Dialog.LEFT_BUTTON, this.onCancel);
            addEventListener(Dialog.RIGHT_BUTTON, this.03a);
        }

        override protected function makeUIAndAdd():void{
            this.nW();
            this.Fl();
        }

        private function nW():void{
            this.1SR();
            this.1fy();
        }

        private function Fl():void{
            0uD.pushArgs(this.aI.0Sm());
            box_.addChild(this.aI);
            box_.addChild(this.qt);
        }

        override protected function initText(_arg1:String):void{
            a = new _13j().setSize(14).setColor(0xB3B3B3);
            a.setTextWidth((WIDTH - 40));
            a.x = 20;
            a.setMultiLine(true).setWordWrap(true).setHTML(true);
            a.setAutoSize(TextFieldAutoSize.LEFT);
            a.mouseEnabled = true;
            a.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
            this.1wG();
        }

        private function 1wG():void{
            var _local1 = (('<font color="#7777EE"><a href="' + Parameters.dynamic) + '" target="_blank">');
            var _local2 = (('<font color="#7777EE"><a href="' + Parameters.0ku) + '" target="_blank">');
            var _local3 = "</a></font>";
            a.setStringBuilder(new 1cA().setParams("AgeVerificationDialog.text", {
                tou:_local1,
                _tou:_local3,
                policy:_local2,
                _policy:_local3
            }));
        }

        override protected function drawAdditionalUI():void{
            this.aI.y = (a.getBounds(box_).bottom + 8);
            this.aI.x = 20;
            this.qt.y = ((this.aI.y + this.aI.height) + 8);
            this.qt.x = 20;
        }

        private function 1SR():void{
            this.aI = new DateField();
            this.aI.setTitle(du.oB);
        }

        private function 1fy():void{
            this.qt = new _13j().setSize(12).setColor(16549442);
            this.qt.setMultiLine(true);
            this.qt.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        }

        private function onCancel(_arg1:Event):void{
            this.Ti.dispatch(false);
        }

        private function 03a(_arg1:Event):void{
            var _local3:Boolean;
            var _local2:uint = this.dv();
            var _local4 = "";
            if (!this.aI.L6())
            {
                _local4 = this.QR;
                _local3 = true;
            } else
            {
                if ((((_local2 < this.02G)) && (!(_local3))))
                {
                    _local4 = this.Nq;
                    _local3 = true;
                } else
                {
                    _local4 = "";
                    _local3 = false;
                    this.Ti.dispatch(true);
                }
            }
            this.qt.setStringBuilder(new 1cA().setParams(_local4));
            this.aI.0IF(_local3);
            23x();
        }

        private function dv():uint{
            var _local1:Date = new Date(this.08t());
            var _local2:Date = new Date();
            var _local3:uint = (Number(_local2.fullYear) - Number(_local1.fullYear));
            if ((((_local1.month > _local2.month)) || ((((_local1.month == _local2.month)) && ((_local1.date > _local2.date))))))
            {
                _local3--;
            }
            return (_local3);
        }

        private function 08t():Number{
            return (Date.parse(this.aI.1ku()));
        }


    }
}//package 1PB

