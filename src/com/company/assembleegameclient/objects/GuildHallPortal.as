// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.GuildHallPortal

package com.company.assembleegameclient.objects{
    import ZE.GuildHallPortalPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;

    public class GuildHallPortal extends GameObject implements 18p {

        public function GuildHallPortal(_arg1:XML){
            super(_arg1);
            10J = true;
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new GuildHallPortalPanel(_arg1, this));
        }


    }
}//package com.company.assembleegameclient.objects

