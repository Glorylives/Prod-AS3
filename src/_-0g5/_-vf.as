// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0g5.vf

package 0g5{
    import _0OG._22M;
    import 0NI.guardsApprove;
    import 0NI.applyHooks;
    import 1f1.1Mq;

    public class vf {

        private var dM:_22M;

        public function vf(_arg1:_22M){
            this.dM = _arg1;
        }

        public function create(_arg1:1Mq):Object{
            var _local2:Class;
            var _local3:Object;
            if (guardsApprove(_arg1.OQ, this.dM))
            {
                _local2 = _arg1.commandClass;
                this.dM.map(_local2).1nL();
                _local3 = this.dM.getInstance(_local2);
                applyHooks(_arg1.1kC, this.dM);
                this.dM.sJ(_local2);
                return (_local3);
            }
            return (null);
        }


    }
}//package 0g5

