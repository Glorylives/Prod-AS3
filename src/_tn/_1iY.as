// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//tn.1iY

package _tn{
    import _Jy._1HZ;
    import kabam.rotmg.assets.model._0Ug;

public class _1iY {

        public const n4:_1HZ = new _1HZ(_1iY);

        public var id:int = 0;
        public var name:String = "";
        public var unlockLevel:int;
        public var CM:String;
        public var _26:_0Ug;
        public var cost:int;
        public var limited:Boolean = false;
        public var _1S1:Boolean = true;
        private var state:_Lm;
        private var jf:Boolean;

        public function _1iY(){
            this.state = _Lm.NULL;
            super();
        }

        public function _1DB():Boolean{
            return (this.jf);
        }

        public function eR(_arg1:Boolean):void{
            if (this.jf != _arg1)
            {
                this.jf = _arg1;
                this.n4.dispatch(this);
            };
        }

        public function _0QA():_Lm{
            return (this.state);
        }

        public function setState(_arg1:_Lm):void{
            if (this.state != _arg1)
            {
                this.state = _arg1;
                this.n4.dispatch(this);
            };
        }


    }
}//package tn

