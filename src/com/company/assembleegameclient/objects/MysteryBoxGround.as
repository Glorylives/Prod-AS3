// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.MysteryBoxGround

package com.company.assembleegameclient.objects{
    import BG.MysteryBoxPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import _ZE.Panel;

    public class MysteryBoxGround extends GameObject implements _18p {

        public function MysteryBoxGround(_arg1:XML){
            super(_arg1);
            _10J = true;
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new MysteryBoxPanel(_arg1, objectType_));
        }


    }
}//package com.company.assembleegameclient.objects

