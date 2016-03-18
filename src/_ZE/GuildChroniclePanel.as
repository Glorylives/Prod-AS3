// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZE.GuildChroniclePanel

package _ZE{
    import AO.du;
    import com.company.assembleegameclient.game.GameSprite;
    import 3S.uI;
    import flash.events.MouseEvent;

    public class GuildChroniclePanel extends 1jX {

        public function GuildChroniclePanel(_arg1:GameSprite){
            super(_arg1, du.qM, du.1vP);
        }

        override protected function onButtonClick(_arg1:MouseEvent):void{
            gs_.mui_.clearInput();
            gs_.addChild(new uI(gs_));
        }


    }
}//package _ZE

