// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//ZE.ArenaPortalPanel

package ZE{
    import _Jy._1HZ;
    import com.company.assembleegameclient.objects.ArenaPortal;
    import flash.display.Sprite;
    import _CU.sb;
    import OZ.08g;
    import _CU._13j;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.util.Currency;
    import flash.events.MouseEvent;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.game.nx;

    public class ArenaPortalPanel extends Panel {

        public const y6:_1HZ = new _1HZ(int);

        private var 0b2:ArenaPortal;
        private var NT:Sprite;
        private var nameText_:sb;
        private var 0Hi:08g;
        private var bx:08g;
        private var xe:Sprite;
        private var wo:_13j;
        private var 0i8:sb;

        public function ArenaPortalPanel(_arg1:nx, _arg2:ArenaPortal){
            this.NT = new Sprite();
            this.xe = new Sprite();
            super(_arg1);
            this.0b2 = _arg2;
            addChild(this.NT);
            addChild(this.xe);
            if ((((gs_.map == null)) || ((gs_.map.player_ == null))))
            {
                return;
            };
            var _local3:Player = gs_.map.player_;
            this.nameText_ = this.Kr();
            this.NT.addChild(this.nameText_);
            this.0Hi = new 08g("", 20, 50, Currency.1Jg);
            this.0Hi.addEventListener(MouseEvent.CLICK, this.sY);
            this.NT.addChild(this.0Hi);
            this.bx = new 08g("", 20, 500, Currency.FAME);
            if ((_local3.1iQ < 500))
            {
                this.bx.setEnabled(false);
            } else
            {
                this.bx.addEventListener(MouseEvent.CLICK, this.1XX);
            };
            this.NT.addChild(this.bx);
            this.bx.fh.addOnce(this.alignUI);
            this.0i8 = new sb();
            this.0i8.setSize(18).setColor(0xFF0000).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
            this.0i8.setStringBuilder(new 1cA().setParams(du.0o1).setPrefix('<p align="center">').setPostfix("</p>"));
            this.0i8.filters = [new DropShadowFilter(0, 0, 0)];
            this.0i8.y = (HEIGHT - 45);
            this.xe.addChild(this.0i8);
            this.wo = this.Kr();
            this.xe.addChild(this.wo);
        }

        private function alignUI():void{
            this.0Hi.x = ((WIDTH * 0.25) - (this.0Hi.width / 2));
            this.0Hi.y = ((HEIGHT - this.0Hi.height) - 4);
            this.bx.x = ((WIDTH * 0.75) - (this.bx.width / 2));
            this.bx.y = ((HEIGHT - this.bx.height) - 4);
        }

        private function sY(_arg1:MouseEvent):void{
            this.y6.dispatch(Currency.1Jg);
        }

        private function 1XX(_arg1:MouseEvent):void{
            this.y6.dispatch(Currency.FAME);
        }

        override public function draw():void{
            this.NT.visible = this.0b2.TW;
            this.xe.visible = !(this.0b2.TW);
        }

        private function Kr():sb{
            var _local1:sb;
            _local1 = new sb();
            _local1.setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
            _local1.setStringBuilder(new 1cA().setParams(du.hr).setPrefix('<p align="center">').setPostfix("</p>"));
            _local1.filters = [new DropShadowFilter(0, 0, 0)];
            _local1.y = 6;
            return (_local1);
        }


    }
}//package ZE

