// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZE.GuildChroniclePanel

package _ZE{

import _AO._du;

import com.company.assembleegameclient.game.GameSprite;
    import _3S._uI;
    import flash.events.MouseEvent;

    public class GuildChroniclePanel extends _1jX {

        public function GuildChroniclePanel(_arg1:GameSprite){
            super(_arg1, _du._qM, _du._1vP);
        }

        override protected function onButtonClick(_arg1:MouseEvent):void{
            gs_.mui_.clearInput();
            gs_.addChild(new _uI(gs_));
        }


    }
}//package _ZE

