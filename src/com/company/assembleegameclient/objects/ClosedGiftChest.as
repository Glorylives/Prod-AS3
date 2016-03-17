// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ClosedGiftChest

package com.company.assembleegameclient.objects{
    import 0UV.0Hm;
    import _04_._1JZ;
    import 0qj.6P;
    import AO.du;
    import 0qj.1ae;
    import BG.TextPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;

    public class ClosedGiftChest extends GameObject implements 18p {

        private var YG:0Hm;

        public function ClosedGiftChest(_arg1:XML){
            super(_arg1);
            10J = true;
            this.YG = _1JZ.0JF().getInstance(0Hm);
        }

        public function getTooltip():1ae{
            var _local1:1ae = new 6P(0x363636, 0x9B9B9B, du.1Mc, du.Oy, 200);
            return (_local1);
        }

        public function getPanel(_arg1:GameSprite):Panel{
            this.YG.dispatch(du.Oy);
            return (new TextPanel(_arg1));
        }


    }
}//package com.company.assembleegameclient.objects

