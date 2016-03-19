// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5n.1aE

package _5n{
import _2b._0BY;

public class _1aE implements _1IC {

        [Inject]
        public var _1XE:_0BY;
        private var aM:Object;

        public function _1aE(){
            this.aM = {}
        }

        public function _0I(_arg1:String, _arg2:int):void{
            var _local3:_em = (this.aM[_arg1] = ((this.aM[_arg1]) || (new _em(_arg1))));
            _local3.Q3(_arg2);
            this._1XE.dispatch(_local3);
        }


    }
}//package 5n

