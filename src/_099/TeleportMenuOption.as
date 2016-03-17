// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//099.TeleportMenuOption

package 099{
    import flash.geom.ColorTransform;
    import com.company.assembleegameclient.objects.Player;
    import _CU._13j;
    import flash.display.Shape;
    import com.company.util.AssetLibrary;
    import AO.du;
    import 1n4.1cA;
    import flash.events.Event;
    import flash.events.MouseEvent;

    public class TeleportMenuOption extends 1Nr {

        private static const 0mV:ColorTransform = new ColorTransform((84 / 0xFF), (84 / 0xFF), (84 / 0xFF));

        private var player_:Player;
        private var 01-:Boolean = false;
        private var 1kp:_13j;
        private var while:int;
        private var 50:Shape;

        public function TeleportMenuOption(_arg1:Player){
            this.50 = new Shape();
            super(AssetLibrary.1JR("lofiInterface2", 3), 0xFFFFFF, du.0gm);
            this.player_ = _arg1;
            this.1kp = new _13j().setSize(18).setColor(0xFFFFFF);
            this.1kp.setBold(true);
            this.1kp.setStringBuilder(new 1cA().setParams(du.0gm));
            this.1kp.x = (this.50.x = text_.x);
            this.1kp.y = (this.50.y = text_.y);
            this.1kp.textChanged.add(this.onTextChanged);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onTextChanged():void{
            this.while = this.1kp.textField.width;
            this.50.graphics.beginFill(0xFF00FF);
            this.50.graphics.drawRect(0, 0, this.1kp.textField.width, this.1kp.textField.height);
        }

        private function onAddedToStage(_arg1:Event):void{
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onEnterFrame(_arg1:Event):void{
            var _local3:Number;
            var _local2:int = this.player_.1pO();
            if (_local2 > 0)
            {
                if (!contains(this.1kp))
                {
                    addChild(this.1kp);
                    addChild(this.50);
                    this.1kp.mask = this.50;
                };
                _local3 = (this.while * (1 - (_local2 / Player.b9)));
                this.50.width = _local3;
                0bB(0mV);
            } else
            {
                if (contains(this.1kp))
                {
                    removeChild(this.1kp);
                };
                if (this.01-)
                {
                    0bB(0Zb);
                } else
                {
                    0bB(null);
                };
            };
        }

        override protected function onMouseOver(_arg1:MouseEvent):void{
            this.01- = true;
        }

        override protected function onMouseOut(_arg1:MouseEvent):void{
            this.01- = false;
        }


    }
}//package 099

