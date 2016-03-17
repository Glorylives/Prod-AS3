// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1n4.1WS

package _1n4{
import _1qQ._0oB;

public class _1WS implements _1Jo {

        private var string:String;
        private var _24n:String;
        private var P:String;

        public function _1WS(_arg1:String=""){
            this.string = _arg1;
            this._24n = "";
            this.P = "";
        }

        public function setString(_arg1:String):_1WS{
            this.string = _arg1;
            return (this);
        }

        public function setPrefix(_arg1:String):_1WS{
            this._24n = _arg1;
            return (this);
        }

        public function setPostfix(_arg1:String):_1WS{
            this.P = _arg1;
            return (this);
        }

        public function _1jM(_arg1:_0oB):void{
        }

        public function getString():String{
            return (((this._24n + this.string) + this.P));
        }


    }
}//package 1n4

