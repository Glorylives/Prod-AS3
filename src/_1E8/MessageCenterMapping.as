// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1E8.MessageCenterMapping

package 1E8{
    import _0OG._22M;
    import 0qs.1EL;
    import 0qs.1rz;
    import 0qs.*;

    public class MessageCenterMapping implements 1rz {

        private const zk:NullHandlerProxy = new NullHandlerProxy();

        private var id:int;
        private var kf:_22M;
        private var 0ef:Class;
        private var 2l:int = 1;
        private var handler:1EL;

        public function MessageCenterMapping(){
            this.handler = this.zk;
            super();
        }

        public function setID(_arg1:int):1rz{
            this.id = _arg1;
            return (this);
        }

        public function setInjector(_arg1:_22M):MessageCenterMapping{
            this.kf = _arg1;
            return (this);
        }

        public function hG(_arg1:Class):1rz{
            this.0ef = _arg1;
            return (this);
        }

        public function 1V6(_arg1:Class):1rz{
            this.handler = new WC().setType(_arg1).setInjector(this.kf);
            return (this);
        }

        public function 20J(_arg1:Function):1rz{
            this.handler = new 1tA().setMethod(_arg1);
            return (this);
        }

        public function 1PS(_arg1:int):1rz{
            this.2l = _arg1;
            return (this);
        }

        public function case ():9P{
            var _local1:9P = new 9P(this.id, this.0ef, this.handler.getMethod());
            _local1.qR(this.2l);
            return (_local1);
        }


    }
}//package 1E8

import 0qs.*;

class NullHandlerProxy implements 1EL {


    public function getMethod():Function{
        return (null);
    }


}

