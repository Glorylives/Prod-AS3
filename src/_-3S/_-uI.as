// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//3S.uI

package 3S{
    import flash.display.Sprite;
    import com.company.assembleegameclient.game.nx;
    import _1aA.Lz;
    import com.company.rotmg.graphics.ScreenGraphic;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import _CU._13j;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import com.company.assembleegameclient.objects.Player;
    import F7.04M;
    import 1t6.Dialog;
    import flash.events.KeyboardEvent;

    public class uI extends Sprite {

        private var gs_:nx;
        private var container:Sprite;
        private var 1cF:GuildPlayerList;
        private var 25z:Lz;

        public function uI(_arg1:nx){
            this.gs_ = _arg1;
            graphics.clear();
            graphics.beginFill(0x2B2B2B, 0.8);
            graphics.drawRect(0, 0, 800, 600);
            graphics.endFill();
            addChild((this.container = new Sprite()));
            this.1hh();
            addChild(new ScreenGraphic());
            this.25z = new Lz(du.16g, 36, false);
            this.25z.setAutoSize(TextFieldAutoSize.CENTER);
            this.25z.setVerticalAlign(_13j.MIDDLE);
            this.25z.addEventListener(MouseEvent.CLICK, this.13J);
            addChild(this.25z);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function 1hh():void{
            if (((this.1cF) && (this.1cF.parent)))
            {
                this.container.removeChild(this.1cF);
            };
            var _local1:Player = this.gs_.map.player_;
            this.1cF = new GuildPlayerList(50, 0, (((_local1 == null)) ? "" : _local1.name_), _local1.guildRank_);
            this.1cF.addEventListener(01E.SET_RANK, this.0vc);
            this.1cF.addEventListener(01E.REMOVE_MEMBER, this.Cw);
            this.container.addChild(this.1cF);
        }

        private function YX():void{
            this.1cF.removeEventListener(01E.SET_RANK, this.0vc);
            this.1cF.removeEventListener(01E.REMOVE_MEMBER, this.Cw);
            this.container.removeChild(this.1cF);
            this.1cF = null;
        }

        private function 0vc(_arg1:01E):void{
            this.YX();
            this.gs_.addEventListener(04M.1W2, this.0Uw);
            this.gs_.gsc_.changeGuildRank(_arg1.name_, _arg1.qw);
        }

        private function 0Uw(_arg1:04M):void{
            this.gs_.removeEventListener(04M.1W2, this.0Uw);
            if (!_arg1.success_)
            {
                this.6y(_arg1.1pm);
            } else
            {
                this.1hh();
            };
        }

        private function Cw(_arg1:01E):void{
            this.YX();
            this.gs_.addEventListener(04M.1W2, this.0ls);
            this.gs_.gsc_.guildRemove(_arg1.name_);
        }

        private function 0ls(_arg1:04M):void{
            this.gs_.removeEventListener(04M.1W2, this.0ls);
            if (!_arg1.success_)
            {
                this.6y(_arg1.1pm);
            } else
            {
                this.1hh();
            };
        }

        private function 6y(_arg1:String):void{
            var _local2:Dialog = new Dialog(du.0Yh, _arg1, du.1eQ, null, "/guildError");
            _local2.addEventListener(Dialog.LEFT_BUTTON, this.0kM);
            stage.addChild(_local2);
        }

        private function 0kM(_arg1:Event):void{
            var _local2:Dialog = (_arg1.currentTarget as Dialog);
            stage.removeChild(_local2);
            this.1hh();
        }

        private function 13J(_arg1:MouseEvent):void{
            this.close();
        }

        private function onAddedToStage(_arg1:Event):void{
            this.25z.x = (stage.stageWidth / 2);
            this.25z.y = 550;
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw, false, 1);
            stage.addEventListener(KeyboardEvent.KEY_UP, this.0M9, false, 1);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw, false);
            stage.removeEventListener(KeyboardEvent.KEY_UP, this.0M9, false);
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            _arg1.stopImmediatePropagation();
        }

        private function 0M9(_arg1:KeyboardEvent):void{
            _arg1.stopImmediatePropagation();
        }

        private function close():void{
            stage.focus = null;
            parent.removeChild(this);
        }


    }
}//package 3S

