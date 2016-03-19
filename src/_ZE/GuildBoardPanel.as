// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZE.GuildBoardPanel

package _ZE{
    import AO.du;
    import com.company.assembleegameclient.game.GameSprite;
    import com.company.assembleegameclient.objects.Player;
    import Wc.uZ;
    import com.company.assembleegameclient.util.GuildUtil;
    import flash.events.MouseEvent;

    public class GuildBoardPanel extends 1jX {

        public function GuildBoardPanel(_arg1:GameSprite){
            super(_arg1, du.vI, du.1vP);
        }

        override protected function onButtonClick(_arg1:MouseEvent):void{
            var _local2:Player = gs_.map.player_;
            if (_local2 == null)
            {
                return;
            }
            gs_.addChild(new uZ((_local2.guildRank_ >= GuildUtil.d8)));
        }


    }
}//package _ZE

