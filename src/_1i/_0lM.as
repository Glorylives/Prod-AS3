// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1i-.0lM

package _1i{
    import flash.errors.IllegalOperationError;

    public class _0lM implements _1o {


        public function describeMismatch(_arg1:Object, _arg2:Description):void{
            _arg2.appendText("was ")._1VJ(_arg1);
        }

        public function matches(_arg1:Object):Boolean{
            throw (new IllegalOperationError("BaseMatcher#matches must be override by subclass"));
        }

        public function describeTo(_arg1:Description):void{
            throw (new IllegalOperationError("BaseMatcher#describeTo must be override by subclass"));
        }

        public function toString():String{
            return (_0ZH.toString(this));
        }


    }
}//package 1i-

