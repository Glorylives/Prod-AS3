// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util.25C

package com.company.util{
    public class _25C {

        public var LR:Number;
        public var _8J:Number;
        public var _0yj:Number;
        public var _0B8:Number;

        public function _25C(){
            this.clear();
        }

        public function add(_arg1:Number, _arg2:Number):void{
            if (_arg1 < this.LR)
            {
                this.LR = _arg1;
            }
            if (_arg2 < this._8J)
            {
                this._8J = _arg2;
            }
            if (_arg1 > this._0yj)
            {
                this._0yj = _arg1;
            }
            if (_arg2 > this._0B8)
            {
                this._0B8 = _arg2;
            }
        }

        public function clear():void{
            this.LR = Number.MAX_VALUE;
            this._8J = Number.MAX_VALUE;
            this._0yj = Number.MIN_VALUE;
            this._0B8 = Number.MIN_VALUE;
        }

        public function toString():String{
            return ((((((((("min:(" + this.LR) + ", ") + this._8J) + ") max:(") + this._0yj) + ", ") + this._0B8) + ")"));
        }


    }
}//package com.company.util

