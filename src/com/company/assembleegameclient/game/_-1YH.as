﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.game.1YH

package com.company.assembleegameclient.game{

    import g0.wb;


    public class 1YH {

        public var lastClearTime_:int = -1;
        public var records_:Vector.<wb>;

        public function 1YH(){
            this.records_ = new Vector.<wb>();
            super();
        }

        public function addRecord(_arg1:int, _arg2:Number, _arg3:Number):void{
            if (this.lastClearTime_ < 0)
            {
                return;
            }
            var _local4:int = this.67(_arg1);
            if ((((_local4 < 1)) || ((_local4 > 10))))
            {
                return;
            }
            if (this.records_.length == 0)
            {
                this.records_.push(new wb(_arg1, _arg2, _arg3));
                return;
            }
            var _local5:wb = this.records_[(this.records_.length - 1)];
            var _local6:int = this.67(_local5.time_);
            if (_local4 != _local6)
            {
                this.records_.push(new wb(_arg1, _arg2, _arg3));
                return;
            }
            var _local7:int = this.M6(_local4, _arg1);
            var _local8:int = this.M6(_local4, _local5.time_);
            if (_local7 < _local8)
            {
                _local5.time_ = _arg1;
                _local5.x_ = _arg2;
                _local5.y_ = _arg3;
                return;
            }
        }

        private function 67(_arg1:int):int{
            return ((((_arg1 - this.lastClearTime_) + 50) / 100));
        }

        private function M6(_arg1:int, _arg2:int):int{
            return (Math.abs(((_arg2 - this.lastClearTime_) - (_arg1 * 100))));
        }

        public function clear(_arg1:int):void{
            this.records_.length = 0;
            this.lastClearTime_ = _arg1;
        }


    }
}//package com.company.assembleegameclient.game

