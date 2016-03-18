// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.TradeInventory

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import com.company.assembleegameclient.game.nx;
    import com.company.ui._eG;
    import _CU._13j;
    import __AS3__.vec.Vector;
    import g0.1RN;
    import flash.filters.DropShadowFilter;
    import 0Px.1zw;
    import flash.events.MouseEvent;
    import AO.du;
    import 1n4.1cA;
    import flash.events.Event;
    import __AS3__.vec.*;

    public class TradeInventory extends Sprite {

        private static const 1BE:Array = [0, 0, 0, 0];
        private static const Qs:Array = [[1, 0, 0, 1], 1BE, 1BE, [0, 1, 1, 0], [1, 0, 0, 0], 1BE, 1BE, [0, 1, 0, 0], [0, 0, 0, 1], 1BE, 1BE, [0, 0, 1, 0]];
        public static const pL:int = 0;
        public static const vb:int = 1;
        public static const 0GA:int = 2;
        public static const 8L:int = 3;

        public var gs_:nx;
        public var 09T:String;
        private var 2-b:int;
        private var nameText_:_eG;
        private var taglineText_:_13j;
        public var iI:Vector.<07I>;

        public function TradeInventory(_arg1:nx, _arg2:String, _arg3:Vector.<1RN>, _arg4:Boolean){
            var _local6:1RN;
            var _local7:07I;
            this.iI = new Vector.<07I>();
            super();
            this.gs_ = _arg1;
            this.09T = _arg2;
            this.nameText_ = new _eG(20, 0xB3B3B3, false, 0, 0);
            this.nameText_.setBold(true);
            this.nameText_.x = 0;
            this.nameText_.y = 0;
            this.nameText_.text = this.09T;
            this.nameText_.re();
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.nameText_);
            this.taglineText_ = new _13j().setSize(12).setColor(0xB3B3B3);
            this.taglineText_.x = 0;
            this.taglineText_.y = 22;
            this.taglineText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.taglineText_);
            var _local5:int;
            while (_local5 < (1zw.1ye + 1zw.1dg))
            {
                _local6 = _arg3[_local5];
                _local7 = new 07I(_local6.item_, _local6.1sy, _local6.included_, _local6.0P0, (_local5 - 3), Qs[_local5], _local5);
                _local7.1t3(this.gs_.map.player_);
                _local7.x = (int((_local5 % 4)) * (Slot.WIDTH + 4));
                _local7.y = ((int((_local5 / 4)) * (Slot.HEIGHT + 4)) + 46);
                if (((_arg4) && (_local6.1sy)))
                {
                    _local7.addEventListener(MouseEvent.MOUSE_DOWN, this.1hC);
                };
                this.iI.push(_local7);
                addChild(_local7);
                _local5++;
            };
        }

        public function 9W():Vector.<Boolean>{
            var _local1:Vector.<Boolean> = new Vector.<Boolean>();
            var _local2:int;
            while (_local2 < this.iI.length)
            {
                _local1.push(this.iI[_local2].included_);
                _local2++;
            };
            return (_local1);
        }

        public function 12p(_arg1:Vector.<Boolean>):void{
            var _local2:int;
            while (_local2 < this.iI.length)
            {
                this.iI[_local2].setIncluded(_arg1[_local2]);
                _local2++;
            };
        }

        public function 16Z(_arg1:Vector.<Boolean>):Boolean{
            var _local2:int;
            while (_local2 < this.iI.length)
            {
                if (_arg1[_local2] != this.iI[_local2].included_)
                {
                    return (false);
                };
                _local2++;
            };
            return (true);
        }

        public function 0gL():int{
            var _local1:int;
            var _local2:int;
            while (_local2 < this.iI.length)
            {
                if (this.iI[_local2].included_)
                {
                    _local1++;
                };
                _local2++;
            };
            return (_local1);
        }

        public function PK():int{
            var _local1:int;
            var _local2:int = 4;
            while (_local2 < this.iI.length)
            {
                if (this.iI[_local2].isEmpty())
                {
                    _local1++;
                };
                _local2++;
            };
            return (_local1);
        }

        public function 0fg(_arg1:int):void{
            var _local2 = "";
            switch (_arg1)
            {
                case pL:
                    this.nameText_.setColor(0xB3B3B3);
                    this.taglineText_.setColor(0xB3B3B3);
                    _local2 = du.1sJ;
                    break;
                case vb:
                    this.nameText_.setColor(0xFF0000);
                    this.taglineText_.setColor(0xFF0000);
                    _local2 = du.02H;
                    break;
                case 0GA:
                    this.nameText_.setColor(9022300);
                    this.taglineText_.setColor(9022300);
                    _local2 = du.0k7;
                    break;
                case 8L:
                    this.nameText_.setColor(0xB3B3B3);
                    this.taglineText_.setColor(0xB3B3B3);
                    _local2 = du.oR;
                    break;
            };
            this.taglineText_.setStringBuilder(new 1cA().setParams(_local2));
        }

        private function 1hC(_arg1:MouseEvent):void{
            var _local2:07I = (_arg1.currentTarget as 07I);
            _local2.setIncluded(!(_local2.included_));
            dispatchEvent(new Event(Event.CHANGE));
        }


    }
}//package com.company.assembleegameclient.ui

