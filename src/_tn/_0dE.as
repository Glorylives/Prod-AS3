// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//tn.0dE

package _tn{
    import _Jy._1HZ;

    public class _0dE {

        public const selected:_1HZ = new _1HZ(_0dE);
        public const No:Vector.<_0dS> = new <_0dS>[];
        public const _0sP:_0a0 = new _0a0();

        public var id:int;
        public var name:String;
        public var description:String;
        public var _1uw:String;
        public var _1uY:String;
        public var TJ:Number;
        public var Zm:Vector.<int>;
        public var _0Mh:Vector.<int>;
        public var m0:_1Ta;
        public var _1ch:_1Ta;
        public var attack:_1Ta;
        public var defense:_1Ta;
        public var speed:_1Ta;
        public var dexterity:_1Ta;
        public var _1CS:_1Ta;
        public var O9:_1Ta;
        public var unlockCost:int;
        private var _17g:int;
        private var jf:Boolean;


        public function _1DB():Boolean{
            return (this.jf);
        }

        public function eR(_arg1:Boolean):void{
            if (this.jf != _arg1)
            {
                this.jf = _arg1;
                ((this.jf) && (this.selected.dispatch(this)));
            };
        }

        public function _0qk():int{
            return (this._17g);
        }

        public function _0nw(_arg1:int):void{
            this._17g = _arg1;
            this._0sP._1JT(this._17g);
        }


    }
}//package tn

