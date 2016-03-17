// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0wp.0Zw

package 0wp{
    import 1i-.0MW;
    import 1i-.1o;
    import 1i-.Description;

    public class 0Zw extends 0MW {

        private var 09E:Array;

        public function 0Zw(_arg1:Array){
            09E = ((_arg1) || ([]));
        }

        override protected function matchesOrDescribesMismatch(_arg1:Object, _arg2:Description):Boolean{
            var _local3:1o;
            for each (_local3 in 09E)
            {
                if (!_local3.matches(_arg1))
                {
                    _arg2.1n8(_local3).appendText(" ").1dS(_local3, _arg1);
                    return (false);
                };
            };
            return (true);
        }

        override public function describeTo(_arg1:Description):void{
            _arg1.1PN("(", " and ", ")", 09E);
        }


    }
}//package 0wp

