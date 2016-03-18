// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.1-p

package com.company.assembleegameclient.ui{
    import flash.display.Shape;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import flash.display.GraphicsPathWinding;
    public class _1p extends Shape {

        private const _2c:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[_1G, mp, com.company.util._tu.END_FILL];

        private var _1G:GraphicsSolidFill;
        private var mp:GraphicsPath;

        public function _1p(_arg1:int, _arg2:uint){
            this._1G = new GraphicsSolidFill(0xFFFFFF, 1);
            this.mp = new GraphicsPath(new Vector.<int>(), new Vector.<Number>(), GraphicsPathWinding.NON_ZERO);
            super();
            this._1rZ(_arg1, _arg2);
        }

        public function _1rZ(_arg1:int, _arg2:uint):void{
            graphics.clear();
            this._1G.color = _arg2;
            _tu.ln(this.mp);
            _tu.Jk(0, 0, 4, this.mp);
            _tu.Jk(_arg1, 0, 4, this.mp);
            _tu.drawRect(0, -1, _arg1, 2, this.mp);
            graphics.drawGraphicsData(this._2c);
        }


    }
}//package com.company.assembleegameclient.ui

