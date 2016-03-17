// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.pv

package 0hd{
    import flash.display.Sprite;
    import _CU._13j;
    import com.company.ui.eG;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.events.Event;
    import 1n4.1WS;

    public class pv extends Sprite {

        public static const HEIGHT:int = 88;

        public var nameText_:_13j;
        public var inputText_:eG;
        public var errorText_:_13j;

        public function pv(_arg1:String, _arg2:Boolean){
            this.nameText_ = new _13j().setSize(18).setColor(0xB3B3B3);
            this.nameText_.setBold(true);
            this.nameText_.setStringBuilder(new 1cA().setParams(_arg1));
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.nameText_);
            this.inputText_ = new eG(20, 0xB3B3B3, true, 238, 30);
            this.inputText_.y = 30;
            this.inputText_.x = 6;
            this.inputText_.border = false;
            this.inputText_.displayAsPassword = _arg2;
            this.inputText_.re();
            addChild(this.inputText_);
            graphics.lineStyle(2, 0x454545, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
            graphics.beginFill(0x333333, 1);
            graphics.drawRect(0, this.inputText_.y, 238, 30);
            graphics.endFill();
            graphics.lineStyle();
            this.inputText_.addEventListener(Event.CHANGE, this.1Nk);
            this.errorText_ = new _13j().setSize(12).setColor(16549442);
            this.errorText_.y = (this.inputText_.y + 32);
            this.errorText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.errorText_);
        }

        public function text():String{
            return (this.inputText_.text);
        }

        public function nC():void{
            this.inputText_.text = "";
        }

        public function 07n(_arg1:String, _arg2:Object=null):void{
            this.errorText_.setStringBuilder(new 1cA().setParams(_arg1, _arg2));
        }

        public function 0qp():void{
            this.errorText_.setStringBuilder(new 1WS(""));
        }

        public function 1Nk(_arg1:Event):void{
            this.errorText_.setStringBuilder(new 1WS(""));
        }


    }
}//package 0hd

