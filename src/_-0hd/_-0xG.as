// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.0xG

package 0hd{
    import flash.display.Sprite;
    import _CU._13j;
    import flash.events.MouseEvent;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import 1n4.1Jo;
    import 1n4.1WS;
    import flash.display.Graphics;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;

    public class 0xG extends Sprite {

        private static const 1r7:int = 20;

        public var 0Oj:Sprite;
        public var text_:_13j;
        public var errorText_:_13j;
        private var 14X:Boolean;
        private var Qp:Boolean;

        public function 0xG(_arg1:String, _arg2:Boolean, _arg3:uint=16){
            this.14X = _arg2;
            this.0Oj = new Sprite();
            this.0Oj.x = 2;
            this.0Oj.y = 2;
            this.Sn();
            this.0Oj.addEventListener(MouseEvent.CLICK, this.0eJ);
            addChild(this.0Oj);
            this.text_ = new _13j().setSize(_arg3).setColor(0xB3B3B3);
            this.text_.setTextWidth(243);
            this.text_.x = ((this.0Oj.x + 1r7) + 8);
            this.text_.setBold(true);
            this.text_.setMultiLine(true);
            this.text_.setWordWrap(true);
            this.text_.setHTML(true);
            this.text_.setStringBuilder(new 1cA().setParams(_arg1));
            this.text_.mouseEnabled = true;
            this.text_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.text_);
            this.errorText_ = new _13j().setSize(12).setColor(16549442);
            this.errorText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.errorText_);
            this.text_.textChanged.addOnce(this.onTextChanged);
        }

        public function 0nK():Boolean{
            return (this.14X);
        }

        public function 07n(_arg1:String):void{
            this.errorText_.setStringBuilder(new 1cA().setParams(_arg1));
        }

        public function 0W(_arg1:1Jo):void{
            this.text_.setStringBuilder(_arg1);
        }

        private function onTextChanged():void{
            this.errorText_.x = this.text_.x;
            this.errorText_.y = (this.text_.y + 20);
        }

        private function 0eJ(_arg1:MouseEvent):void{
            this.errorText_.setStringBuilder(new 1WS(""));
            this.14X = !(this.14X);
            this.Sn();
        }

        public function 0IF(_arg1:Boolean):void{
            this.Qp = _arg1;
            this.Sn();
        }

        private function Sn():void{
            var _local2:Number;
            var _local1:Graphics = this.0Oj.graphics;
            _local1.clear();
            _local1.beginFill(0x333333, 1);
            _local1.drawRect(0, 0, 1r7, 1r7);
            _local1.endFill();
            if (this.14X)
            {
                _local1.lineStyle(4, 0xB3B3B3, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
                _local1.moveTo(2, 2);
                _local1.lineTo((1r7 - 2), (1r7 - 2));
                _local1.moveTo(2, (1r7 - 2));
                _local1.lineTo((1r7 - 2), 2);
                _local1.lineStyle();
                this.Qp = false;
            }
            if (this.Qp)
            {
                _local2 = 16549442;
            } else
            {
                _local2 = 0x454545;
            }
            _local1.lineStyle(2, _local2, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
            _local1.drawRect(0, 0, 1r7, 1r7);
            _local1.lineStyle();
        }


    }
}//package 0hd

