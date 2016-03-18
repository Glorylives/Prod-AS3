// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1n4.1bS

package _1n4{
import _1qQ._0oB;

public class _1bS implements _1Jo {

        private const _0wr:RegExp = /(\{([^\{]+?)\})/gi;

        private var _0RQ:String = "";
        private var zK:Array;
        private var provider:_0oB;


        public function setPattern(_arg1:String):_1bS{
            this._0RQ = _arg1;
            return (this);
        }

        public function _1jM(_arg1:_0oB):void{
            this.provider = _arg1;
        }

        public function getString():String{
            var _local2:String;
            this.zK = this._0RQ.match(this._0wr);
            var _local1:String = this._0RQ;
            for each (_local2 in this.zK)
            {
                _local1 = _local1.replace(_local2, this.provider.getValue(_local2.substr(1, (_local2.length - 2))));
            };
            return (_local1.replace(/\\n/g, "\n"));
        }


    }
}//package 1n4

