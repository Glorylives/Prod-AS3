// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI._ka

package _0NI{
    import flash.utils.getTimer;
    import _0Fr.*;

    public class _ka implements _1da {

        private var _1Z9:Object;
        private var _1kW:_0d8;

        public function _ka(_arg1:Object, _arg2:_0d8){
            this._1Z9 = _arg1;
            this._1kW = _arg2;
        }

        public function debug(_arg1, _arg2:Array=null):void{
            this._1kW.log(this._1Z9, 32, getTimer(), _arg1, _arg2);
        }

        public function info(_arg1, _arg2:Array=null):void{
            this._1kW.log(this._1Z9, 16, getTimer(), _arg1, _arg2);
        }

        public function _0K(_arg1, _arg2:Array=null):void{
            this._1kW.log(this._1Z9, 8, getTimer(), _arg1, _arg2);
        }

        public function error(_arg1, _arg2:Array=null):void{
            this._1kW.log(this._1Z9, 4, getTimer(), _arg1, _arg2);
        }

        public function _0bx(_arg1, _arg2:Array=null):void{
            this._1kW.log(this._1Z9, 2, getTimer(), _arg1, _arg2);
        }


    }
}//package 0NI

