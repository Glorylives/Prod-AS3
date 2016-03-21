// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1qQ.l6

package _1qQ{
    public class _l6 implements 0oB {

        private var 25Z:Object;
        private var 4U:Object;

        public function l6(){
            this.25Z = {}
            this.4U = {}
            super();
        }

        public function clear():void{
            this.25Z = {}
            this.4U = {}
        }

        public function setValue(_arg1:String, _arg2:String, _arg3:String):void{
            this.25Z[_arg1] = _arg2;
            this.4U[_arg1] = _arg3;
        }

        public function 09f(_arg1:String):Boolean{
            return (!((this.25Z[_arg1] == null)));
        }

        public function getValue(_arg1:String):String{
            return (this.25Z[_arg1]);
        }

        public function 1GK(_arg1:String):String{
            return (this.4U[_arg1]);
        }


    }
}//package 1qQ

