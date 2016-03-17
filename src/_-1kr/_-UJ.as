// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1kr.UJ

package 1kr{
    import _0BB.lG;
    import qG.0bJ;
    import flash.net.URLLoaderDataFormat;
    import _Jy._04t;
    import _0BB.*;

    public class UJ implements Fu {

        [Inject]
        public var loader:lG;
        [Inject]
        public var setup:0bJ;
        private var 0Hx:Boolean;
        private var 0SP:int;
        private var dataFormat:String;

        public function UJ(){
            this.0Hx = true;
            this.0SP = 0;
            this.dataFormat = URLLoaderDataFormat.TEXT;
        }

        public function get complete():_04t{
            return (this.loader.complete);
        }

        public function 19U(_arg1:String):void{
            this.loader.19U(_arg1);
        }

        public function 0NT(_arg1:Boolean):void{
            this.0Hx = _arg1;
        }

        public function 1Je(_arg1:int):void{
            this.loader.1Je(_arg1);
        }

        public function sendRequest(_arg1:String, _arg2:Object):void{
            this.loader.sendRequest(this.0VW(_arg1), _arg2);
        }

        private function 0VW(_arg1:String):String{
            if (_arg1.charAt(0) != "/")
            {
                _arg1 = ("/" + _arg1);
            };
            return ((this.setup.1HF() + _arg1));
        }

        public function 1r6():Boolean{
            return (this.loader.PZ());
        }


    }
}//package 1kr

