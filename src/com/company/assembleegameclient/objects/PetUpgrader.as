// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.PetUpgrader

package com.company.assembleegameclient.objects{
import _0qj._1ae;
import _0qj._6P;

import _0uE._1Pn;

import _AO._du;

import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;

    public class PetUpgrader extends GameObject implements _18p {

        public function PetUpgrader(_arg1:XML){
            super(_arg1);
            _10J = true;
        }

        public function getTooltip():_1ae{
            var _local1:_1ae = new _6P(0x363636, 0x9B9B9B, _du._1Mc, _du._Oy, 200);
            return (_local1);
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new _1Pn(_arg1, objectType_));
        }


    }
}//package com.company.assembleegameclient.objects

