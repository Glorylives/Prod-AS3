// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.1Ri

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import _CU._13j;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import flash.text.TextFieldAutoSize;
    import __AS3__.vec.*;

    public class 1Ri extends Sprite {

        protected static const 0qr:int = 4;

        protected const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[1Ri.0dT, 1Ri.path_, com.company.util._tu.END_FILL];

        public var 23G:int = 0;
        protected var text_:_13j;
        protected var w_:int;
        protected var 0dT:GraphicsSolidFill;
        protected var 1pM:GraphicsSolidFill;
        protected var path_:GraphicsPath;

        public function 1Ri(_arg1:int):void{
            this.0dT = new GraphicsSolidFill(0xFFFFFF, 1);
            this.1pM = new GraphicsSolidFill(0x7F7F7F, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this.23G = _arg1;
        }

        protected function 20():void{
            this.w_ = (((this.23G)!=0) ? this.23G : (this.text_.width + 12));
            this.text_.x = (this.w_ / 2);
            _tu.ln(this.path_);
            _tu.0S-(0, 0, this.w_, (this.text_.height + (0qr * 2)), 4, [1, 1, 1, 1], this.path_);
        }

        public function OW(_arg1:int):void{
            this.text_ = this.makeText().setSize(_arg1).setColor(0x363636);
            this.text_.setBold(true);
            this.text_.setAutoSize(TextFieldAutoSize.CENTER);
            this.text_.y = 0qr;
            addChild(this.text_);
        }

        protected function makeText():_13j{
            return (new _13j());
        }


    }
}//package com.company.assembleegameclient.ui

