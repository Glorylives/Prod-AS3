// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Xi.1Ja

package 0Xi{
    import flash.utils.Dictionary;
    import 1f1.0bs;
    import 0rN.0Kw;
    import 1f1.1Mq;
    import 0rN.*;

    public class 1Ja implements 17U, KS {

        private const Xn:Dictionary = new Dictionary();

        private var 0BU:0bs;

        public function 1Ja(_arg1:0bs){
            this.0BU = _arg1;
        }

        public function 0Hs(_arg1:Class):0Kw{
            return (((this.locked(this.Xn[_arg1])) || (this.pN(_arg1))));
        }

        public function 1TZ(_arg1:Class):void{
            var _local2:1Mq = this.Xn[_arg1];
            ((_local2) && (this.0BU.oE(_local2)));
            delete this.Xn[_arg1];
        }

        public function 11D():void{
            var _local1:1Mq;
            for each (_local1 in this.Xn)
            {
                this.0BU.oE(_local1);
                delete this.Xn[_local1.commandClass];
            };
        }

        private function pN(_arg1:Class):mU{
            var _local2:mU = new mU(_arg1);
            this.0BU.1cM(_local2);
            this.Xn[_arg1] = _local2;
            return (_local2);
        }

        private function locked(_arg1:mU):mU{
            if (!_arg1)
            {
                return (null);
            };
            _arg1.0gc();
            return (_arg1);
        }


    }
}//package 0Xi

