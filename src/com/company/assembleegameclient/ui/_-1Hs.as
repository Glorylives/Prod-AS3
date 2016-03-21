// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.1Hs

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import com.company.assembleegameclient.game.nx;
    import flash.events.Event;
    import AO.du;
    import flash.events.MouseEvent;
    import 1zG.ff;


    public class 1Hs extends Sprite {

        public static const WIDTH:int = 200;
        public static const HEIGHT:int = 400;

        public var gs_:nx;
        private var AK:TradeInventory;
        private var uf:TradeInventory;
        private var A6:1nN;
        private var 1Le:0yR;

        public function 1Hs(_arg1:nx, _arg2:ff){
            this.gs_ = _arg1;
            var _local3:String = this.gs_.map.player_.name_;
            this.AK = new TradeInventory(_arg1, _local3, _arg2.myItems_, true);
            this.AK.x = 14;
            this.AK.y = 0;
            this.AK.addEventListener(Event.CHANGE, this.1ui);
            addChild(this.AK);
            this.uf = new TradeInventory(_arg1, _arg2.yourName_, _arg2.yourItems_, false);
            this.uf.x = 14;
            this.uf.y = 174;
            addChild(this.uf);
            this.A6 = new 1nN(16, du.0az, 80);
            this.A6.addEventListener(MouseEvent.CLICK, this.0Ld);
            this.A6.textChanged.addOnce(this.1K0);
            addChild(this.A6);
            this.1Le = new 0yR(16, 80);
            this.1Le.x = (((3 * WIDTH) / 4) - (this.1Le.23G / 2));
            this.1Le.addEventListener(MouseEvent.CLICK, this.sL);
            addChild(this.1Le);
            this.10i();
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function 1K0():void{
            this.A6.x = ((WIDTH / 4) - (this.A6.23G / 2));
            this.A6.y = ((HEIGHT - this.A6.height) - 10);
            this.1Le.y = this.A6.y;
        }

        public function QC(_arg1:Vector.<Boolean>):void{
            this.uf.12p(_arg1);
            this.10i();
        }

        public function 1X1(_arg1:Vector.<Boolean>, _arg2:Vector.<Boolean>):void{
            if (((this.AK.16Z(_arg1)) && (this.uf.16Z(_arg2))))
            {
                this.uf.0fg(TradeInventory.0GA);
            }
        }

        private function onAddedToStage(_arg1:Event):void{
            stage.addEventListener(Event.ACTIVATE, this.1xu);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(Event.ACTIVATE, this.1xu);
        }

        private function 1xu(_arg1:Event):void{
            this.1Le.reset();
        }

        private function 1ui(_arg1:Event):void{
            this.gs_.gsc_.changeTrade(this.AK.9W());
            this.10i();
        }

        private function 0Ld(_arg1:MouseEvent):void{
            this.gs_.gsc_.cancelTrade();
            dispatchEvent(new Event(Event.CANCEL));
        }

        private function sL(_arg1:MouseEvent):void{
            this.gs_.gsc_.acceptTrade(this.AK.9W(), this.uf.9W());
            this.AK.0fg(TradeInventory.0GA);
        }

        public function 10i():void{
            var _local1:int = this.AK.0gL();
            var _local2:int = this.AK.PK();
            var _local3:int = this.uf.0gL();
            var _local4:int = this.uf.PK();
            var _local5:Boolean = true;
            if (((_local3 - _local1) - _local2) > 0)
            {
                this.AK.0fg(TradeInventory.vb);
                _local5 = false;
            } else
            {
                this.AK.0fg(TradeInventory.pL);
            }
            if (((_local1 - _local3) - _local4) > 0)
            {
                this.uf.0fg(TradeInventory.vb);
                _local5 = false;
            } else
            {
                this.uf.0fg(TradeInventory.8L);
            }
            if (_local5)
            {
                this.1Le.reset();
            } else
            {
                this.1Le.disable();
            }
        }


    }
}//package com.company.assembleegameclient.ui

