// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1JQ.X8

package 1JQ{
    import flash.utils.Dictionary;
    import 114.0ME;
    import rz.0Mw;
    import rz.lo;
    import rK.0HA;
    import 114.250;
    import rK.jr;
    import flash.display.DisplayObject;
    import rz.*;
    import tB.*;

    public class X8 implements 1Qt, LC {

        private const 0H-:Dictionary = new Dictionary();
        private const FN:0ME = new 1FD();

        private var _handler:0Mw;
        private var _factory:lo;

        public function X8(_arg1:lo, _arg2:0Mw=null){
            this._factory = _arg1;
            this._handler = ((_arg2) || (new 0Ct(this._factory)));
        }

        public function 0zg(_arg1:0HA):250{
            return ((this.0H-[_arg1.1Ti().Wv] = ((this.0H-[_arg1.1Ti().Wv]) || (this.04O(_arg1)))));
        }

        public function map(_arg1:Class):250{
            var _local2:0HA = new jr().allOf(_arg1);
            return (this.0zg(_local2));
        }

        public function 1w3(_arg1:0HA):0ME{
            return (((this.0H-[_arg1.1Ti().Wv]) || (this.FN)));
        }

        public function sJ(_arg1:Class):0ME{
            var _local2:0HA = new jr().allOf(_arg1);
            return (this.1w3(_local2));
        }

        public function 27D(_arg1:DisplayObject, _arg2:Class):void{
            this._handler.27D(_arg1, _arg2);
        }

        public function 08f(_arg1:Object):void{
            var _local2:Class = (_arg1.constructor as Class);
            this._handler.25M(_arg1, _local2);
        }

        public function 08i(_arg1:Object):void{
            this._factory.71(_arg1);
        }

        private function 04O(_arg1:0HA, _arg2:Class=null):250{
            return (new 1Gg(_arg1.1Ti(), this._handler));
        }


    }
}//package 1JQ

