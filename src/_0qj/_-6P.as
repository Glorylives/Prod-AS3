// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.6P

package 0qj{
    import _CU._13j;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import 1n4.1Jo;

    public class 6P extends 1ae {

        public var 064:_13j;
        public var tipText_:_13j;

        public function 6P(_arg1:uint, _arg2:uint, _arg3:String, _arg4:String, _arg5:int, _arg6:Object=null){
            super(_arg1, 1, _arg2, 1);
            if (_arg3 != null)
            {
                this.064 = new _13j().setSize(20).setColor(0xFFFFFF);
                this.2L(this.064, _arg5, _arg3);
            };
            if (_arg4 != null)
            {
                this.tipText_ = new _13j().setSize(14).setColor(0xB3B3B3);
                this.2L(this.tipText_, _arg5, _arg4, _arg6);
            };
        }

        override protected function alignUI():void{
            this.tipText_.y = ((this.064) ? (this.064.height + 8) : 0);
        }

        public function 2L(_arg1:_13j, _arg2:int, _arg3:String, _arg4:Object=null):void{
            _arg1.setAutoSize(TextFieldAutoSize.LEFT);
            _arg1.setWordWrap(true).setTextWidth(_arg2);
            _arg1.setStringBuilder(new 1cA().setParams(_arg3, _arg4));
            _arg1.filters = [new DropShadowFilter(0, 0, 0)];
            1he.push(_arg1.textChanged);
            addChild(_arg1);
        }

        public function setTitle(_arg1:1Jo):void{
            this.064.setStringBuilder(_arg1);
            draw();
        }

        public function 1wG(_arg1:1Jo):void{
            this.tipText_.setStringBuilder(_arg1);
            draw();
        }


    }
}//package 0qj

