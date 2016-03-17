// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Gb.1aM

package 1Gb{
    import b4.f1;
    import _Jy._1HZ;

    public class 1aM {

        public static var 0ui:Boolean = false;

        private var fortune:f1;
        private var initialized:Boolean = false;
        private var 07O:Boolean = false;
        public var 0P2:_1HZ;

        public function 1aM(){
            this.0P2 = new _1HZ();
            super();
        }

        public function getFortune():f1{
            return (this.fortune);
        }

        public function 1Po(_arg1:f1):void{
            this.fortune = _arg1;
            this.initialized = true;
            0ui = true;
            this.0P2.dispatch();
        }

        public function 171():Boolean{
            return (this.initialized);
        }

        public function 1Mp(_arg1:Boolean):void{
            this.initialized = _arg1;
        }

        public function get isNew():Boolean{
            return (this.07O);
        }

        public function set isNew(_arg1:Boolean):void{
            this.07O = _arg1;
        }


    }
}//package 1Gb

