// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Xi.fE

package 0Xi{
    import 1f1.1Mq;

    public class fE {

        protected var 17a:1Mq;


        public function get 0kc():1Mq{
            return (this.17a);
        }

        public function set 0kc(_arg1:1Mq):void{
            if (_arg1 !== this.17a)
            {
                this.17a = _arg1;
            };
        }

        public function get 0wv():1Mq{
            if (!this.17a)
            {
                return (null);
            };
            var _local1:1Mq = this.17a;
            while (_local1.next)
            {
                _local1 = _local1.next;
            };
            return (_local1);
        }

        public function remove(_arg1:1Mq):void{
            var _local2:1Mq = this.17a;
            if (_local2 == _arg1)
            {
                this.17a = _arg1.next;
            };
            while (_local2)
            {
                if (_local2.next == _arg1)
                {
                    _local2.next = _arg1.next;
                };
                _local2 = _local2.next;
            };
        }


    }
}//package 0Xi

