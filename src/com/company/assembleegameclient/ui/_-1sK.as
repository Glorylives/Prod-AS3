// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.1sK

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import _CU._13j;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import com.company.util.0IB;
    import com.company.assembleegameclient.util.GuildUtil;
    import 1n4.1WS;

    public class 1sK extends Sprite {

        private var name_:String;
        private var qw:int;
        private var e4:Bitmap;
        private var guildName_:_13j;

        public function 1sK(_arg1:String, _arg2:int, _arg3:int=0){
            this.e4 = new Bitmap(null);
            this.e4.y = -8;
            this.e4.x = -8;
            var _local4:int = (((_arg3 == 0)) ? 0 : (_arg3 - (this.e4.width - 16)));
            this.guildName_ = new _13j().setSize(16).setColor(0xFFFFFF).setTextWidth(_local4);
            this.guildName_.setAutoSize(TextFieldAutoSize.LEFT);
            this.guildName_.filters = [new DropShadowFilter(0, 0, 0)];
            this.guildName_.x = 24;
            this.guildName_.y = 2;
            this.draw(_arg1, _arg2);
        }

        public function draw(_arg1:String, _arg2:int):void{
            if ((((this.name_ == _arg1)) && ((_arg2 == _arg2))))
            {
                return;
            };
            this.name_ = _arg1;
            this.qw = _arg2;
            if ((((this.name_ == null)) || ((this.name_ == ""))))
            {
                0IB.13h(this, this.e4);
                0IB.13h(this, this.guildName_);
            } else
            {
                this.e4.bitmapData = GuildUtil.CW(this.qw, 20);
                0IB.0pa(this, this.e4);
                this.guildName_.setStringBuilder(new 1WS(this.name_));
                0IB.0pa(this, this.guildName_);
            };
        }


    }
}//package com.company.assembleegameclient.ui

