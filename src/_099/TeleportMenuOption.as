// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//099.TeleportMenuOption

package _099{
import _AO._du;

import flash.geom.ColorTransform;
    import com.company.assembleegameclient.objects.Player;
    import _CU._13j;
    import flash.display.Shape;
    import com.company.util.AssetLibrary;
    import _1n4._1cA;
    import flash.events.Event;
    import flash.events.MouseEvent;

    public class TeleportMenuOption extends _1Nr {

        private static const _0mV:ColorTransform = new ColorTransform((84 / 0xFF), (84 / 0xFF), (84 / 0xFF));

        private var player_:Player;
        private var _01:Boolean = false;
        private var _1kp:_13j;
        private var _while:int;
        private var _50:Shape;

        public function TeleportMenuOption(_arg1:Player){
            this._50 = new Shape();
            super(AssetLibrary._1JR("lofiInterface2", 3), 0xFFFFFF, _du._0gm);
            this.player_ = _arg1;
            this._1kp = new _13j().setSize(18).setColor(0xFFFFFF);
            this._1kp.setBold(true);
            this._1kp.setStringBuilder(new _1cA().setParams(_du._0gm));
            this._1kp.x = (this._50.x = text_.x);
            this._1kp.y = (this._50.y = text_.y);
            this._1kp.textChanged.add(this.onTextChanged);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onTextChanged():void{
            this._while = this._1kp.textField.width;
            this._50.graphics.beginFill(0xFF00FF);
            this._50.graphics.drawRect(0, 0, this._1kp.textField.width, this._1kp.textField.height);
        }

        private function onAddedToStage(_arg1:Event):void{
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onEnterFrame(_arg1:Event):void{
            var _local3:Number;
            var _local2:int = this.player_._1pO();
            if (_local2 > 0)
            {
                if (!contains(this._1kp))
                {
                    addChild(this._1kp);
                    addChild(this._50);
                    this._1kp.mask = this._50;
                };
                _local3 = (this._while * (1 - (_local2 / Player.b9)));
                this._50.width = _local3;
                _0bB(_0mV);
            } else
            {
                if (contains(this._1kp))
                {
                    removeChild(this._1kp);
                };
                if (this._01)
                {
                    _0bB(_0Zb);
                } else
                {
                    _0bB(null);
                };
            };
        }

        override protected function onMouseOver(_arg1:MouseEvent):void{
            this._01 = true;
        }

        override protected function onMouseOut(_arg1:MouseEvent):void{
            this._01 = false;
        }


    }
}//package 099

