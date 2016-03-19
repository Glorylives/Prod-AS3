// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ClosedGiftChest

package com.company.assembleegameclient.objects{
    import _04_._1JZ;
    import BG.TextPanel;

import _0UV._0Hm;

import _0qj._1ae;
import _0qj._6P;

import _AO._du;

import com.company.assembleegameclient.game.GameSprite;
    import _ZE.Panel;

    public class ClosedGiftChest extends GameObject implements _18p {

        private var YG:_0Hm;

        public function ClosedGiftChest(_arg1:XML){
            super(_arg1);
            _10J = true;
            this.YG = _1JZ._0JF().getInstance(_0Hm);
        }

        public function getTooltip():_1ae{
            var _local1:_1ae = new _6P(0x363636, 0x9B9B9B, _du._1Mc, _du._Oy, 200);
            return (_local1);
        }

        public function getPanel(_arg1:GameSprite):Panel{
            this.YG.dispatch(_du._Oy);
            return (new TextPanel(_arg1));
        }


    }
}//package com.company.assembleegameclient.objects

