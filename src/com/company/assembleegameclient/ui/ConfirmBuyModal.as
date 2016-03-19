// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.ConfirmBuyModal

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import 0uE.KC;
    import 0IN.1qO;
    import OZ.08g;
    import AO.du;
    import com.company.assembleegameclient.util.Currency;
    import XF.1eq;
    import _CU._13j;
    import com.company.assembleegameclient.objects.SellableObject;
    import _Jy._1HZ;
    import _CU.0Pj;
    import 0pT.g-;
    import flash.events.Event;
    import OZ.0Zn;
    import 0uE.IJ;
    import flash.events.MouseEvent;

    public class ConfirmBuyModal extends Sprite {

        public static const WIDTH:int = 280;
        public static const HEIGHT:int = 240;
        public static const 1yz:int = 20;

        public static var Ux:Boolean = true;

        private const 1tf:KC = 0IN.1qO.19W(ConfirmBuyModal.WIDTH);
        private const buyButton:08g = new 08g(du.X1, 16, 0, Currency.INVALID);

        private var EX:1eq;
        private var ME:_13j;
        private var 1ex:Sprite;
        private var qY:Sprite;
        private var quantity_:int = 1;
        private var 09C:int;
        private var 0b2:SellableObject;
        public var rQ:_1HZ;
        public var open:Boolean;
        public var bc:int;

        public function ConfirmBuyModal(_arg1:_1HZ, _arg2:SellableObject, _arg3:Number, _arg4:int):void{
            var _local6:0Pj;
            var _local8:g-;
            super();
            ConfirmBuyModal.Ux = false;
            this.rQ = _arg1;
            this.0b2 = _arg2;
            this.bc = _arg3;
            this.09C = _arg4;
            this.events();
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.1Jq();
            this.Fl();
            this.buyButton.setPrice(this.0b2.price_, this.0b2.currency_);
            var _local5:String = this.0b2.soldObjectName();
            _local6 = new 0Pj();
            _local6.0P5 = 1yz;
            _local6.xE = WIDTH;
            addChild(_local6.1RD(du.0l9, 1yz, 5));
            addChild(_local6.1RD(du.0RJ, 1yz, 40));
            addChild(_local6.1RD(_local5, 1yz, 90));
            var _local7:* = _local6.1RD(du.0wx, 1yz, 140);
            addChild(_local7);
            this.ME = _local6.0x2("1", 1yz, 160);
            if (this.0b2.getSellableType() != -1)
            {
                _local8 = new g-(this.0b2.getSellableType(), 64);
            }
            _local8.x = (((WIDTH * 1) / 2) - (_local8.width / 2));
            _local8.y = 100;
            addChild(_local8);
            this.ME = _local6.0x2("1", 1yz, 160);
            this.ME.setMultiLine(false);
            addChild(this.ME);
            this.1ex = this.1Qq(0Zn.1GG);
            this.qY = this.1Qq(0Zn.1ST);
            this.1ex.x = (((WIDTH * 4) / 11) - (this.qY.width / 2));
            this.1ex.y = 150;
            addChild(this.1ex);
            this.qY.x = (((WIDTH * 7) / 11) - (this.qY.width / 2));
            this.qY.y = 150;
            addChild(this.qY);
            this.0Lo();
            this.open = true;
        }

        private static function makeModalBackground(_arg1:int, _arg2:int):IJ{
            var _local3:IJ = new IJ();
            _local3.draw(_arg1, _arg2);
            _local3.UK(IJ.HORIZONTAL_DIVISION, 30);
            return (_local3);
        }


        private function 0Lo(){
            this.1ex.alpha = (((this.quantity_)==1) ? 0.5 : 1);
            this.qY.alpha = (((this.quantity_)==this.09C) ? 0.5 : 1);
        }

        private function 1Jq():void{
            var _local1 = -300;
            var _local2 = -200;
            this.x = (_local1 + ((-1 * ConfirmBuyModal.WIDTH) * 0.5));
            this.y = (_local2 + ((-1 * ConfirmBuyModal.HEIGHT) * 0.5));
            this.buyButton.x = (this.buyButton.x + 35);
            this.buyButton.y = (this.buyButton.y + 195);
            this.buyButton.x = ((WIDTH / 2) - (this.bc / 2));
        }

        private function events():void{
            this.1tf.clicked.add(this.onCloseClick);
            this.EX = new 1eq(this.buyButton, MouseEvent.CLICK, MouseEvent);
            this.EX.add(this.y-);
        }

        private function Fl():void{
            addChild(makeModalBackground(ConfirmBuyModal.WIDTH, ConfirmBuyModal.HEIGHT));
            addChild(this.1tf);
            addChild(this.buyButton);
        }

        public function onCloseClick():void{
            this.close();
        }

        public function y-(_arg1:MouseEvent):void{
            this.0b2.quantity_ = this.quantity_;
            this.rQ.dispatch(this.0b2);
            this.close();
        }

        private function close():void{
            parent.removeChild(this);
            ConfirmBuyModal.Ux = true;
            this.open = false;
        }

        private function onRemovedFromStage(_arg1:Event):void{
            ConfirmBuyModal.Ux = true;
            this.open = false;
            this.1ex.removeEventListener(MouseEvent.CLICK, this.0eJ);
            this.qY.removeEventListener(MouseEvent.CLICK, this.0eJ);
        }

        private function 1Qq(_arg1:String):Sprite{
            var _local2:* = 0Zn.0QY(_arg1);
            _local2.addEventListener(MouseEvent.CLICK, this.0eJ);
            return (_local2);
        }

        private function 0eJ(_arg1:MouseEvent){
            switch (_arg1.currentTarget)
            {
                case this.qY:
                    if (this.quantity_ < this.09C)
                    {
                        this.quantity_ = (this.quantity_ + 1);
                    }
                    break;
                case this.1ex:
                    if (this.quantity_ > 1)
                    {
                        this.quantity_ = (this.quantity_ - 1);
                    }
                    break;
            }
            this.0Lo();
            var _local2:int = (this.0b2.price_ * this.quantity_);
            this.buyButton.setPrice(_local2, this.0b2.currency_);
            this.ME.1wG(this.quantity_.toString());
        }


    }
}//package com.company.assembleegameclient.ui

