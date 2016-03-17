// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1nd.Console

package 1nd{
    import 1HH.0xD;
    import _Jy._1HZ;
    import __AS3__.vec.Vector;

    public final class Console {

        private var hash:9O;
        private var history:0vb;

        public function Console(){
            this.hash = new 9O();
            this.history = new 0vb();
        }

        public function register(_arg1:0xD, _arg2:_1HZ):void{
            this.hash.register(_arg1.name, _arg1.description, _arg2);
        }

        public function uF(_arg1:String):Boolean{
            return (this.hash.0Bx(_arg1));
        }

        public function execute(_arg1:String):void{
            this.history.add(_arg1);
            this.hash.execute(_arg1);
        }

        public function 1dP():Vector.<String>{
            return (this.hash.1dP());
        }

        public function 0Vo():String{
            return (this.history.11b());
        }

        public function 20G():String{
            return (this.history.18g());
        }


    }
}//package 1nd

