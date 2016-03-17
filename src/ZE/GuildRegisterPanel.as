// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//ZE.GuildRegisterPanel

package ZE{
    import _Jy._1HZ;
    import 1PB.cO;
    import _CU._13j;
    import flash.display.Sprite;
    import com.company.assembleegameclient.objects.Player;
    import OZ.08g;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.util.GuildUtil;
    import 1n4.1cA;
    import AO.du;
    import com.company.assembleegameclient.ui.1nN;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.util.Currency;
    import com.company.assembleegameclient.game.GameSprite;

    public class GuildRegisterPanel extends Panel {

        public const UL:_1HZ = new _1HZ();
        public const 1he:cO = new cO();
        public const renounce:_1HZ = new _1HZ();

        private var X:_13j;
        private var o3:Sprite;

        public function GuildRegisterPanel(_arg1:GameSprite){
            var _local2:Player;
            var _local3:String;
            var _local4:08g;
            super(_arg1);
            if ((((gs_.map == null)) || ((gs_.map.player_ == null))))
            {
                return;
            };
            _local2 = gs_.map.player_;
            this.X = new _13j().setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true);
            this.X.filters = [new DropShadowFilter(0, 0, 0)];
            if (((!((_local2.guildName_ == null))) && ((_local2.guildName_.length > 0))))
            {
                _local3 = GuildUtil.0Wv(_local2.guildRank_);
                this.X.setStringBuilder(new 1cA().setParams(du.1yk, {
                    rank:_local3,
                    guildName:_local2.guildName_
                }).setPrefix('<p align="center">').setPostfix("</p>"));
                this.X.y = 0;
                addChild(this.X);
                this.o3 = new 1nN(16, du.MC);
                this.o3.addEventListener(MouseEvent.CLICK, this.1AL);
                this.1he.push(1nN(this.o3).textChanged);
                addChild(this.o3);
            } else
            {
                this.X.setStringBuilder(new 1cA().setParams(du.0eo).setPrefix('<p align="center">').setPostfix("</p>"));
                this.X.y = 0;
                addChild(this.X);
                _local4 = new 08g(du.tb, 16, Parameters.0QE, Currency.FAME);
                _local4.addEventListener(MouseEvent.CLICK, this.1BO);
                this.1he.push(_local4.fh);
                addChild(_local4);
                this.o3 = _local4;
            };
            this.1he.complete.addOnce(this.alignUI);
        }

        private function 1AL(_arg1:MouseEvent):void{
            this.renounce.dispatch();
        }

        private function alignUI():void{
            this.o3.x = ((WIDTH / 2) - (this.o3.width / 2));
            this.o3.y = (((this.o3 is 08g)) ? ((HEIGHT - (this.o3.height / 2)) - 31) : ((HEIGHT - this.o3.height) - 4));
        }

        public function 1BO(_arg1:MouseEvent):void{
            visible = false;
            this.UL.dispatch();
        }


    }
}//package ZE

