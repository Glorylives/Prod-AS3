// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.1xl

package 0sC{
    import _CU._13j;
    import com.company.ui.eG;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import _Jy._1HZ;

    public class 1xl extends 7h {

        public var nameText_:_13j;
        public var inputText_:eG;
        public var jp:Boolean;

        public function 1xl(_arg1:String, _arg2:Boolean, _arg3:uint=238, _arg4:uint=30){
            this.nameText_ = new _13j().setSize(18).setColor(6U);
            this.nameText_.setBold(true);
            this.nameText_.setStringBuilder(new 1cA().setParams(_arg1));
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.nameText_);
            this.inputText_ = new eG(20, 6U, true, _arg3, _arg4);
            this.inputText_.y = 30;
            this.inputText_.x = 6;
            this.inputText_.border = false;
            this.inputText_.displayAsPassword = _arg2;
            this.inputText_.re();
            addChild(this.inputText_);
            this.0IF(false);
        }

        public function text():String{
            return (this.inputText_.text);
        }

        override public function getHeight():Number{
            return (68);
        }

        public function textChanged():_1HZ{
            return (this.nameText_.textChanged);
        }

        public function 0IF(_arg1:Boolean):void{
            this.jp = _arg1;
            1lZ(this.inputText_, 0, 0, _arg1);
        }


    }
}//package 0sC

