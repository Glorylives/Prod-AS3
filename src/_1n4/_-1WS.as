// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1n4.1WS

package 1n4{
    import 1qQ.0oB;

    public class 1WS implements 1Jo {

        private var string:String;
        private var 24n:String;
        private var P:String;

        public function 1WS(_arg1:String=""){
            this.string = _arg1;
            this.24n = "";
            this.P = "";
        }

        public function setString(_arg1:String):1WS{
            this.string = _arg1;
            return (this);
        }

        public function setPrefix(_arg1:String):1WS{
            this.24n = _arg1;
            return (this);
        }

        public function setPostfix(_arg1:String):1WS{
            this.P = _arg1;
            return (this);
        }

        public function 1jM(_arg1:0oB):void{
        }

        public function getString():String{
            return (((this.24n + this.string) + this.P));
        }


    }
}//package 1n4

