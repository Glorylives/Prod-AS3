// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.MoneyChangerPanel

package BG{
    import ZE.1jX;
    import _Jy._1HZ;
    import AO.du;
    import flash.events.Event;
    import com.company.assembleegameclient.game.GameSprite;
    import flash.events.KeyboardEvent;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import ZE.*;

    public class MoneyChangerPanel extends 1jX {

        public var 1DL:_1HZ;

        public function MoneyChangerPanel(_arg1:GameSprite){
            super(_arg1, du.A-, du.1DW);
            this.1DL = new _1HZ();
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onAddedToStage(_arg1:Event):void{
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        override protected function onButtonClick(_arg1:MouseEvent):void{
            this.1DL.dispatch();
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null))))
            {
                this.1DL.dispatch();
            };
        }


    }
}//package BG

