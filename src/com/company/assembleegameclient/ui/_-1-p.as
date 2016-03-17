// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.1-p

package com.company.assembleegameclient.ui{
    import flash.display.Shape;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import flash.display.GraphicsPathWinding;
    import __AS3__.vec.*;

    public class 1-p extends Shape {

        private const 2c:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[1-p.1G, 1-p.mp, com.company.util._tu.END_FILL];

        private var 1G:GraphicsSolidFill;
        private var mp:GraphicsPath;

        public function 1-p(_arg1:int, _arg2:uint){
            this.1G = new GraphicsSolidFill(0xFFFFFF, 1);
            this.mp = new GraphicsPath(new Vector.<int>(), new Vector.<Number>(), GraphicsPathWinding.NON_ZERO);
            super();
            this.1rZ(_arg1, _arg2);
        }

        public function 1rZ(_arg1:int, _arg2:uint):void{
            graphics.clear();
            this.1G.color = _arg2;
            _tu.ln(this.mp);
            _tu.Jk(0, 0, 4, this.mp);
            _tu.Jk(_arg1, 0, 4, this.mp);
            _tu.drawRect(0, -1, _arg1, 2, this.mp);
            graphics.drawGraphicsData(this.2c);
        }


    }
}//package com.company.assembleegameclient.ui

