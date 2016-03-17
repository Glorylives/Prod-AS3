// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.CharacterChanger

package com.company.assembleegameclient.objects{
    import ZE.CharacterChangerPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;

    public class CharacterChanger extends GameObject implements 18p {

        public function CharacterChanger(_arg1:XML){
            super(_arg1);
            10J = true;
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new CharacterChangerPanel(_arg1));
        }


    }
}//package com.company.assembleegameclient.objects

