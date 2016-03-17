// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1i-.0MW

package 1i-{
    import flash.errors.IllegalOperationError;

    public class 0MW extends 0lM {


        override public function describeMismatch(_arg1:Object, _arg2:Description):void{
            matchesOrDescribesMismatch(_arg1, _arg2);
        }

        protected function matchesOrDescribesMismatch(_arg1:Object, _arg2:Description):Boolean{
            throw (new IllegalOperationError("DiagnosingMatcher#matches is abstract and must be overriden in a subclass"));
        }

        override public function matches(_arg1:Object):Boolean{
            return (matchesOrDescribesMismatch(_arg1, new 03j()));
        }


    }
}//package 1i-

