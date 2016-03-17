// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1n4.1cA

package _1n4{
    import _04_._1JZ;

import _1qQ._0oB;

public class _1cA implements _1Jo {

        public var key:String;
        public var tokens:Object;
        private var P:String = "";
        private var _24n:String = "";
        private var map:_0oB;


        public static function fromJSON(_arg1:String):_1cA{
            var _local2:Object = JSON.parse(_arg1);
            return (new (_1cA)().setParams(_local2.key, _local2.tokens));
        }

        public static function _1SQ(_arg1:String, _arg2:Object=null):String{
            var _local3:_1cA = new (_1cA)();
            _local3.setParams(_arg1, _arg2);
            var _local4:_0oB = _1JZ._0JF().getInstance(_0oB);
            _local3._1jM(_local4);
            return (_local3.getString());
        }

        public static function lO(_arg1:String):String{
            var _local2:_1cA;
            var _local3:_0oB;
            if (_arg1.charAt(0) == "{")
            {
                _local2 = _1cA.fromJSON(_arg1);
                _local3 = _1JZ._0JF().getInstance(_0oB);
                _local2._1jM(_local3);
                return (_local2.getString());
            };
            return (_arg1);
        }

        public static function _1b2(_arg1:String, _arg2:Object=null, _arg3:String="", _arg4:String=""):String{
            var _local6:String;
            var _local7:String;
            var _local8:String;
            var _local5:String = _1I(_arg1);
            for (_local6 in _arg2)
            {
                _local7 = _arg2[_local6];
                _local8 = (("{" + _local6) + "}");
                while (_local5.indexOf(_local8) != -1)
                {
                    _local5 = _local5.replace(_local8, _local7);
                };
            };
            _local5 = _local5.replace(/\\n/g, "\n");
            return (((_arg3 + _local5) + _arg4));
        }

        public static function DO(_arg1:String, _arg2:Object=null):String{
            var _local3:_1cA = new (_1cA)();
            _local3.setParams(_arg1, _arg2);
            var _local4:_0oB = _1JZ._0JF().getInstance(_0oB);
            _local3._1jM(_local4);
            return (_local3.getString());
        }

        private static function _1I(_arg1:String):String{
            var _local2:Boolean = ((((!((_arg1 == null))) && ((_arg1.charAt(0) == "{")))) && ((_arg1.charAt((_arg1.length - 1)) == "}")));
            return (((_local2) ? _arg1.substr(1, (_arg1.length - 2)) : _arg1));
        }


        public function _S():String{
            return (JSON.stringify({
                key:this.key,
                tokens:this.tokens
            }));
        }

        public function setParams(_arg1:String, _arg2:Object=null):_1cA{
            this.key = ((_arg1) || (""));
            this.tokens = _arg2;
            return (this);
        }

        public function setPrefix(_arg1:String):_1cA{
            this._24n = _arg1;
            return (this);
        }

        public function setPostfix(_arg1:String):_1cA{
            this.P = _arg1;
            return (this);
        }

        public function _1jM(_arg1:_0oB):void{
            this.map = _arg1;
        }

        public function getString():String{
            var _local3:String;
            var _local4:String;
            var _local5:String;
            var _local1:String = _1I(this.key);
            var _local2:String = ((this.map.getValue(_local1)) || (""));
            for (_local3 in this.tokens)
            {
                _local4 = this.tokens[_local3];
                if ((((_local4.charAt(0) == "{")) && ((_local4.charAt((_local4.length - 1)) == "}"))))
                {
                    _local4 = this.map.getValue(_local4.substr(1, (_local4.length - 2)));
                };
                _local5 = (("{" + _local3) + "}");
                while (_local2.indexOf(_local5) != -1)
                {
                    _local2 = _local2.replace(_local5, _local4);
                };
            };
            _local2 = _local2.replace(/\\n/g, "\n");
            return (((this._24n + _local2) + this.P));
        }


    }
}//package 1n4

