// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1qa.MysteryBoxSelectEntry

package 1qa{
    import flash.display.Sprite;
    import OZ.08g;
    import com.company.assembleegameclient.util.Currency;
    import vF.MysteryBoxInfo;
    import flash.display.DisplayObject;
    import 0uE.IJ;
    import _CU._13j;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import OZ.0Zn;
    import flash.utils.getTimer;
    import 1n4.1cA;
    import 1n4.1WS;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormatAlign;
    import flash.filters.DropShadowFilter;
    import flash.filters.ColorMatrixFilter;
    import flash.geom.Point;
    import 1qg.0io;
    import _04_._1JZ;

    public class MysteryBoxSelectEntry extends Sprite {

        public static var 1dN:Class = 0XN;

        private const buyButton:08g = new 08g("", 16, 0, Currency.INVALID);
        private const newString:String = "MysteryBoxSelectEntry.newString";
        private const onSaleString:String = "MysteryBoxSelectEntry.onSaleString";
        private const saleEndString:String = "MysteryBoxSelectEntry.saleEndString";

        public var 1Eg:MysteryBoxInfo;
        private var 1ex:Sprite;
        private var qY:Sprite;
        private var rJ:DisplayObject;
        private var 0Z7:IJ;
        private var 1c5:DisplayObject;
        private var 1PE:_13j;
        private var 02x:_13j;
        private var 1X9:Boolean = false;
        private var 1Vz:Boolean = false;
        private var Jx:DisplayObject;
        private var quantity_:int;

        public function MysteryBoxSelectEntry(_arg1:MysteryBoxInfo):void{
            this.Jx = new 1dN();
            this.Jx.y = -5;
            this.Jx.width = (MysteryBoxSelectModal.0l4 - 5);
            this.Jx.height = (MysteryBoxSelectModal.0Gv - 8);
            addChild(this.Jx);
            var _local2:DisplayObject = new 1dN();
            _local2.y = 0;
            _local2.width = (MysteryBoxSelectModal.0l4 - 5);
            _local2.height = ((MysteryBoxSelectModal.0Gv - 8) + 5);
            _local2.alpha = 0;
            addChild(_local2);
            this.1Eg = _arg1;
            this.quantity_ = 1;
            var _local3:_13j = this.1UU(this.1Eg.title, 74, 18, 20, true);
            addChild(_local3);
            this.0Fk();
            this.Ml();
            if (this.1Eg.1p1())
            {
                this.buyButton.setPrice(this.1Eg.rn, this.1Eg.4O);
            } else
            {
                this.buyButton.setPrice(this.1Eg.0Br, this.1Eg.1hG);
            }
            this.buyButton.x = (MysteryBoxSelectModal.0l4 - 120);
            this.buyButton.y = 16;
            this.buyButton.k4 = 70;
            this.buyButton.addEventListener(MouseEvent.CLICK, this.0Sn);
            addChild(this.buyButton);
            this.rJ = this.1Eg.rJ;
            this.1c5 = this.1Eg.1c5;
            if (this.rJ == null)
            {
                this.1Eg.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.1To);
            } else
            {
                this.AH();
            }
            if (this.1c5 == null)
            {
                this.1Eg.mV.contentLoaderInfo.addEventListener(Event.COMPLETE, this.12z);
            } else
            {
                this.jZ();
            }
            this.1Eg.quantity = this.quantity_.toString();
            this.1ex = 0Zn.0QY(0Zn.1GG, 3);
            this.1ex.x = ((this.buyButton.x + this.buyButton.width) + 45);
            this.1ex.y = ((this.buyButton.y + (this.buyButton.height / 2)) - 2);
            this.1ex.addEventListener(MouseEvent.CLICK, this.0eJ);
            addChild(this.1ex);
            this.qY = 0Zn.0QY(0Zn.1ST, 3);
            this.qY.x = ((this.buyButton.x + this.buyButton.width) + 45);
            this.qY.y = ((this.buyButton.y + (this.buyButton.height / 2)) - 16);
            this.qY.addEventListener(MouseEvent.CLICK, this.0eJ);
            addChild(this.qY);
            addEventListener(MouseEvent.ROLL_OVER, this.0yq);
            addEventListener(MouseEvent.ROLL_OUT, this.5p);
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function 0yq(_arg1:MouseEvent):void{
            this.1X9 = true;
            this.jZ();
        }

        private function 5p(_arg1:MouseEvent):void{
            this.1X9 = false;
            this.cE();
        }

        private function 0eJ(_arg1:MouseEvent){
            switch (_arg1.currentTarget)
            {
                case this.qY:
                    if (this.quantity_ == 1)
                    {
                        this.quantity_ = (this.quantity_ + 4);
                    } else
                    {
                        if (this.quantity_ < 10)
                        {
                            this.quantity_ = (this.quantity_ + 5);
                        }
                    }
                    break;
                case this.1ex:
                    if (this.quantity_ == 10)
                    {
                        this.quantity_ = (this.quantity_ - 5);
                    } else
                    {
                        if (this.quantity_ > 1)
                        {
                            this.quantity_ = (this.quantity_ - 4);
                        }
                    }
                    break;
            }
            this.1Eg.quantity = this.quantity_.toString();
            if (this.1Eg.1p1())
            {
                this.buyButton.setPrice((this.1Eg.rn * this.quantity_), this.1Eg.4O);
            } else
            {
                this.buyButton.setPrice((this.1Eg.0Br * this.quantity_), this.1Eg.1hG);
            }
        }

        private function 0Fk():void{
            if (this.1Eg.isNew())
            {
                this.1PE = this.1UU(this.newString, 74, 0).setColor(0xFFDE00);
                addChild(this.1PE);
            }
        }

        private function onEnterFrame(_arg1:Event):void{
            var _local2:Number = (1.05 + (0.05 * Math.sin((getTimer() / 200))));
            if (this.1PE)
            {
                this.1PE.scaleX = _local2;
                this.1PE.scaleY = _local2;
            }
            if (this.02x)
            {
                this.02x.scaleX = _local2;
                this.02x.scaleY = _local2;
            }
        }

        private function Ml():void{
            var _local1:1cA;
            var _local2:_13j;
            if (this.1Eg.1p1())
            {
                this.02x = this.1UU(this.onSaleString, int(((320 * MysteryBoxSelectModal.0l4) / 415)), 0).setColor(0xFF00);
                addChild(this.02x);
                _local1 = this.1Eg.4p();
                _local2 = this.1UU("", (int(((250 * MysteryBoxSelectModal.0l4) / 415)) - 32), 46).setColor(0xFF0000);
                _local2.setStringBuilder(_local1);
                addChild(_local2);
            }
        }

        private function 1To(_arg1:Event):void{
            this.1Eg.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.1To);
            this.rJ = DisplayObject(this.1Eg.loader);
            this.AH();
        }

        private function 12z(_arg1:Event):void{
            this.1Eg.mV.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.12z);
            this.1c5 = DisplayObject(this.1Eg.mV);
            this.jZ();
        }

        public function 1UU(_arg1:String, _arg2:int, _arg3:int, _arg4:int=12, _arg5:Boolean=false):_13j{
            var _local6:_13j = new _13j().setSize(_arg4).setColor(0xFFFFFF).setTextWidth((MysteryBoxSelectModal.0l4 - 185));
            _local6.setBold(true);
            if (_arg5)
            {
                _local6.setStringBuilder(new 1WS(_arg1));
            } else
            {
                _local6.setStringBuilder(new 1cA().setParams(_arg1));
            }
            _local6.setWordWrap(true);
            _local6.setMultiLine(true);
            _local6.setAutoSize(TextFieldAutoSize.LEFT);
            _local6.setHorizontalAlign(TextFormatAlign.LEFT);
            _local6.filters = [new DropShadowFilter(0, 0, 0)];
            _local6.x = _arg2;
            _local6.y = _arg3;
            return (_local6);
        }

        private function AH():void{
            if (this.rJ == null)
            {
                return;
            }
            this.rJ.width = 48;
            this.rJ.height = 48;
            this.rJ.x = 14;
            this.rJ.y = 6;
            addChild(this.rJ);
        }

        private function jZ():void{
            var _local3:Array;
            var _local4:ColorMatrixFilter;
            if (this.1c5 == null)
            {
                return;
            }
            var _local1:int = 8;
            this.1c5.width = (291 - _local1);
            this.1c5.height = ((598 - (_local1 * 2)) - 2);
            var _local2:Point = this.globalToLocal(new Point(((MysteryBoxSelectModal.0p3() + 1) + 14), (2 + _local1)));
            this.1c5.x = _local2.x;
            this.1c5.y = _local2.y;
            if (((this.1X9) && (!(this.1Vz))))
            {
                this.1Vz = true;
                addChild(this.1c5);
                this.0Z7 = new IJ();
                this.0Z7.draw(this.1c5.width, (this.1c5.height + 2), IJ.0qG);
                this.0Z7.x = this.1c5.x;
                this.0Z7.y = (this.1c5.y - 1);
                addChild(this.0Z7);
                _local3 = [3.0742, -1.8282, -0.246, 0, 50, -0.9258, 2.1718, -0.246, 0, 50, -0.9258, -1.8282, 3.754, 0, 50, 0, 0, 0, 1, 0];
                _local4 = new ColorMatrixFilter(_local3);
                this.Jx.filters = [_local4];
            }
        }

        private function cE():void{
            if (this.1Vz)
            {
                removeChild(this.0Z7);
                removeChild(this.1c5);
                this.1Vz = false;
                this.Jx.filters = [];
            }
        }

        private function 0Sn(_arg1:MouseEvent):void{
            var _local4:0io;
            var _local2:MysteryBoxRollModal = new MysteryBoxRollModal(this.1Eg, this.quantity_);
            var _local3:Boolean = _local2.dz();
            if (_local3)
            {
                _local2.ZJ = MysteryBoxSelectModal(parent.parent);
                _local4 = _1JZ.0JF().getInstance(0io);
                _local4.dispatch(_local2);
            }
        }


    }
}//package 1qa

