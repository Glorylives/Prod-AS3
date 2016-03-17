// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//ZE.CharacterChangerPanel

package ZE{
    import AO.du;
    import flash.events.Event;
    import com.company.assembleegameclient.game.GameSprite;
    import flash.events.MouseEvent;
    import flash.events.KeyboardEvent;
    import com.company.assembleegameclient.parameters.Parameters;

    public class CharacterChangerPanel extends 1jX {

        public function CharacterChangerPanel(_arg1:GameSprite){
            super(_arg1, du.wt, du.0IK);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        override protected function onButtonClick(_arg1:MouseEvent):void{
            gs_.closed.dispatch();
        }

        private function onAddedToStage(_arg1:Event):void{
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null))))
            {
                gs_.closed.dispatch();
            };
        }


    }
}//package ZE

