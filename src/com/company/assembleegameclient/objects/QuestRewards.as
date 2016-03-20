// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.QuestRewards

package com.company.assembleegameclient.objects{
    import yA._oF;
    import com.company.assembleegameclient.game.GameSprite;
    import _ZE.Panel;

    public class QuestRewards extends GameObject implements _18p {

        public function QuestRewards(_arg1:XML){
            super(_arg1);
            _10J = true;
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new _oF(_arg1));
        }


    }
}//package com.company.assembleegameclient.objects

