// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0wp.0Zw

package _0wP{
    import _1i.*;

    public class _0Zw extends _0MW {

        private var _09E:Array;

        public function _0Zw(_arg1:Array){
            _09E = ((_arg1) || ([]));
        }

        override protected function matchesOrDescribesMismatch(_arg1:Object, _arg2:Description):Boolean{
            var _local3:_1o;
            for each (_local3 in 09E)
            {
                if (!_local3.matches(_arg1))
                {
                    _arg2._1n8(_local3).appendText(" ")._1dS(_local3, _arg1);
                    return (false);
                }
            }
            return (true);
        }

        override public function describeTo(_arg1:Description):void{
            _arg1._1PN("(", " and ", ")", _09E);
        }


    }
}//package 0wp

