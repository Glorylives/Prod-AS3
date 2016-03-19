// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.6P

package _0qj{
import _1n4._1Jo;
import _1n4._1cA;

import _CU._13j;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;

    public class _6P extends _1ae {

        public var _064:_13j;
        public var tipText_:_13j;

        public function _6P(_arg1:uint, _arg2:uint, _arg3:String, _arg4:String, _arg5:int, _arg6:Object=null){
            super(_arg1, 1, _arg2, 1);
            if (_arg3 != null)
            {
                this._064 = new _13j().setSize(20).setColor(0xFFFFFF);
                this._2L(this._064, _arg5, _arg3);
            }
            if (_arg4 != null)
            {
                this.tipText_ = new _13j().setSize(14).setColor(0xB3B3B3);
                this._2L(this.tipText_, _arg5, _arg4, _arg6);
            }
        }

        override protected function alignUI():void{
            this.tipText_.y = ((this._064) ? (this._064.height + 8) : 0);
        }

        public function _2L(_arg1:_13j, _arg2:int, _arg3:String, _arg4:Object=null):void{
            _arg1.setAutoSize(TextFieldAutoSize.LEFT);
            _arg1.setWordWrap(true).setTextWidth(_arg2);
            _arg1.setStringBuilder(new _1cA().setParams(_arg3, _arg4));
            _arg1.filters = [new DropShadowFilter(0, 0, 0)];
            _1he.push(_arg1.textChanged);
            addChild(_arg1);
        }

        public function setTitle(_arg1:_1Jo):void{
            this._064.setStringBuilder(_arg1);
            draw();
        }

        public function _1wG(_arg1:_1Jo):void{
            this.tipText_.setStringBuilder(_arg1);
            draw();
        }


    }
}//package 0qj

