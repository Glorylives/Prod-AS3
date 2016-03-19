// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1n4.0LM

package 1n4{
    import 1qQ.0oB;

    public class 0LM implements 1Jo {

        private var 26-:String;
        private var tokens:Object;
        private var P:String = "";
        private var 24n:String = "";
        private var provider:0oB;


        public function 0tP(_arg1:String, _arg2:Object=null):0LM{
            this.26- = _arg1;
            this.tokens = _arg2;
            return (this);
        }

        public function setPrefix(_arg1:String):0LM{
            this.24n = _arg1;
            return (this);
        }

        public function setPostfix(_arg1:String):0LM{
            this.P = _arg1;
            return (this);
        }

        public function 1jM(_arg1:0oB):void{
            this.provider = _arg1;
        }

        public function getString():String{
            var _local2:String;
            var _local3:String;
            var _local1:String = this.26-;
            for (_local2 in this.tokens)
            {
                _local3 = this.tokens[_local2];
                if ((((_local3.charAt(0) == "{")) && ((_local3.charAt((_local3.length - 1)) == "}"))))
                {
                    _local3 = this.provider.getValue(_local3.substr(1, (_local3.length - 2)));
                }
                _local1 = _local1.replace((("{" + _local2) + "}"), _local3);
            }
            _local1 = _local1.replace(/\\n/g, "\n");
            return (((this.24n + _local1) + this.P));
        }


    }
}//package 1n4

