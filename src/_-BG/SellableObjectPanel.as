// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.SellableObjectPanel

package BG{
    import ZE.Panel;
    import 1r-.1L6;
    import _Jy._1HZ;
    import com.company.assembleegameclient.objects.SellableObject;
    import _CU._13j;
    import OZ.08g;
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.ui.ConfirmBuyModal;
    import 1n4.1cA;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.util.Currency;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import com.company.assembleegameclient.game.GameSprite;
    import com.company.assembleegameclient.ui.RankText;
    import com.company.assembleegameclient.util.GuildUtil;
    import flash.events.KeyboardEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import _04_._1JZ;
    import aq.Account;
    import com.company.assembleegameclient.objects.Merchant;
    import com.company.assembleegameclient.objects.Player;
    import 1Bg.1hy;
    import 1Bg.of;
    import ZE.*;
    import 1r-.*;

    public class SellableObjectPanel extends Panel implements u- {

        private const 126:int = 17;

        public var 1-P:1L6;
        public var rQ:_1HZ;
        private var 0b2:SellableObject;
        private var nameText_:_13j;
        private var 0JA:08g;
        private var 1Zi:Sprite;
        private var 7P:_13j;
        private var e4:Sprite;
        private var bitmap_:Bitmap;
        private var MK:ConfirmBuyModal;
        private var 09C:int;

        public function SellableObjectPanel(_arg1:GameSprite, _arg2:SellableObject){
            this.1-P = new 1L6();
            this.rQ = new _1HZ(SellableObject);
            super(_arg1);
            this.nameText_ = new _13j().setSize(16).setColor(0xFFFFFF).setTextWidth((WIDTH - 44));
            this.nameText_.setBold(true);
            this.nameText_.setStringBuilder(new 1cA().setParams(du.0JY));
            this.nameText_.setWordWrap(true);
            this.nameText_.setMultiLine(true);
            this.nameText_.setAutoSize(TextFieldAutoSize.CENTER);
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.nameText_);
            this.e4 = new Sprite();
            addChild(this.e4);
            this.bitmap_ = new Bitmap(null);
            this.e4.addChild(this.bitmap_);
            this.0JA = new 08g(du.X1, 16, 0, Currency.INVALID);
            this.0JA.addEventListener(MouseEvent.CLICK, this.sv);
            addChild(this.0JA);
            this.07C(_arg2);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.1-P.1pS(this);
            this.1-P.tooltip = _arg2.getTooltip();
        }

        private static function 1TL(_arg1:int):Sprite{
            var requiredText:_13j;
            var rankText:Sprite;
            var rankReq:int = _arg1;
            var rankReqText:Sprite = new Sprite();
            requiredText = new _13j().setSize(16).setColor(0xFFFFFF).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
            requiredText.filters = [new DropShadowFilter(0, 0, 0)];
            rankReqText.addChild(requiredText);
            rankText = new RankText(rankReq, false, false);
            rankReqText.addChild(rankText);
            requiredText.textChanged.addOnce(function ():void{
                rankText.x = ((requiredText.width * 0.5) + 4);
                rankText.y = (-(rankText.height) / 2);
            });
            requiredText.setStringBuilder(new 1cA().setParams(du.1tp));
            return (rankReqText);
        }

        private static function bH(_arg1:int):_13j{
            var _local2:_13j;
            _local2 = new _13j().setSize(16).setColor(0xFF0000).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
            var _local3:String = GuildUtil.0Wv(_arg1);
            _local2.setStringBuilder(new 1cA().setParams(du.19a, {amount:_local3}));
            _local2.filters = [new DropShadowFilter(0, 0, 0)];
            return (_local2);
        }


        public function 07C(_arg1:SellableObject):void{
            if (_arg1 == this.0b2)
            {
                return;
            };
            this.0b2 = _arg1;
            this.0JA.setPrice(this.0b2.price_, this.0b2.currency_);
            var _local2:String = this.0b2.soldObjectName();
            this.nameText_.setStringBuilder(new 1cA().setParams(_local2));
            this.bitmap_.bitmapData = this.0b2.getIcon();
        }

        public function 0E3(_arg1:int):void{
            this.09C = _arg1;
        }

        private function onAddedToStage(_arg1:Event):void{
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            this.e4.x = -4;
            this.e4.y = -8;
            this.nameText_.x = 44;
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            if (((((!((parent == null))) && (!((this.MK == null))))) && (this.MK.open)))
            {
                parent.removeChild(this.MK);
            };
        }

        private function sv(_arg1:MouseEvent):void{
            if (ConfirmBuyModal.Ux)
            {
                this.0UZ();
            };
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if ((((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null)))) && (ConfirmBuyModal.Ux)))
            {
                this.0UZ();
            };
        }

        private function 0UZ():void{
            var _local1:Account = _1JZ.0JF().getInstance(Account);
            if (((((!((parent == null))) && (_local1.0D3()))) && ((this.0b2 is Merchant))))
            {
                this.MK = new ConfirmBuyModal(this.rQ, this.0b2, this.0JA.width, this.09C);
                parent.addChild(this.MK);
            } else
            {
                this.rQ.dispatch(this.0b2);
            };
        }

        override public function draw():void{
            var _local1:Player = gs_.map.player_;
            this.nameText_.y = (((this.nameText_.height)>30) ? 0 : 12);
            var _local2:int = this.0b2.57;
            if (_local1.numStars_ < _local2)
            {
                if (contains(this.0JA))
                {
                    removeChild(this.0JA);
                };
                if ((((this.1Zi == null)) || (!(contains(this.1Zi)))))
                {
                    this.1Zi = 1TL(_local2);
                    this.1Zi.x = ((WIDTH / 2) - (this.1Zi.width / 2));
                    this.1Zi.y = ((HEIGHT - (this.1Zi.height / 2)) - 20);
                    addChild(this.1Zi);
                };
            } else
            {
                if (_local1.guildRank_ < this.0b2.1fK)
                {
                    if (contains(this.0JA))
                    {
                        removeChild(this.0JA);
                    };
                    if ((((this.7P == null)) || (!(contains(this.7P)))))
                    {
                        this.7P = bH(this.0b2.1fK);
                        this.7P.x = ((WIDTH / 2) - (this.7P.width / 2));
                        this.7P.y = ((HEIGHT - (this.7P.height / 2)) - 20);
                        addChild(this.7P);
                    };
                } else
                {
                    this.0JA.setPrice(this.0b2.price_, this.0b2.currency_);
                    this.0JA.setEnabled((gs_.gsc_.outstandingBuy_ == null));
                    this.0JA.x = ((WIDTH / 2) - (this.0JA.width / 2));
                    this.0JA.y = ((HEIGHT - (this.0JA.height / 2)) - this.126);
                    if (!contains(this.0JA))
                    {
                        addChild(this.0JA);
                    };
                    if (((!((this.1Zi == null))) && (contains(this.1Zi))))
                    {
                        removeChild(this.1Zi);
                    };
                };
            };
        }

        public function 4-(_arg1:1hy):void{
            this.1-P.4-(_arg1);
        }

        public function Bs():1hy{
            return (this.1-P.Bs());
        }

        public function na(_arg1:of):void{
            this.1-P.na(_arg1);
        }

        public function w1():of{
            return (this.1-P.w1());
        }


    }
}//package BG

