// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0oP.Ua

package 0oP{
    public class Ua {

        private var value;
        private var  true:dk;
        private var token:BS;

        public function Ua(_arg1:String){
            this. true = new dk(_arg1);
            this.0oC();
            this.value = this.un();
        }

        public function getValue(){
            return (this.value);
        }

        private function 0oC():BS{
            return ((this.token = this. true.J3()));
        }

        private function 0oD():Array{
            var _local1:Array = new Array();
            this.0oC();
            if (this.token.type == gd.6d)
            {
                return (_local1);
            };
            while (true)
            {
                _local1.push(this.un());
                this.0oC();
                if (this.token.type == gd.6d)
                {
                    return (_local1);
                };
                if (this.token.type == gd.226)
                {
                    this.0oC();
                } else
                {
                    this. true.1xT(("Expecting ] or , but found " + this.token.value));
                };
            };
            return (null);
        }

        private function 237():Object{
            var _local2:String;
            var _local1:Object = new Object();
            this.0oC();
            if (this.token.type == gd.1aB)
            {
                return (_local1);
            };
            while (true)
            {
                if (this.token.type == gd.0oZ)
                {
                    _local2 = String(this.token.value);
                    this.0oC();
                    if (this.token.type == gd.1oN)
                    {
                        this.0oC();
                        _local1[_local2] = this.un();
                        this.0oC();
                        if (this.token.type == gd.1aB)
                        {
                            return (_local1);
                        };
                        if (this.token.type == gd.226)
                        {
                            this.0oC();
                        } else
                        {
                            this. true.1xT(("Expecting } or , but found " + this.token.value));
                        };
                    } else
                    {
                        this. true.1xT(("Expecting : but found " + this.token.value));
                    };
                } else
                {
                    this. true.1xT(("Expecting string but found " + this.token.value));
                };
            };
            return (null);
        }

        private function un():Object{
            if (this.token == null)
            {
                this. true.1xT("Unexpected end of input");
            };
            switch (this.token.type)
            {
                case gd.22c:
                    return (this.237());
                case gd.08a:
                    return (this.0oD());
                case gd.0oZ:
                case gd.10s:
                case gd.1tH:
                case gd.0_CU:
                case gd.NULL:
                    return (this.token.value);
                default:
                    this. true.1xT(("Unexpected " + this.token.value));
            };
            return (null);
        }


    }
}//package 0oP

