// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1E8.9P

package 1E8{
    public class 9P {

        public var type:Class;
        public var callback:Function;
        public var id:int;
        private var 0wv:1kN;
        private var count:int = 0;

        public function 9P(_arg1:int, _arg2:Class, _arg3:Function){
            this.type = _arg2;
            this.id = _arg1;
            this.callback = _arg3;
        }

        public function qR(_arg1:int):9P{
            var _local2:1kN;
            this.count = (this.count + _arg1);
            while (_arg1--)
            {
                _local2 = new this.type(this.id, this.callback);
                _local2.pool = this;
                ((this.0wv) && ((this.0wv.next = _local2)));
                _local2.gR = this.0wv;
                this.0wv = _local2;
            }
            return (this);
        }

        public function lh():1kN{
            var _local1:1kN = this.0wv;
            if (_local1)
            {
                this.0wv = this.0wv.gR;
                _local1.gR = null;
                _local1.next = null;
            } else
            {
                _local1 = new this.type(this.id, this.callback);
                _local1.pool = this;
                this.count++;
            }
            return (_local1);
        }

        public function 1sj():int{
            return (this.count);
        }

        function append(_arg1:1kN):void{
            ((this.0wv) && ((this.0wv.next = _arg1)));
            _arg1.gR = this.0wv;
            this.0wv = _arg1;
        }

        public function dispose():void{
            this.0wv = null;
        }


    }
}//package 1E8

