// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//tn.0dE

package tn{
    import _Jy._1HZ;
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class 0dE {

        public const selected:_1HZ = new _1HZ(0dE);
        public const No:Vector.<0dS> = new <0dS>[];
        public const 0sP:0a0 = new 0a0();

        public var id:int;
        public var name:String;
        public var description:String;
        public var 1uw:String;
        public var 1uY:String;
        public var TJ:Number;
        public var Zm:Vector.<int>;
        public var 0Mh:Vector.<int>;
        public var m0:1Ta;
        public var 1ch:1Ta;
        public var attack:1Ta;
        public var defense:1Ta;
        public var speed:1Ta;
        public var dexterity:1Ta;
        public var 1CS:1Ta;
        public var O9:1Ta;
        public var unlockCost:int;
        private var 17g:int;
        private var jf:Boolean;


        public function 1DB():Boolean{
            return (this.jf);
        }

        public function eR(_arg1:Boolean):void{
            if (this.jf != _arg1)
            {
                this.jf = _arg1;
                ((this.jf) && (this.selected.dispatch(this)));
            };
        }

        public function 0qk():int{
            return (this.17g);
        }

        public function 0nw(_arg1:int):void{
            this.17g = _arg1;
            this.0sP.1JT(this.17g);
        }


    }
}//package tn

