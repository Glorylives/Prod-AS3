// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//sc.3A

package _sc{
import _0OG._03A;

import flash.utils.Dictionary;
import flash.utils.getQualifiedClassName;

    public class _3A {

        public var ctor:_18e;
        public var injectionPoints:_0je;
        public var _1iP:_1W;
        private var KG:Boolean;

        public function _3A(_arg1:Boolean=true){
            if (_arg1)
            {
                this.ctor = new _15R();
            };
        }

        public function _1uE(_arg1:Array, _arg2:Array=null, _arg3:uint=2147483647, _arg4:Dictionary=null):_3A{
            this.ctor = new 18e(this._0mb(_arg1, ((_arg2) || ([]))), _arg3, _arg4);
            return (this);
        }

        public function _1SL(_arg1:String, _arg2:Class, _arg3:String="", _arg4:Boolean=false, _arg5:Dictionary=null):_3A{
            if (this.KG)
            {
                throw (new _03A("Can't add injection point after post construct method"));
            };
            this.gj(new _UV(((getQualifiedClassName(_arg2) + "|") + _arg3), _arg1, _arg4, _arg5));
            return (this);
        }

        public function 0c-(_arg1:String, _arg2:Array, _arg3:Array=null, _arg4:uint=2147483647, _arg5:Boolean=false, _arg6:Dictionary=null):3A{
            if (this.KG)
            {
                throw (new 03A("Can't add injection point after post construct method"));
            };
            this.gj(new 09S(_arg1, this.0mb(_arg2, ((_arg3) || ([]))), Math.min(_arg4, _arg2.length), _arg5, _arg6));
            return (this);
        }

        public function 1n6(_arg1:String, _arg2:Array, _arg3:Array=null, _arg4:uint=2147483647):3A{
            this.KG = true;
            this.gj(new 0Zz(_arg1, this.0mb(_arg2, ((_arg3) || ([]))), Math.min(_arg4, _arg2.length), 0));
            return (this);
        }

        public function vX(_arg1:String, _arg2:Array, _arg3:Array=null, _arg4:uint=2147483647):3A{
            var _local5:1-W = new 1-W(_arg1, this.0mb(_arg2, ((_arg3) || ([]))), Math.min(_arg4, _arg2.length), 0);
            if (this.1iP)
            {
                this.1iP.last.next = _local5;
                this.1iP.last = _local5;
            } else
            {
                this.1iP = _local5;
                this.1iP.last = _local5;
            };
            return (this);
        }

        public function gj(_arg1:0je):void{
            if (this.injectionPoints)
            {
                this.injectionPoints.last.next = _arg1;
                this.injectionPoints.last = _arg1;
            } else
            {
                this.injectionPoints = _arg1;
                this.injectionPoints.last = _arg1;
            };
        }

        private function 0mb(_arg1:Array, _arg2:Array):Array{
            var _local3:Array = new Array(_arg1.length);
            var _local4:int = _local3.length;
            while (_local4--)
            {
                _local3[_local4] = ((getQualifiedClassName(_arg1[_local4]) + "|") + ((_arg2[_local4]) || ("")));
            };
            return (_local3);
        }


    }
}//package _sc

