// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util.Vb

package com.company.util{
    public class Vb implements 0Rw {

        private var 2-X:Array;
        private var 0Xv:int;

        public function Vb(_arg1:Array){
            this.2-X = _arg1;
            this.0Xv = 0;
        }

        public function reset():void{
            this.0Xv = 0;
        }

        public function next():Object{
            return (this.2-X[this.0Xv++]);
        }

        public function 3v():Boolean{
            return ((this.0Xv < this.2-X.length));
        }


    }
}//package com.company.util

