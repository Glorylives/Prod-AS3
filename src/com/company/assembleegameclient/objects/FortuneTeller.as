// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.FortuneTeller

package com.company.assembleegameclient.objects{
import _1Gb._1aM;

import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map._1C8;

    public class FortuneTeller extends Character {

        public function FortuneTeller(_arg1:XML){
            super(_arg1);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
            if (_1aM._0ui)
            {
                super.draw(_arg1, _arg2, _arg3);
            };
        }

        override public function drawShadow(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
            if (_1aM._0ui)
            {
                super.drawShadow(_arg1, _arg2, _arg3);
            };
        }


    }
}//package com.company.assembleegameclient.objects

