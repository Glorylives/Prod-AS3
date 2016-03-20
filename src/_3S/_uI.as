// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//3S.uI

package _3S{
import _1aA._Lz;

import _AO._du;

import _F7._04M;

import flash.display.Sprite;
    import com.company.assembleegameclient.game.nx;
    import com.company.rotmg.graphics.ScreenGraphic;
    import flash.text.TextFieldAutoSize;
    import _CU._13j;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import com.company.assembleegameclient.objects.Player;
    //import F7._04M;
    import _1t6.Dialog;
    import flash.events.KeyboardEvent;

    public class _uI extends Sprite {

        private var gs_:nx;
        private var container:Sprite;
        private var _1cF:GuildPlayerList;
        private var _25z:_Lz;

        public function _uI(_arg1:nx){
            this.gs_ = _arg1;
            graphics.clear();
            graphics.beginFill(0x2B2B2B, 0.8);
            graphics.drawRect(0, 0, 800, 600);
            graphics.endFill();
            addChild((this.container = new Sprite()));
            this._1hh();
            addChild(new ScreenGraphic());
            this._25z = new _Lz(_du._16g, 36, false);
            this._25z.setAutoSize(TextFieldAutoSize.CENTER);
            this._25z.setVerticalAlign(_13j.MIDDLE);
            this._25z.addEventListener(MouseEvent.CLICK, this._13J);
            addChild(this._25z);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function _1hh():void{
            if (((this._1cF) && (this._1cF.parent)))
            {
                this.container.removeChild(this._1cF);
            }
            var _local1:Player = this.gs_.map.player_;
            this._1cF = new GuildPlayerList(50, 0, (((_local1 == null)) ? "" : _local1.name_), _local1.guildRank_);
            this._1cF.addEventListener(_01E.SET_RANK, this._0vc);
            this._1cF.addEventListener(_01E.REMOVE_MEMBER, this.Cw);
            this.container.addChild(this._1cF);
        }

        private function YX():void{
            this._1cF.removeEventListener(_01E.SET_RANK, this._0vc);
            this._1cF.removeEventListener(_01E.REMOVE_MEMBER, this.Cw);
            this.container.removeChild(this._1cF);
            this._1cF = null;
        }

        private function _0vc(_arg1:_01E):void{
            this.YX();
            this.gs_.addEventListener(_04M._1W2, this._0Uw);
            this.gs_.gsc_.changeGuildRank(_arg1.name_, _arg1.qw);
        }

        private function _0Uw(_arg1:_04M):void{
            this.gs_.removeEventListener(_04M._1W2, this._0Uw);
            if (!_arg1.success_)
            {
                this._6y(_arg1._1pm);
            } else
            {
                this._1hh();
            }
        }

        private function Cw(_arg1:_01E):void{
            this.YX();
            this.gs_.addEventListener(_04M._1W2, this._0ls);
            this.gs_.gsc_.guildRemove(_arg1.name_);
        }

        private function _0ls(_arg1:_04M):void{
            this.gs_.removeEventListener(_04M._1W2, this._0ls);
            if (!_arg1.success_)
            {
                this._6y(_arg1._1pm);
            } else
            {
                this._1hh();
            }
        }

        private function _6y(_arg1:String):void{
            var _local2:Dialog = new Dialog(_du._0Yh, _arg1, _du._1eQ, null, "/guildError");
            _local2.addEventListener(Dialog.LEFT_BUTTON, this._0kM);
            stage.addChild(_local2);
        }

        private function _0kM(_arg1:Event):void{
            var _local2:Dialog = (_arg1.currentTarget as Dialog);
            stage.removeChild(_local2);
            this._1hh();
        }

        private function _13J(_arg1:MouseEvent):void{
            this.close();
        }

        private function onAddedToStage(_arg1:Event):void{
            this._25z.x = (stage.stageWidth / 2);
            this._25z.y = 550;
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this._1lw, false, 1);
            stage.addEventListener(KeyboardEvent.KEY_UP, this._0M9, false, 1);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._1lw, false);
            stage.removeEventListener(KeyboardEvent.KEY_UP, this._0M9, false);
        }

        private function _1lw(_arg1:KeyboardEvent):void{
            _arg1.stopImmediatePropagation();
        }

        private function _0M9(_arg1:KeyboardEvent):void{
            _arg1.stopImmediatePropagation();
        }

        private function close():void{
            stage.focus = null;
            parent.removeChild(this);
        }


    }
}//package 3S

