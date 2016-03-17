// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util.25C

package com.company.util{
    public class 25C {

        public var LR:Number;
        public var 8J:Number;
        public var 0yj:Number;
        public var 0B8:Number;

        public function 25C(){
            this.clear();
        }

        public function add(_arg1:Number, _arg2:Number):void{
            if (_arg1 < this.LR)
            {
                this.LR = _arg1;
            };
            if (_arg2 < this.8J)
            {
                this.8J = _arg2;
            };
            if (_arg1 > this.0yj)
            {
                this.0yj = _arg1;
            };
            if (_arg2 > this.0B8)
            {
                this.0B8 = _arg2;
            };
        }

        public function clear():void{
            this.LR = Number.MAX_VALUE;
            this.8J = Number.MAX_VALUE;
            this.0yj = Number.MIN_VALUE;
            this.0B8 = Number.MIN_VALUE;
        }

        public function toString():String{
            return ((((((((("min:(" + this.LR) + ", ") + this.8J) + ") max:(") + this.0yj) + ", ") + this.0B8) + ")"));
        }


    }
}//package com.company.util

