// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5n.em

package _5n{
import _1nd._1Qv;

public class _em extends _1Qv {

        private static const _1zy:String = "[{NAME}] [0x33FF33:{/x {MEAN}ms (min {MIN}ms, max {MAX}ms)]";
        private static const COUNT:int = 10;

        private var _0lz:Vector.<int>;
        private var index:int;
        private var count:int;
        public var _1N6:int;
        public var mean:int;
        public var max:int;
        public var min:int;

        public function _em(_arg1:String){
            super(_arg1);
            this._0lz = new Vector.<int>(COUNT, true);
            this.index = 0;
            this._1N6 = 0;
            this.count = 0;
            this.min = int.MAX_VALUE;
            this.max = -1;
        }

        public function Q3(_arg1:int):void{
            if (this.count < COUNT)
            {
                this._1N6 = (this._1N6 + _arg1);
                this.count++;
                this._0lz[this.index] = _arg1;
            } else
            {
                this._1N6 = (this._1N6 - this._0lz[this.index]);
                this._1N6 = (this._1N6 + _arg1);
                this._0lz[this.index] = _arg1;
            };
            if (++this.index == COUNT)
            {
                this.index = 0;
            };
            this.mean = (this._1N6 / this.count);
            if (_arg1 > this.max)
            {
                this.max = _arg1;
            };
            if (_arg1 < this.min)
            {
                this.min = _arg1;
            };
            data = _1zy.replace("{NAME}", name).replace("{MEAN}", this.mean).replace("{MIN}", this.min).replace("{MAX}", this.max);
        }


    }
}//package 5n

