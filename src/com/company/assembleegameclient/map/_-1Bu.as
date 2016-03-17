// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.1Bu

package com.company.assembleegameclient.map{
    import flash.display.Shape;
    import flash.display.GraphicsGradientFill;
    import flash.display.GradientType;
    import com.company.util._tu;
    import flash.display.GraphicsPath;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import __AS3__.vec.*;

    public class 1Bu extends Shape {

        private const VC:GraphicsGradientFill = new GraphicsGradientFill(GradientType.LINEAR, [0, 0], [0, 1], [0, 0xFF], _tu.1mc(10, 600));
        private const 1T3:GraphicsPath = _tu.1s9(0, 0, 10, 600);
        private const nK:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[1Bu.VC, 1Bu.1T3, com.company.util._tu.END_FILL];

        public function 1Bu(){
            graphics.drawGraphicsData(this.nK);
            visible = false;
        }

    }
}//package com.company.assembleegameclient.map

