// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1E8.23r

package 1E8{

    import _0OG._22M;
    import 0qs.1rz;

    import 0qs.*;

    public class 23r implements 0MV, J1 {

        private static const 135:int = 0x0100;

        private const 0C6:Vector.<MessageCenterMapping> = new Vector.<MessageCenterMapping>(135, true);
        private const q9:Vector.<9P> = new Vector.<9P>(135, true);

        private var kf:_22M;


        public function setInjector(_arg1:_22M):23r{
            this.kf = _arg1;
            return (this);
        }

        public function map(_arg1:int):1rz{
            return ((this.0C6[_arg1] = ((this.0C6[_arg1]) || (this.0pQ(_arg1)))));
        }

        public function sJ(_arg1:int):void{
            ((this.q9[_arg1]) && (this.q9[_arg1].dispose()));
            this.q9[_arg1] = null;
            this.0C6[_arg1] = null;
        }

        private function 0pQ(_arg1:int):MessageCenterMapping{
            return ((new MessageCenterMapping().setInjector(this.kf).setID(_arg1) as MessageCenterMapping));
        }

        public function lh(_arg1:int):1kN{
            var _local2:9P = (this.q9[_arg1] = ((this.q9[_arg1]) || (this.case (_arg1))));
            return (_local2.lh());
        }

        private function case (_arg1:uint):9P{
            var _local2:MessageCenterMapping = this.0C6[_arg1];
            return (((_local2) ? _local2.case () : null));
        }


    }
}//package 1E8

