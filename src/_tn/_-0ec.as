// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//tn.0ec

package tn{
    import _Jy._1HZ;
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class 0ec {

        public static const 0R9:int = 782;

        public const selected:_1HZ = new _1HZ(0dE);
        private const map:Object = {};
        private const classes:Vector.<0dE> = new <0dE>[];

        private var count:uint = 0;
        private var 0b1:0dE;


        public function 1sj():uint{
            return (this.count);
        }

        public function 1Pg(_arg1:int):0dE{
            return (this.classes[_arg1]);
        }

        public function 7k(_arg1:int):0dE{
            return ((this.map[_arg1] = ((this.map[_arg1]) || (this.1dA()))));
        }

        private function 1dA():0dE{
            var _local1:0dE = new 0dE();
            _local1.selected.add(this.0bb);
            this.count = this.classes.push(_local1);
            return (_local1);
        }

        private function 0bb(_arg1:0dE):void{
            if (this.0b1 != _arg1)
            {
                ((this.0b1) && (this.0b1.eR(false)));
                this.0b1 = _arg1;
                this.selected.dispatch(_arg1);
            };
        }

        public function 0NO():0dE{
            return (((this.0b1) || (this.7k(0R9))));
        }

        public function LW(_arg1:int):1iY{
            var _local2:1iY;
            var _local3:0dE;
            for each (_local3 in this.classes)
            {
                _local2 = _local3.0sP.15c(_arg1);
                if (_local2 != _local3.0sP.0i1()) break;
            };
            return (_local2);
        }


    }
}//package tn

