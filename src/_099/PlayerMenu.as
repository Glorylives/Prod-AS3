// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//099.PlayerMenu

package _099{
import _AO._du;

import com.company.assembleegameclient.game.nx;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.ui

import mx.controls.Menu;
    import com.company.util.AssetLibrary;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.util.GuildUtil;
    import flash.events.Event;
    import _04_._1JZ;

    public class PlayerMenu extends Menu {

        public var gs_:nx;
        public var _09T:String;
        public var player_:Player;

        public function PlayerMenu(){
            super(0x363636, 0xFFFFFF);
        }

        public function Us(_arg1:nx, _arg2:String, _arg3:Boolean=false, _arg4:Boolean=false):void{
            var _local5:_1Nr;
            this.gs_ = _arg1;
            this._09T = _arg2;
            this.player_ = null;
            this._1lj = (this._1lj - 25);
            _local5 = new _1Nr(AssetLibrary._1JR("lofiInterfaceBig", 21), 0xFFFFFF, _du._12S);
            _local5.addEventListener(MouseEvent.CLICK, this._0hn);
            _6h(_local5);
            _local5 = new _1Nr(AssetLibrary._1JR("lotfInterfaceBig", 10), 0xFFFFFF, _du._1gm);
            _local5.addEventListener(MouseEvent.CLICK, this._12l);
            _6h(_local5);
            if (_arg3)
            {
                _local5 = new _1Nr(AssetLibrary._1JR("lofiInterfaceBig", 21), 0xFFFFFF, _du._VS);
                _local5.addEventListener(MouseEvent.CLICK, this.mg);
                _6h(_local5);
            }
            if (_arg4)
            {
                _local5 = new _1Nr(AssetLibrary._1JR("lofiInterfaceBig", 7), 0xFFFFFF, _du._1wU);
                _local5.addEventListener(MouseEvent.CLICK, this._04A);
                _6h(_local5);
            }
        }

        public function init(_arg1:nx, _arg2:Player):void{
            var _local3:_1Nr;
            this.gs_ = _arg1;
            this._09T = _arg2.name_;
            this.player_ = _arg2;
            this._0Pr = new _0S7(0xB3B3B3, true, this.player_, true);
            this._1lj = (this._1lj + 7);
            addChild(this._0Pr);
            if (Player.QH)
            {
                _local3 = new _1Nr(AssetLibrary._1JR("lofiInterfaceBig", 10), 0xFFFFFF, _du._5a);
                _local3.addEventListener(MouseEvent.CLICK, this._0ii);
                _6h(_local3);
                _local3 = new _1Nr(AssetLibrary._1JR("lofiInterfaceBig", 4), 0xFFFFFF, _du._0XY);
                _local3.addEventListener(MouseEvent.CLICK, this._1wD);
                _6h(_local3);
                _local3 = new _1Nr(AssetLibrary._1JR("lofiInterfaceBig", 3), 0xFFFFFF, _du._0V1);
                _local3.addEventListener(MouseEvent.CLICK, this._09I);
                _6h(_local3);
            }
            if (((this.gs_.map._20B()) && (this.player_._0dw(this.player_))))
            {
                _local3 = new TeleportMenuOption(this.gs_.map.player_);
                _local3.addEventListener(MouseEvent.CLICK, this._1nt);
                _6h(_local3);
            }
            if ((((this.gs_.map.player_.guildRank_ >= GuildUtil.d8)) && ((((_arg2.guildName_ == null)) || ((_arg2.guildName_.length == 0))))))
            {
                _local3 = new _1Nr(AssetLibrary._1JR("lofiInterfaceBig", 10), 0xFFFFFF, _du._05c);
                _local3.addEventListener(MouseEvent.CLICK, this.xl);
                _6h(_local3);
            }
            if (!this.player_.starred_)
            {
                _local3 = new _1Nr(AssetLibrary._1JR("lofiInterface2", 5), 0xFFFFFF, _du.bN);
                _local3.addEventListener(MouseEvent.CLICK, this._0Q2);
                _6h(_local3);
            } else
            {
                _local3 = new _1Nr(AssetLibrary._1JR("lofiInterface2", 6), 0xFFFFFF, _du.0z9);
                _local3.addEventListener(MouseEvent.CLICK, this.gQ);
                6h(_local3);
            }
            _local3 = new 1Nr(AssetLibrary.1JR("lofiInterfaceBig", 7), 0xFFFFFF, _du.1wU);
            _local3.addEventListener(MouseEvent.CLICK, this.07m);
            _6h(_local3);
            _local3 = new 1Nr(AssetLibrary.1JR("lofiInterfaceBig", 21), 0xFFFFFF, _du.12S);
            _local3.addEventListener(MouseEvent.CLICK, this.0hn);
            6h(_local3);
            if (this.player_.0kh)
            {
                _local3 = new 1Nr(AssetLibrary.1JR("lofiInterfaceBig", 21), 0xFFFFFF, _du.VS);
                _local3.addEventListener(MouseEvent.CLICK, this.mg);
                6h(_local3);
            }
            if (!this.player_.0xp)
            {
                _local3 = new 1Nr(AssetLibrary.1JR("lofiInterfaceBig", 8), 0xFFFFFF, du.1oU);
                _local3.addEventListener(MouseEvent.CLICK, this.0HJ);
                6h(_local3);
            } else
            {
                _local3 = new 1Nr(AssetLibrary.1JR("lofiInterfaceBig", 9), 0xFFFFFF, du.U7);
                _local3.addEventListener(MouseEvent.CLICK, this.1LK);
                6h(_local3);
            }
            _local3 = new 1Nr(AssetLibrary.1JR("lofiInterfaceBig", 18), 0xFFFFFF, "Add as Friend");
            _local3.addEventListener(MouseEvent.CLICK, this.12l);
            6h(_local3);
        }

        private function 0ii(_arg1:Event):void{
            this.gs_.gsc_.playerText(("/kick " + this.player_.name_));
            remove();
        }

        private function 1wD(_arg1:Event):void{
            this.gs_.gsc_.playerText(("/mute " + this.player_.name_));
            remove();
        }

        private function 09I(_arg1:Event):void{
            this.gs_.gsc_.playerText(("/unmute " + this.player_.name_));
            remove();
        }

        private function 0hn(_arg1:Event):void{
            var _local2:0hf = _1JZ.0JF().getInstance(0hf);
            _local2.dispatch(true, (("/tell " + this.09T) + " "));
            remove();
        }

        private function 12l(_arg1:Event):void{
            var _local2:0B2 = _1JZ.0JF().getInstance(0B2);
            _local2.dispatch(new O6(21H.o-, this.09T));
            remove();
        }

        private function 04A(_arg1:Event):void{
            var _local2:0hf = _1JZ.0JF().getInstance(0hf);
            _local2.dispatch(true, ("/trade " + this.09T));
            remove();
        }

        private function mg(_arg1:Event):void{
            var _local2:0hf = _1JZ.0JF().getInstance(0hf);
            _local2.dispatch(true, "/g ");
            remove();
        }

        private function 1nt(_arg1:Event):void{
            this.gs_.map.player_.1oB(this.player_);
            remove();
        }

        private function xl(_arg1:Event):void{
            this.gs_.gsc_.guildInvite(this.09T);
            remove();
        }

        private function 0Q2(_arg1:Event):void{
            this.gs_.map.party_.005(this.player_);
            remove();
        }

        private function gQ(_arg1:Event):void{
            this.gs_.map.party_.0nE(this.player_);
            remove();
        }

        private function 07m(_arg1:Event):void{
            this.gs_.gsc_.requestTrade(this.09T);
            remove();
        }

        private function 0HJ(_arg1:Event):void{
            this.gs_.map.party_.5i(this.player_);
            remove();
        }

        private function 1LK(_arg1:Event):void{
            this.gs_.map.party_.0rD(this.player_);
            remove();
        }


    }
}//package 099

