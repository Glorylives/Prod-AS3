// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0g5.j3

package 0g5{
    import 1f1.0bs;
    import __AS3__.vec.Vector;
    import 1f1.1Mq;
    import 0Xi.fE;
    import _0OG._22M;
    import flash.events.Event;

    public class j3 {

        private var 0BU:0bs;
        private var Xn:Vector.<1Mq>;
        private var LF:fE;
        private var dM:_22M;
        private var Ty:Class;
        private var _factory:vf;

        public function j3(_arg1:0bs, _arg2:fE, _arg3:_22M, _arg4:Class){
            this.0BU = _arg1;
            this.LF = _arg2;
            this.dM = _arg3.1Sb();
            this.Ty = _arg4;
            this._factory = new vf(this.dM);
        }

        public function execute(_arg1:Event):void{
            var _local2:Class = (_arg1["constructor"] as Class);
            if (this.1iW(_local2))
            {
                this.Uo(_arg1, _local2);
            }
        }

        private function 1iW(_arg1:Class):Boolean{
            return (((!(this.Ty)) || ((_arg1 == this.Ty))));
        }

        private function 208(_arg1:Class):Boolean{
            return (!((_arg1 == Event)));
        }

        private function Vh(_arg1:Event, _arg2:Class):void{
            this.dM.map(Event).1eo(_arg1);
            if (this.208(_arg2))
            {
                this.dM.map(((this.Ty) || (_arg2))).1eo(_arg1);
            }
        }

        private function 0dA(_arg1:Class):void{
            this.dM.sJ(Event);
            if (this.208(_arg1))
            {
                this.dM.sJ(((this.Ty) || (_arg1)));
            }
        }

        private function Uo(_arg1:Event, _arg2:Class):void{
            var _local3:Object;
            var _local4:1Mq = this.LF.0kc;
            while (_local4)
            {
                _local4.1K9();
                this.Vh(_arg1, _arg2);
                _local3 = this._factory.create(_local4);
                this.0dA(_arg2);
                if (_local3)
                {
                    this.0RD(_local4);
                    _local3.execute();
                }
                _local4 = _local4.next;
            }
        }

        private function 0RD(_arg1:1Mq):void{
            if (_arg1.1-y)
            {
                this.0BU.oE(_arg1);
            }
        }


    }
}//package 0g5

