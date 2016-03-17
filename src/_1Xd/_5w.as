// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Xd.5w

package _1Xd{
import _1i.Description;
import _1i._0lM;

import flash.utils.getQualifiedClassName;

    public class _5w extends _0lM {

        private var _c:String;
        private var F1:Class;

        public function _5w(_arg1:Class){
            F1 = _arg1;
            _c = getQualifiedClassName(_arg1);
        }

        override public function describeTo(_arg1:Description):void{
            _arg1.appendText("an instance _of ").appendText(_c);
        }

        override public function matches(_arg1:Object):Boolean{
            return ((_arg1 is F1));
        }


    }
}//package 1Xd

