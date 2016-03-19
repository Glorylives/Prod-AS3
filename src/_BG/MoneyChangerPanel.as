// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.MoneyChangerPanel

package _BG{
import _AO._du;
    import _Jy._1HZ;
    import flash.events.Event;
    import com.company.assembleegameclient.game.GameSprite;
    import flash.events.KeyboardEvent;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import _ZE.*;

    public class MoneyChangerPanel extends _1jX {

        public var _1DL:_1HZ;

        public function MoneyChangerPanel(_arg1:GameSprite){
            super(_arg1, _du._A, _du._1DW);
            this._1DL = new _1HZ();
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onAddedToStage(_arg1:Event):void{
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this._1lw);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._1lw);
        }

        override protected function onButtonClick(_arg1:MouseEvent):void{
            this._1DL.dispatch();
        }

        private function _1lw(_arg1:KeyboardEvent):void{
            if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null))))
            {
                this._1DL.dispatch();
            }
        }


    }
}//package BG

