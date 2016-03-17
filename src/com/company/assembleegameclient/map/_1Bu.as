// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.1Bu

package com.company.assembleegameclient.map{
    import flash.display.Shape;
    import flash.display.GraphicsGradientFill;
    import flash.display.GradientType;
    import com.company.util._tu;
    import flash.display.GraphicsPath;
    import flash.display.IGraphicsData;

    public class _1Bu extends Shape {

        public const VC:GraphicsGradientFill = new GraphicsGradientFill(GradientType.LINEAR, [0, 0], [0, 1], [0, 0xFF], _tu._1mc(10, 600));
        private const _1T3:GraphicsPath = _tu._1s9(0, 0, 10, 600);
        private const nK:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[VC, _1T3, com.company.util._tu.END_FILL];

        public function _1Bu(){
            graphics.drawGraphicsData(this.nK);
            visible = false;
        }

    }
}//package com.company.assembleegameclient.map

