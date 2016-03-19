// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sk.1Of

package 0sk{
    public class 1Of {

        public static const 0oO:1Of = new 1Of(1);
        public static const 00i:1Of = new 1Of(2);
        public static const 0RX:1Of = new 1Of(3);
        private static const 1Gf:Object = {
            1:0oO,
            2:00i,
            3:0RX
        }

        private var index:int;

        public function 1Of(_arg1:int){
            this.index = _arg1;
        }

        public static function parse(_arg1:int):1Of{
            return (1Gf[_arg1]);
        }


        public function v4():int{
            return (this.index);
        }


    }
}//package 0sk

