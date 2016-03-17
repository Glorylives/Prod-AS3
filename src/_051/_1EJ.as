// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//051.1EJ

package _051{
    import _0Fr._dW;
    import _0Fr._1W0;
    import _0Fr.*;

    public class _1EJ implements _0d8 {

        private const Cs:_1JW = new _1JW();

        private var _1Hl:_dW;

        public function _1EJ(_arg1:_dW){
            this._1Hl = _arg1;
        }

        public function log(_arg1:Object, _arg2:uint, _arg3:int, _arg4:String, _arg5:Array=null):void{
            trace(((((((((_arg3 + " ") + _1W0.NAME[_arg2]) + " ") + this._1Hl) + " ") + _arg1) + " - ") + this.Cs._2J(_arg4, _arg5)));
        }


    }
}//package 051

