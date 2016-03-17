// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.MoneyChanger

package com.company.assembleegameclient.objects{
    import BG.MoneyChangerPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;

    public class MoneyChanger extends GameObject implements 18p {

        public function MoneyChanger(_arg1:XML){
            super(_arg1);
            10J = true;
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new MoneyChangerPanel(_arg1));
        }


    }
}//package com.company.assembleegameclient.objects

