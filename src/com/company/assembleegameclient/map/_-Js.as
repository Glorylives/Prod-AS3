// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.Js

package com.company.assembleegameclient.map{
    import flash.display.Shape;
    import flash.display.GraphicsGradientFill;
    import flash.display.GradientType;
    import com.company.util._tu;
    import flash.display.GraphicsPath;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import __AS3__.vec.*;

    public class Js extends Shape {

        private const s:Number = (600 / Math.sin((Math.PI / 4)));
        private const VC:GraphicsGradientFill = new flash.display.GraphicsGradientFill(flash.display.GradientType.RADIAL, [0xFFFFFF, 0xFFFFFF, 0xFFFFFF], [0, 0, 0.92], [0, 155, 0xFF], com.company.util._tu.1mc(Js.s, Js.s, 0, ((600 - Js.s) / 2), ((600 - Js.s) / 2)));
        private const 1T3:GraphicsPath = _tu.1s9(0, 0, 600, 600);
        private const nK:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[Js.VC, Js.1T3, com.company.util._tu.END_FILL];

        public function Js(){
            graphics.drawGraphicsData(this.nK);
            visible = false;
        }

    }
}//package com.company.assembleegameclient.map

