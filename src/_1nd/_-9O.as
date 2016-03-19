// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1nd.9O

package 1nd{
    import _Jy._1HZ;
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;
    import 1nd.*;

    final class 9O {

        private var 1m6:Object;
        private var hD:Object;

        public function 9O(){
            this.1m6 = {}
            this.hD = {}
        }

        public function register(_arg1:String, _arg2:String, _arg3:_1HZ):void{
            this.1m6[_arg1] = _arg3;
            this.hD[_arg1] = _arg2;
        }

        public function 1dP():Vector.<String>{
            var _local2:String;
            var _local1:Vector.<String> = new <String>[];
            for (_local2 in this.1m6)
            {
                _local1.push(((_local2 + " - ") + this.hD[_local2]));
            }
            return (_local1);
        }

        public function execute(_arg1:String):void{
            var _local2:Array = _arg1.split(" ");
            if (_local2.length == 0)
            {
                return;
            }
            var _local3:String = _local2.shift();
            var _local4:_1HZ = this.1m6[_local3];
            if (!_local4)
            {
                return;
            }
            if (_local2.length > 0)
            {
                _local4.dispatch.apply(this, _local2.join(" ").split(","));
            } else
            {
                _local4.dispatch.apply(this);
            }
        }

        public function 0Bx(_arg1:String):Boolean{
            var _local2:Array = _arg1.split(" ");
            return ((((_local2.length > 0)) && (!((this.1m6[_local2[0]] == null)))));
        }


    }
}//package 1nd

