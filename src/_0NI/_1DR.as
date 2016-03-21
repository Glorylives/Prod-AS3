// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.1DR

package _0NI{
    import _0Fr.*;

    public class _1DR implements _0d8 {

        private const _0lf:Vector.<_0d8> = new Vector.<_0d8>();

        private var _1B2:uint = 16;


        public function get _0ZO():uint{
            return (this._1B2);
        }

        public function set _0ZO(_arg1:uint):void{
            this._1B2 = _arg1;
        }

        public function _1uk(_arg1:Object):_1da{
            return (new _ka(_arg1, this));
        }

        public function uu(_arg1:_0d8):void{
            this._0lf.push(_arg1);
        }

        public function log(_arg1:Object, _arg2:uint, _arg3:int, _arg4:String, _arg5:Array=null):void{
            var _local6:_0d8;
            if (_arg2 > this._1B2)
            {
                return;
            }
            for each (_local6 in this._0lf)
            {
                _local6.log(_arg1, _arg2, _arg3, _arg4, _arg5);
            }
        }


    }
}//package 0NI

