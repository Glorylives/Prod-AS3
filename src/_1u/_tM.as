// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1u-.tM

package _1u{
    import flash.geom.Rectangle;

    public class _tM {

        public var _1Xo:Rectangle;
        public var _1jC:int;
        public var _1Se:int;
        public var Kv:int;
        public var _2N:Vector.<_1Ys>;

        public function _tM(){
            this._2N = new Vector.<_1Ys>();
            super();
            this._1Xo = new Rectangle(0, 0, 600, 300);
            this._1jC = 20;
            this._1Se = 10;
            this.Kv = 150;
        }

        public function _0Bn(_arg1:_1Ys):void{
            this._2N.push(_arg1);
            if (this._2N.length > this.Kv)
            {
                this._2N.shift();
            }
        }


    }
}//package 1u-

