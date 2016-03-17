// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0wp.lj

package 0wp{
    import 1i-.0lM;
    import 1i-.1o;
    import 1i-.Description;

    public class lj extends 0lM {

        private var _matcher:1o;

        public function lj(_arg1:1o){
            _matcher = _arg1;
        }

        override public function matches(_arg1:Object):Boolean{
            return (!(_matcher.matches(_arg1)));
        }

        override public function describeTo(_arg1:Description):void{
            _arg1.appendText("not ").1n8(_matcher);
        }


    }
}//package 0wp

