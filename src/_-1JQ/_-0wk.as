// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1JQ.0wk

package 1JQ{
    import flash.events.EventDispatcher;
    import flash.utils.Dictionary;
    import _0OG._22M;
    import rz.1cl;
    import rK.0sO;
    import rz.0Hp;
    import 0NI.guardsApprove;
    import 0NI.applyHooks;
    import __AS3__.vec.Vector;
    import rz.*;

    public class 0wk extends EventDispatcher implements lo {

        private const 0GH:Dictionary = new Dictionary();

        private var dM:_22M;

        public function 0wk(_arg1:_22M){
            this.dM = _arg1;
        }

        public function og(_arg1:Object, _arg2:1cl):Object{
            return (((this.0GH[_arg1]) ? this.0GH[_arg1][_arg2] : null));
        }

        public function ek(_arg1:Object, _arg2:Class, _arg3:Array):Array{
            var _local5:0sO;
            var _local6:Object;
            var _local7:1cl;
            var _local4:Array = [];
            for each (_local7 in _arg3)
            {
                _local6 = this.og(_arg1, _local7);
                if (!_local6)
                {
                    _local5 = _local7.qU;
                    this.0fR(_local5, _arg2, _arg1);
                    _local6 = this.16s(_arg1, _local7);
                    this.1Mt(_local5, _arg2, _arg1);
                }
                if (_local6)
                {
                    _local4.push(_local6);
                }
            }
            return (_local4);
        }

        public function 71(_arg1:Object):void{
            var _local3:Object;
            var _local2:Dictionary = this.0GH[_arg1];
            if (!_local2)
            {
                return;
            }
            if (hasEventListener(0Hp.1mr))
            {
                for (_local3 in _local2)
                {
                    dispatchEvent(new 0Hp(0Hp.1mr, _local2[_local3], _arg1, (_local3 as 1cl), this));
                }
            }
            delete this.0GH[_arg1];
        }

        public function qa():void{
            var _local1:Object;
            for (_local1 in this.0GH)
            {
                this.71(_local1);
            }
        }

        private function 16s(_arg1:Object, _arg2:1cl):Object{
            var _local3:Object = this.og(_arg1, _arg2);
            if (_local3)
            {
                return (_local3);
            }
            if (guardsApprove(_arg2.OQ, this.dM))
            {
                _local3 = this.dM.getInstance(_arg2.1Y1);
                this.dM.map(_arg2.1Y1).1eo(_local3);
                applyHooks(_arg2.1kC, this.dM);
                this.dM.sJ(_arg2.1Y1);
                this.Su(_local3, _arg1, _arg2);
            }
            return (_local3);
        }

        private function Su(_arg1:Object, _arg2:Object, _arg3:1cl):void{
            this.0GH[_arg2] = ((this.0GH[_arg2]) || (new Dictionary()));
            this.0GH[_arg2][_arg3] = _arg1;
            if (hasEventListener(0Hp.ys))
            {
                dispatchEvent(new 0Hp(0Hp.ys, _arg1, _arg2, _arg3, this));
            }
        }

        private function 0fR(_arg1:0sO, _arg2:Class, _arg3:Object):void{
            var _local4:Class;
            var _local5:Vector.<Class> = this.V9(_arg1, _arg2);
            for each (_local4 in _local5)
            {
                this.dM.map(_local4).1eo(_arg3);
            }
        }

        private function 1Mt(_arg1:0sO, _arg2:Class, _arg3:Object):void{
            var _local4:Class;
            var _local5:Vector.<Class> = this.V9(_arg1, _arg2);
            for each (_local4 in _local5)
            {
                if (this.dM.gL(_local4))
                {
                    this.dM.sJ(_local4);
                }
            }
        }

        private function V9(_arg1:0sO, _arg2:Class):Vector.<Class>{
            var _local3:Vector.<Class> = _arg1.26j.concat(_arg1.Rl);
            if (_local3.indexOf(_arg2) == -1)
            {
                _local3.push(_arg2);
            }
            return (_local3);
        }


    }
}//package 1JQ

