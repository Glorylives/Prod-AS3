// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//sC.1Yw

package sC{
    import 1uF.1Mf;
    import _ZE.GuildRegisterPanel;
    import 1qg.0io;
    import 1qg.11S;
    import 0xo.lZ;
    import 0hd.CreateGuildFrame;
    import com.company.assembleegameclient.game.GameSprite;
    import com.company.assembleegameclient.objects.Player;
    import 1t6.Dialog;
    import AO.du;
    import flash.events.Event;

    public class 1Yw extends 1Mf {

        [Inject]
        public var view:GuildRegisterPanel;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var KW:11S;
        [Inject]
        public var 11u:lZ;


        override public function initialize():void{
            this.view.UL.add(this.k7);
            this.view.renounce.add(this.1AL);
        }

        override public function destroy():void{
            this.view.UL.remove(this.k7);
            this.view.renounce.remove(this.1AL);
        }

        private function k7():void{
            this.0n2.dispatch(new CreateGuildFrame(this.11u.ja));
        }

        public function 1AL():void{
            var _local1:GameSprite = this.11u.ja;
            if ((((_local1.map == null)) || ((_local1.map.player_ == null))))
            {
                return;
            };
            var _local2:Player = _local1.map.player_;
            var _local3:Dialog = new Dialog(du.0l7, du.DL, du.20z, du.1jq, "/renounceGuild");
            _local3.12Z(du.DL, {guildName:_local2.guildName_});
            _local3.addEventListener(Dialog.LEFT_BUTTON, this.0oN);
            _local3.addEventListener(Dialog.RIGHT_BUTTON, this.onCancel);
            this.0n2.dispatch(_local3);
        }

        private function onCancel(_arg1:Event):void{
            this.KW.dispatch();
        }

        private function 0oN(_arg1:Event):void{
            var _local2:GameSprite = this.11u.ja;
            if ((((_local2.map == null)) || ((_local2.map.player_ == null))))
            {
                return;
            };
            var _local3:Player = _local2.map.player_;
            _local2.gsc_.guildRemove(_local3.name_);
            this.KW.dispatch();
        }


    }
}//package sC

