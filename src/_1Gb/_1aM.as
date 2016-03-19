// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Gb.1aM

package _1Gb{
    import b4.f1;
    import _Jy._1HZ;

    public class _1aM {

        public static var _0ui:Boolean = false;

        private var fortune:f1;
        private var initialized:Boolean = false;
        private var _07O:Boolean = false;
        public var _0P2:_1HZ;

        public function _1aM(){
            this._0P2 = new _1HZ();
            super();
        }

        public function getFortune():f1{
            return (this.fortune);
        }

        public function _1Po(_arg1:f1):void{
            this.fortune = _arg1;
            this.initialized = true;
            _0ui = true;
            this._0P2.dispatch();
        }

        public function _171():Boolean{
            return (this.initialized);
        }

        public function _1Mp(_arg1:Boolean):void{
            this.initialized = _arg1;
        }

        public function get isNew():Boolean{
            return (this._07O);
        }

        public function set isNew(_arg1:Boolean):void{
            this._07O = _arg1;
        }


    }
}//package 1Gb

