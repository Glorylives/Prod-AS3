// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.1Ri

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import _CU._13j;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import flash.text.TextFieldAutoSize;

    public class _1Ri extends Sprite {

        protected static const _0qr:int = 4;

        protected const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[_0dT, path_, com.company.util._tu.END_FILL];

        public var _23G:int = 0;
        protected var text_:_13j;
        protected var w_:int;
        protected var _0dT:GraphicsSolidFill;
        protected var _1pM:GraphicsSolidFill;
        protected var path_:GraphicsPath;

        public function _1Ri(_arg1:int):void{
            this._0dT = new GraphicsSolidFill(0xFFFFFF, 1);
            this._1pM = new GraphicsSolidFill(0x7F7F7F, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this._23G = _arg1;
        }

        protected function _20():void{
            this.w_ = (((this._23G)!=0) ? this._23G : (this.text_.width + 12));
            this.text_.x = (this.w_ / 2);
            _tu.ln(this.path_);
            _tu._0S(0, 0, this.w_, (this.text_.height + (_0qr * 2)), 4, [1, 1, 1, 1], this.path_);
        }

        public function OW(_arg1:int):void{
            this.text_ = this.makeText().setSize(_arg1).setColor(0x363636);
            this.text_.setBold(true);
            this.text_.setAutoSize(TextFieldAutoSize.CENTER);
            this.text_.y = _0qr;
            addChild(this.text_);
        }

        protected function makeText():_13j{
            return (new _13j());
        }


    }
}//package com.company.assembleegameclient.ui

