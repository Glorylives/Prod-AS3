// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//tn.0a0

package tn{
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class 0a0 {

        private const 0sP:Vector.<1iY> = new <1iY>[];
        private const map:Object = {};

        private var VI:1iY;
        private var F4:1iY;
        private var 17g:int;


        public function 1sj():int{
            return (this.0sP.length);
        }

        public function 0i1():1iY{
            return (this.VI);
        }

        public function 05i():1iY{
            return (this.F4);
        }

        public function 0c(_arg1:int):1iY{
            return (this.0sP[_arg1]);
        }

        public function 1UF(_arg1:1iY, _arg2:Boolean=false):void{
            _arg1.n4.add(this.1KC);
            this.0sP.push(_arg1);
            this.map[_arg1.id] = _arg1;
            this.sl(_arg1);
            if (_arg2)
            {
                this.VI = _arg1;
                if (!this.F4)
                {
                    this.F4 = _arg1;
                    _arg1.eR(true);
                };
            } else
            {
                if (_arg1.1DB())
                {
                    this.F4 = _arg1;
                };
            };
        }

        private function 1KC(_arg1:1iY):void{
            if (((_arg1.1DB()) && (!((this.F4 == _arg1)))))
            {
                ((this.F4) && (this.F4.eR(false)));
                this.F4 = _arg1;
            };
        }

        public function 1JT(_arg1:int):void{
            var _local2:1iY;
            this.17g = _arg1;
            for each (_local2 in this.0sP)
            {
                this.sl(_local2);
            };
        }

        private function sl(_arg1:1iY):void{
            if (!_arg1.1S1)
            {
                _arg1.setState(Lm.UNLISTED);
            } else
            {
                if (_arg1.0QA().0-T())
                {
                    _arg1.setState(this.0y8(_arg1));
                };
            };
        }

        private function 0y8(_arg1:1iY):Lm{
            if (!_arg1.1S1)
            {
                return (Lm.UNLISTED);
            };
            if ((((this.17g >= _arg1.unlockLevel)) && ((_arg1.CM == null))))
            {
                return (Lm.PURCHASABLE);
            };
            return (Lm.LOCKED);
        }

        public function 15c(_arg1:int):1iY{
            return (((this.map[_arg1]) || (this.VI)));
        }

        public function nf():Vector.<1iY>{
            var _local2:1iY;
            var _local1:Vector.<1iY> = new Vector.<1iY>();
            for each (_local2 in this.0sP)
            {
                if (_local2.0QA() != Lm.UNLISTED)
                {
                    _local1.push(_local2);
                };
            };
            return (_local1);
        }


    }
}//package tn

