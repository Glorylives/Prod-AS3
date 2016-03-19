// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.PlayerToolTip

package 0qj{
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.ui.0S7;
    import com.company.assembleegameclient.ui.RankText;
    import com.company.assembleegameclient.ui.1sK;
    import com.company.assembleegameclient.ui.StatusBar;
    import _CU._13j;
    import h0.0Jr;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;

    public class PlayerToolTip extends 1ae {

        public var player_:Player;
        private var 0Pr:0S7;
        private var gZ:RankText;
        private var J9:1sK;
        private var 0Mt:StatusBar;
        private var uV:StatusBar;
        private var 1MV:_13j;
        private var 133:0Jr;

        public function PlayerToolTip(_arg1:Player){
            var _local2:int;
            super(0x363636, 0.5, 0xFFFFFF, 1);
            this.player_ = _arg1;
            this.0Pr = new 0S7(0xB3B3B3, true, this.player_);
            addChild(this.0Pr);
            _local2 = 34;
            this.gZ = new RankText(this.player_.numStars_, false, true);
            this.gZ.x = 6;
            this.gZ.y = _local2;
            addChild(this.gZ);
            _local2 = (_local2 + 30);
            if (((!((_arg1.guildName_ == null))) && (!((_arg1.guildName_ == "")))))
            {
                this.J9 = new 1sK(this.player_.guildName_, this.player_.guildRank_, 136);
                this.J9.x = 6;
                this.J9.y = (_local2 - 2);
                addChild(this.J9);
                _local2 = (_local2 + 30);
            }
            this.0Mt = new StatusBar(176, 16, 14693428, 0x545454, du.10h);
            this.0Mt.x = 6;
            this.0Mt.y = _local2;
            addChild(this.0Mt);
            _local2 = (_local2 + 24);
            this.uV = new StatusBar(176, 16, 6325472, 0x545454, du.0b-);
            this.uV.x = 6;
            this.uV.y = _local2;
            addChild(this.uV);
            _local2 = (_local2 + 24);
            this.133 = new 0Jr(null, this.player_.px, this.player_);
            this.133.x = 8;
            this.133.y = _local2;
            addChild(this.133);
            _local2 = (_local2 + 52);
            this.1MV = new _13j().setSize(12).setColor(0xB3B3B3);
            this.1MV.setAutoSize(TextFieldAutoSize.CENTER);
            this.1MV.setStringBuilder(new 1cA().setParams(du.1mD));
            this.1MV.filters = [new DropShadowFilter(0, 0, 0)];
            this.1MV.x = (width / 2);
            this.1MV.y = _local2;
            1he.push(this.1MV.textChanged);
            addChild(this.1MV);
        }

        override public function draw():void{
            this.0Mt.draw(this.player_.1VZ, this.player_.ba, this.player_.1j8, this.player_.1w7);
            this.uV.draw(this.player_.12a, this.player_.1nC, this.player_.24q, this.player_.0NB);
            this.133.setItems(this.player_.1Wz);
            this.gZ.draw(this.player_.numStars_);
            super.draw();
        }


    }
}//package 0qj

