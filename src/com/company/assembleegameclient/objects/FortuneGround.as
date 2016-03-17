// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.FortuneGround

package com.company.assembleegameclient.objects{
    import BG.FortuneGroundPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;

    public class FortuneGround extends GameObject implements 18p {

        public function FortuneGround(_arg1:XML){
            super(_arg1);
            10J = true;
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new FortuneGroundPanel(_arg1, objectType_));
        }


    }
}//package com.company.assembleegameclient.objects

