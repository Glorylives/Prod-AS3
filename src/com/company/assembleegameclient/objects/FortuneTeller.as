// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.FortuneTeller

package com.company.assembleegameclient.objects{
    import 1Gb.1aM;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map.1C8;

    public class FortuneTeller extends Character {

        public function FortuneTeller(_arg1:XML){
            super(_arg1);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            if (1aM.0ui)
            {
                super.draw(_arg1, _arg2, _arg3);
            };
        }

        override public function drawShadow(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            if (1aM.0ui)
            {
                super.drawShadow(_arg1, _arg2, _arg3);
            };
        }


    }
}//package com.company.assembleegameclient.objects

