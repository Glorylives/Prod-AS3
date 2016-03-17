// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0oT.ZZ

package 0oT{
    public class ZZ {

        private var a:Number;
        private var r:Number;

        public function ZZ(_arg1:Number, _arg2:Number){
            this.a = _arg1;
            this.r = _arg2;
        }

        public function 0hj(_arg1:int):Number{
            return (((this.a * (1 - Math.pow(this.r, _arg1))) / (1 - this.r)));
        }

        public function UT(_arg1:int):Number{
            return ((this.a * Math.pow(this.r, _arg1)));
        }


    }
}//package 0oT

