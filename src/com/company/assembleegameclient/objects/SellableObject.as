// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.SellableObject

package com.company.assembleegameclient.objects{
    import _0qj._1ae;
    import flash.display.BitmapData;
    import BG.SellableObjectPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import _ZE.Panel;

    public class SellableObject extends GameObject implements _18p {

        public var price_:int = 0;
        public var currency_:int = -1;
        public var _57:int = 0;
        public var _1fK:int = -1;
        public var quantity_:int = 1;

        public function SellableObject(_arg1:XML){
            super(_arg1);
            _10J = true;
        }

        public function setPrice(_arg1:int):void{
            this.price_ = _arg1;
        }

        public function _23D(_arg1:int):void{
            this.currency_ = _arg1;
        }

        public function setRankReq(_arg1:int):void{
            this._57 = _arg1;
        }

        public function soldObjectName():String{
            return (null);
        }

        public function soldObjectInternalName():String{
            return (null);
        }

        public function getTooltip():_1ae{
            return (null);
        }

        public function getIcon():BitmapData{
            return (null);
        }

        public function getSellableType():int{
            return (-1);
        }

        public function _022():int{
            return (this.quantity_);
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new SellableObjectPanel(_arg1, this));
        }


    }
}//package com.company.assembleegameclient.objects

