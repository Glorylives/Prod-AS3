﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.QuestRewards

package com.company.assembleegameclient.objects{
    import yA.oF;
    import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;

    public class QuestRewards extends GameObject implements 18p {

        public function QuestRewards(_arg1:XML){
            super(_arg1);
            10J = true;
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new oF(_arg1));
        }


    }
}//package com.company.assembleegameclient.objects

