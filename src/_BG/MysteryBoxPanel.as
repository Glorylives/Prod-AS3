// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.MysteryBoxPanel

package BG{
    import _ZE.Panel;
    import _Jy._1HZ;
    import com.company.assembleegameclient.objects.SellableObject;
    import _CU._13j;
    import OZ.08g;
    import com.company.assembleegameclient.ui.1nN;
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import _04_._1JZ;
    import _0OG._22M;
    import M0.jc;
    import 1n4.1cA;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import M0.1g;
    import aq.Account;
    import flash.events.MouseEvent;
    import with.26q;
    import flash.events.Event;
    import com.company.assembleegameclient.game.GameSprite;
    import flash.events.KeyboardEvent;
    import 1qg.0io;
    import 1qa.MysteryBoxSelectModal;
    import 12X.0KD;
    import com.company.assembleegameclient.util.Currency;
    import com.company.assembleegameclient.parameters.Parameters;
    import _ZE.*;

    public class MysteryBoxPanel extends Panel {

        private const 126:int = 17;

        public var rQ:_1HZ;
        private var 0b2:SellableObject;
        private var nameText_:_13j;
        private var 0JA:08g;
        private var 0Ei:1nN;
        private var e4:Sprite;
        private var bitmap_:Bitmap;

        public function MysteryBoxPanel(_arg1:GameSprite, _arg2:uint){
            this.rQ = new _1HZ(SellableObject);
            var _local3:_22M = _1JZ.0JF();
            var _local4:jc = _local3.getInstance(jc);
            _local4.start();
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
            var _local5 = "MysteryBoxPanel.open";
            var _local6 = "MysteryBoxPanel.checkBackLater";
            var _local7 = "MysteryBoxPanel.mysteryBoxShop";
            var _local8:1g = _local3.getInstance(1g);
            var _local9:Account = _local3.getInstance(Account);
            if (((_local8.171()) || (!(_local9.0D3()))))
            {
                this.0Ei = new 1nN(16, _local5);
                this.0Ei.addEventListener(MouseEvent.CLICK, this.16F);
                addChild(this.0Ei);
            } else
            {
                this.0Ei = new 1nN(16, _local6);
                addChild(this.0Ei);
            };
            this.nameText_.setStringBuilder(new 1cA().setParams(_local7));
            this.bitmap_.bitmapData = 26q.1F5(_arg2).bitmapData;
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
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

        private function onAddedToStage(_arg1:Event):void{
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            this.e4.x = -4;
            this.e4.y = -8;
            this.nameText_.x = 44;
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            this.0Ei.removeEventListener(MouseEvent.CLICK, this.16F);
        }

        private function 16F(_arg1:MouseEvent):void{
            this.Kp();
        }

        private function Kp():void{
            var _local1:_22M = _1JZ.0JF();
            var _local2:1g = _local1.getInstance(1g);
            var _local3:Account = _local1.getInstance(Account);
            var _local4:0io = _local1.getInstance(0io);
            if (((_local2.171()) && (_local3.0D3())))
            {
                _local4.dispatch(new MysteryBoxSelectModal());
            } else
            {
                if (!_local3.0D3())
                {
                    _local4.dispatch(new 0KD("SellableObjectPanelMediator.text", {type:Currency.19M(Currency.1Jg)}));
                };
            };
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null))))
            {
                this.Kp();
            };
        }

        override public function draw():void{
            this.nameText_.y = (((this.nameText_.height)>30) ? 0 : 12);
            this.0Ei.x = ((WIDTH / 2) - (this.0Ei.width / 2));
            this.0Ei.y = ((HEIGHT - (this.0Ei.height / 2)) - this.126);
            if (!contains(this.0Ei))
            {
                addChild(this.0Ei);
            };
        }


    }
}//package BG

