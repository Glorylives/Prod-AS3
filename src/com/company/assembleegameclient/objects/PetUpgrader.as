﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.PetUpgrader

package com.company.assembleegameclient.objects{
    import 0qj.6P;
    import AO.du;
    import 0qj.1ae;
    import 0uE.1Pn;
    import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;

    public class PetUpgrader extends GameObject implements 18p {

        public function PetUpgrader(_arg1:XML){
            super(_arg1);
            10J = true;
        }

        public function getTooltip():1ae{
            var _local1:1ae = new 6P(0x363636, 0x9B9B9B, du.1Mc, du.Oy, 200);
            return (_local1);
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new 1Pn(_arg1, objectType_));
        }


    }
}//package com.company.assembleegameclient.objects

