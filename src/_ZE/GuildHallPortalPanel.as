// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZE.GuildHallPortalPanel

package _ZE{
    import 1PB.cO;
    import com.company.assembleegameclient.util.0sg;
    import com.company.assembleegameclient.objects.GuildHallPortal;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1nN;
    import com.company.assembleegameclient.objects.Player;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import com.company.assembleegameclient.game.nx;
    import flash.events.KeyboardEvent;
    import com.company.assembleegameclient.parameters.Parameters;

    public class GuildHallPortalPanel extends Panel {

        private const 1he:cO = new cO();

        public var Wy:0sg;
        private var 0b2:GuildHallPortal;
        private var nameText_:_13j;
        private var do:1nN;
        private var N-:_13j;

        public function GuildHallPortalPanel(_arg1:nx, _arg2:GuildHallPortal){
            var _local3:Player;
            super(_arg1);
            this.Wy = new 0sg(this);
            this.0b2 = _arg2;
            if ((((gs_.map == null)) || ((gs_.map.player_ == null))))
            {
                return;
            }
            _local3 = gs_.map.player_;
            this.nameText_ = new _13j().setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
            this.nameText_.setStringBuilder(new 1cA().setParams(du.8q).setPrefix('<p align="center">').setPostfix("</p>"));
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
            this.nameText_.y = 6;
            addChild(this.nameText_);
            if (((!((_local3.guildName_ == null))) && ((_local3.guildName_.length > 0))))
            {
                this.do = new 1nN(16, du.1C4);
                this.do.addEventListener(MouseEvent.CLICK, this.1p9);
                addChild(this.do);
                this.1he.push(this.do.textChanged);
                addEventListener(Event.ADDED_TO_STAGE, this.zp);
            } else
            {
                this.N- = new _13j().setSize(18).setColor(0xFF0000).setTextWidth(WIDTH).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true).setBold(true);
                this.N-.setStringBuilder(new 1cA().setParams(du.WD).setPrefix('<p align="center">').setPostfix("</p>"));
                this.N-.filters = [new DropShadowFilter(0, 0, 0)];
                this.1he.push(this.N-.textChanged);
                addChild(this.N-);
            }
            this.1he.complete.addOnce(this.alignUI);
        }

        private function alignUI():void{
            if (this.N-)
            {
                this.N-.y = ((HEIGHT - this.N-.height) - 12);
            }
            if (this.do)
            {
                this.do.x = ((WIDTH / 2) - (this.do.width / 2));
                this.do.y = ((HEIGHT - this.do.height) - 4);
            }
        }

        private function zp(_arg1:Event):void{
            this.Wy.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            addEventListener(Event.REMOVED_FROM_STAGE, this.1io);
        }

        private function 1io(_arg1:Event):void{
            this.Wy.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function 1p9(_arg1:MouseEvent):void{
            this.enterPortal();
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null))))
            {
                this.enterPortal();
            }
        }

        private function enterPortal():void{
            gs_.gsc_.usePortal(this.0b2.objectId_);
        }


    }
}//package _ZE

