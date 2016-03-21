// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0wp._lj

package _0wP{
    import _1i.*;

    public class _lj extends _0lM {

        private var _matcher:_1o;

        public function _lj(_arg1:_1o){
            _matcher = _arg1;
        }

        override public function matches(_arg1:Object):Boolean{
            return (!(_matcher.matches(_arg1)));
        }

        override public function describeTo(_arg1:Description):void{
            _arg1.appendText("not ")._1n8(_matcher);
        }


    }
}//package 0wp

