// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1n4.1bS

package 1n4{
    import 1qQ.0oB;

    public class 1bS implements 1Jo {

        private const 0wr:RegExp = /(\{([^\{]+?)\})/gi;

        private var 0RQ:String = "";
        private var zK:Array;
        private var provider:0oB;


        public function setPattern(_arg1:String):1bS{
            this.0RQ = _arg1;
            return (this);
        }

        public function 1jM(_arg1:0oB):void{
            this.provider = _arg1;
        }

        public function getString():String{
            var _local2:String;
            this.zK = this.0RQ.match(this.0wr);
            var _local1:String = this.0RQ;
            for each (_local2 in this.zK)
            {
                _local1 = _local1.replace(_local2, this.provider.getValue(_local2.substr(1, (_local2.length - 2))));
            };
            return (_local1.replace(/\\n/g, "\n"));
        }


    }
}//package 1n4

