// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1oo.DateField

package 1oo{
    import flash.display.Sprite;
    import _CU._13j;
    import com.company.ui.eG;
    import 1aj.14n;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import flash.events.TextEvent;
    import flash.events.FocusEvent;
    import flash.events.Event;
    import AO.du;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.text.TextFieldAutoSize;
    import _Jy._1HZ;

    public class DateField extends Sprite {

        private static const 1Vo:uint = 0x333333;
        private static const 0xl:uint = 16549442;
        private static const 1IM:uint = 0x454545;
        private static const 6U:uint = 0xB3B3B3;
        private static const DQ:String = "1234567890";
        private static const UC:uint = 0x555555;

        public var label:_13j;
        public var days:eG;
        public var pG:eG;
        public var 00H:eG;
        private var WM:_13j;
        private var 0G3:_13j;
        private var 18B:_13j;
        private var 0PT:int;
        private var 02K:14n;

        public function DateField(){
            this.02K = new 14n();
            this.0PT = new Date().getFullYear();
            this.label = new _13j().setSize(18).setColor(0xB3B3B3);
            this.label.setBold(true);
            this.label.setStringBuilder(new 1cA().setParams(name));
            this.label.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.label);
            this.pG = new eG(20, 6U, true, 35, 30);
            this.pG.restrict = DQ;
            this.pG.maxChars = 2;
            this.pG.y = 30;
            this.pG.x = 6;
            this.pG.border = false;
            this.pG.re();
            this.pG.addEventListener(TextEvent.TEXT_INPUT, this.uE);
            this.pG.addEventListener(FocusEvent.FO_CUS_OUT, this.0EN);
            this.pG.addEventListener(Event.CHANGE, this.1Z1);
            this.0G3 = this.0te(this.pG, du.17);
            addChild(this.0G3);
            addChild(this.pG);
            this.days = new eG(20, 6U, true, 35, 30);
            this.days.restrict = DQ;
            this.days.maxChars = 2;
            this.days.y = 30;
            this.days.x = 63;
            this.days.border = false;
            this.days.re();
            this.days.addEventListener(TextEvent.TEXT_INPUT, this.1FE);
            this.days.addEventListener(FocusEvent.FO_CUS_OUT, this.1ly);
            this.days.addEventListener(Event.CHANGE, this.1du);
            this.WM = this.0te(this.days, du.0CX);
            addChild(this.WM);
            addChild(this.days);
            this.00H = new eG(20, 6U, true, 55, 30);
            this.00H.restrict = DQ;
            this.00H.maxChars = 4;
            this.00H.y = 30;
            this.00H.x = 118;
            this.00H.border = false;
            this.00H.re();
            this.00H.restrict = DQ;
            this.00H.addEventListener(TextEvent.TEXT_INPUT, this.0iN);
            this.00H.addEventListener(Event.CHANGE, this.au);
            this.18B = this.0te(this.00H, du.1D);
            addChild(this.18B);
            addChild(this.00H);
            this.0IF(false);
        }

        public function setTitle(_arg1:String):void{
            this.label.setStringBuilder(new 1cA().setParams(_arg1));
        }

        public function 0IF(_arg1:Boolean):void{
            this.1lZ(this.pG, 0, 0, _arg1);
            this.1lZ(this.days, 0, 0, _arg1);
            this.1lZ(this.00H, 0, 0, _arg1);
        }

        private function 1lZ(_arg1:eG, _arg2:int, _arg3:int, _arg4:Boolean):void{
            var _local5:uint = ((_arg4) ? 0xl : 1IM);
            graphics.lineStyle(2, _local5, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
            graphics.beginFill(1Vo, 1);
            graphics.drawRect(((_arg1.x - _arg2) - 5), (_arg1.y - _arg3), (_arg1.width + (_arg2 * 2)), (_arg1.height + (_arg3 * 2)));
            graphics.endFill();
            graphics.lineStyle();
        }

        private function 0te(_arg1:eG, _arg2:String):_13j{
            var _local3:_13j = new _13j().setSize(16).setColor(UC);
            _local3.setTextWidth((_arg1.width + 4)).setTextHeight(_arg1.height);
            _local3.x = (_arg1.x - 6);
            _local3.y = (_arg1.y + 3);
            _local3.setStringBuilder(new 1cA().setParams(_arg2));
            _local3.setAutoSize(TextFieldAutoSize.CENTER);
            return (_local3);
        }

        private function uE(_arg1:TextEvent):void{
            var _local2:String = (this.pG.text + _arg1.text);
            var _local3:int = int(_local2);
            if (((!((_local2 == "0"))) && (!(this.02K.0HG(_local3)))))
            {
                _arg1.preventDefault();
            };
        }

        private function 0EN(_arg1:FocusEvent):void{
            var _local2:int = int(this.pG.text);
            if ((((_local2 < 10)) && (!((this.days.text == "")))))
            {
                this.pG.text = ("0" + _local2.toString());
            };
        }

        private function 1Z1(_arg1:Event):void{
            this.0G3.visible = !(this.pG.text);
        }

        private function 1FE(_arg1:TextEvent):void{
            var _local2:String = (this.days.text + _arg1.text);
            var _local3:int = int(_local2);
            if (((!((_local2 == "0"))) && (!(this.02K.1EM(_local3)))))
            {
                _arg1.preventDefault();
            };
        }

        private function 1ly(_arg1:FocusEvent):void{
            var _local2:int = int(this.days.text);
            if ((((_local2 < 10)) && (!((this.days.text == "")))))
            {
                this.days.text = ("0" + _local2.toString());
            };
        }

        private function 1du(_arg1:Event):void{
            this.WM.visible = !(this.days.text);
        }

        private function 0iN(_arg1:TextEvent):void{
            var _local2:String = (this.00H.text + _arg1.text);
            var _local3:int = this.7K(_local2);
            if (_local3 > this.0PT)
            {
                _arg1.preventDefault();
            };
        }

        private function 7K(_arg1:String):int{
            while (_arg1.length < 4)
            {
                _arg1 = (_arg1 + "0");
            };
            return (int(_arg1));
        }

        private function au(_arg1:Event):void{
            this.18B.visible = !(this.00H.text);
        }

        public function L6():Boolean{
            var _local1:int = int(this.pG.text);
            var _local2:int = int(this.days.text);
            var _local3:int = int(this.00H.text);
            return (this.02K.L6(_local1, _local2, _local3, 100));
        }

        public function 1ku():String{
            var _local1:String = this.0N3(this.pG.text, 2);
            var _local2:String = this.0N3(this.days.text, 2);
            var _local3:String = this.0N3(this.00H.text, 4);
            return (((((_local1 + "/") + _local2) + "/") + _local3));
        }

        private function 0N3(_arg1:String, _arg2:int):String{
            while (_arg1.length < _arg2)
            {
                _arg1 = ("0" + _arg1);
            };
            return (_arg1);
        }

        public function 0Sm():_1HZ{
            return (this.label.textChanged);
        }


    }
}//package 1oo

