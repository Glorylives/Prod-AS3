// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//tn.Lm

package tn{
    public class Lm {

        public static const OWNED:Lm = new Lm(false, "OWNED", false);
        public static const UNLISTED:Lm = new Lm(true, "UNLISTED", false);
        public static const PURCHASABLE:Lm = new Lm(false, "PURCHASABLE", true);
        public static const PURCHASING:Lm = new Lm(true, "PURCHASING", true);
        public static const LOCKED:Lm = new Lm(true, "LOCKED", true);
        public static const NULL:Lm = new Lm(true, "NULL", true);

        private var 1A:Boolean;
        private var 031:Boolean;
        private var name:String;

        public function Lm(_arg1:Boolean, _arg2:String, _arg3:Boolean){
            this.1A = _arg1;
            this.031 = _arg3;
            this.name = _arg2;
        }

        public function 0Rh():Boolean{
            return (this.1A);
        }

        public function 0-T():Boolean{
            return (this.031);
        }

        public function toString():String{
            return ("[CharacterSkinState {NAME}]".replace("{NAME}", this.name));
        }


    }
}//package tn

