// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.11J

package 0NI{
    import 0Fr.06y;

    public class 11J {

        private const 3T:String = "You can't change the guards and hooks on an existing mapping. Unmap first.";
        private const 1Xv:String = " The stacktrace for this error was stored at the time when you duplicated the mapping - you may have failed to add guards and hooks that were already present.";

        private var 0q7:Array;
        private var BD:Array;
        private var 0BU;
        private var 1VF;
        private var 0Zj:06y;
        private var rj:Boolean = false;

        public function 11J(_arg1:Array, _arg2:Array, _arg3, _arg4){
            this.0q7 = _arg1;
            this.BD = _arg2;
            this.0BU = _arg3;
            this.1VF = _arg4;
            super();
        }

        public function get c3():Boolean{
            return (this.rj);
        }

        public function 0gc():void{
            this.rj = false;
            this.0Zj = new 06y((this.3T + this.1Xv), this.0BU, this.1VF);
        }

        public function 1K9(_arg1:Array, _arg2:Array):void{
            if (((!(this.0ln(this.0q7, _arg1))) || (!(this.0ln(this.BD, _arg2)))))
            {
                ((this.0qd()) || (this.2-T()));
            }
            this.rj = true;
            this.0Zj = null;
        }

        public function 1LZ(_arg1:Array):void{
            if (this.0Zv(this.0q7, _arg1))
            {
                this.2-T();
            }
        }

        public function 0zI(_arg1:Array):void{
            if (this.0Zv(this.BD, _arg1))
            {
                this.2-T();
            }
        }

        private function 0Zv(_arg1:Array, _arg2:Array):Boolean{
            var _local3:*;
            _arg2 = this.1mf(_arg2);
            for each (_local3 in _arg2)
            {
                if (_arg1.indexOf(_local3) == -1)
                {
                    return (true);
                }
            }
            return (false);
        }

        private function 0ln(_arg1:Array, _arg2:Array):Boolean{
            var _local3:int;
            _arg1 = _arg1.slice();
            if (_arg1.length != _arg2.length)
            {
                return (false);
            }
            var _local4:uint = _arg2.length;
            var _local5:uint;
            while (_local5 < _local4)
            {
                _local3 = _arg1.indexOf(_arg2[_local5]);
                if (_local3 == -1)
                {
                    return (false);
                }
                _arg1.splice(_local3, 1);
                _local5++;
            }
            return (true);
        }

        public function 1mf(_arg1:Array):Array{
            var _local3:*;
            var _local2:Array = [];
            for each (_local3 in _arg1)
            {
                if ((_local3 is Array))
                {
                    _local2 = _local2.concat(this.1mf((_local3 as Array)));
                } else
                {
                    _local2.push(_local3);
                }
            }
            return (_local2);
        }

        private function 2-T():void{
            throw (new 06y(this.3T, this.0BU, this.1VF));
        }

        private function 0qd():Boolean{
            if (this.0Zj)
            {
                throw (this.0Zj);
            }
            return (false);
        }


    }
}//package 0NI

