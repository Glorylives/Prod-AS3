// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2H.1ar

package 2H{
    import flash.display.Sprite;
    import _CU._13j;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import _Jy._1HZ;

    public class 1ar extends Sprite {

        public var w_:int;
        public var h_:int;
        private var name_:String;
        private var nameText_:_13j;
        private var 07i:1cA;

        public function 1ar(_arg1:String, _arg2:int, _arg3:int){
            this.07i = new 1cA();
            super();
            this.w_ = _arg2;
            this.h_ = _arg3;
            this.name_ = _arg1;
            mouseChildren = false;
            this.nameText_ = new _13j().setSize(16).setColor(0xB3B3B3).setBold(true);
            this.nameText_.setStringBuilder(this.07i.setParams(_arg1));
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.nameText_);
            this.0aJ(0x363636);
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        }

        public function 0Sm():_1HZ{
            return (this.nameText_.textChanged);
        }

        public function getValue():String{
            return (this.name_);
        }

        public function setValue(_arg1:String):void{
            this.name_ = _arg1;
            this.nameText_.setStringBuilder(this.07i.setParams(_arg1));
        }

        public function setWidth(_arg1:int):void{
            this.w_ = _arg1;
            this.nameText_.x = ((this.w_ / 2) - (this.nameText_.width / 2));
            this.nameText_.y = ((this.h_ / 2) - (this.nameText_.height / 2));
            this.0aJ(0x363636);
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.0aJ(0x565656);
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.0aJ(0x363636);
        }

        private function 0aJ(_arg1:uint):void{
            graphics.clear();
            graphics.lineStyle(2, 0x545454);
            graphics.beginFill(_arg1, 1);
            graphics.drawRect(0, 0, this.w_, this.h_);
            graphics.endFill();
            graphics.lineStyle();
        }


    }
}//package 2H

