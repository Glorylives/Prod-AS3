// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//tn.1iY

package tn{
    import _Jy._1HZ;
    import kabam.rotmg.assets.model.0Ug;

    public class 1iY {

        public const n4:_1HZ = new _1HZ(1iY);

        public var id:int = 0;
        public var name:String = "";
        public var unlockLevel:int;
        public var CM:String;
        public var 26-:0Ug;
        public var cost:int;
        public var limited:Boolean = false;
        public var 1S1:Boolean = true;
        private var state:Lm;
        private var jf:Boolean;

        public function 1iY(){
            this.state = Lm.NULL;
            super();
        }

        public function 1DB():Boolean{
            return (this.jf);
        }

        public function eR(_arg1:Boolean):void{
            if (this.jf != _arg1)
            {
                this.jf = _arg1;
                this.n4.dispatch(this);
            };
        }

        public function 0QA():Lm{
            return (this.state);
        }

        public function setState(_arg1:Lm):void{
            if (this.state != _arg1)
            {
                this.state = _arg1;
                this.n4.dispatch(this);
            };
        }


    }
}//package tn

