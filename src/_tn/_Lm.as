// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//tn._Lm

package _tn{
    public class _Lm {

        public static const OWNED:_Lm = new _Lm(false, "OWNED", false);
        public static const UNLISTED:_Lm = new _Lm(true, "UNLISTED", false);
        public static const PURCHASABLE:_Lm = new _Lm(false, "PURCHASABLE", true);
        public static const PURCHASING:_Lm = new _Lm(true, "PURCHASING", true);
        public static const LOCKED:_Lm = new _Lm(true, "LOCKED", true);
        public static const NULL:_Lm = new _Lm(true, "NULL", true);

        private var _1A:Boolean;
        private var _031:Boolean;
        private var name:String;

        public function _Lm(_arg1:Boolean, _arg2:String, _arg3:Boolean){
            this._1A = _arg1;
            this._031 = _arg3;
            this.name = _arg2;
        }

        public function _0Rh():Boolean{
            return (this._1A);
        }

        public function _0T():Boolean{
            return (this._031);
        }

        public function toString():String{
            return ("[CharacterSkinState {NAME}]".replace("{NAME}", this.name));
        }


    }
}//package tn

