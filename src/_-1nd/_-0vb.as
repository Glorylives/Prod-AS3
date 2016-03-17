// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1nd.0vb

package 1nd{
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;
    import 1nd.*;

    final class 0vb {

        private var xU:Vector.<String>;
        private var index:int;

        public function 0vb(){
            this.xU = new Vector.<String>();
            this.index = 0;
        }

        public function add(_arg1:String):void{
            this.index = this.xU.push(_arg1);
        }

        public function get length():int{
            return (this.xU.length);
        }

        public function 11b():String{
            return ((((this.index > 0)) ? this.xU[--this.index] : ""));
        }

        public function 18g():String{
            return ((((this.index < (this.xU.length - 1))) ? this.xU[++this.index] : ""));
        }


    }
}//package 1nd

