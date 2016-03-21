// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1qQ.21w

package 1qQ{
    import flash.net.SharedObject;
    import flash.utils.Dictionary;



    public class 21w implements 0Uh {

        public static const 0z7:String = "en";

        private var 7O:SharedObject;
        private var language:String;
        private var 0XO:Dictionary;

        public function 21w(){
            this.0XO = this.1AT();
            super();
            try
            {
                this.7O = SharedObject.getLocal("RotMG", "/");
            } catch(error:Error)
            {
            }
        }

        public function 1Jp():String{
            return ((this.language = ((this.language) || (this.0cQ()))));
        }

        private function 0cQ():String{
            return (((this.7O.data.locale) || (0z7)));
        }

        public function so(_arg1:String):void{
            this.language = _arg1;
            try
            {
                this.7O.data.locale = _arg1;
                this.7O.flush();
            } catch(error:Error)
            {
            }
        }

        public function 1GK():String{
            return (this.1Jp().substr(0, 2).toLowerCase());
        }

        public function yj():Vector.<String>{
            var _local2:String;
            var _local1:Vector.<String> = new Vector.<String>();
            for (_local2 in this.0XO)
            {
                _local1.push(_local2);
            }
            return (_local1);
        }

        public function 0Mz(_arg1:String):String{
            return (this.0XO[_arg1]);
        }

        public function 0lI(_arg1:String):String{
            var _local2:String;
            var _local3:String;
            for (_local3 in this.0XO)
            {
                if (this.0XO[_local3] == _arg1)
                {
                    _local2 = _local3;
                }
            }
            return (_local2);
        }

        private function 1AT():Dictionary{
            var _local1:Dictionary = new Dictionary();
            _local1["Languages.English"] = "en";
            _local1["Languages.French"] = "fr";
            _local1["Languages.Spanish"] = "es";
            _local1["Languages.Italian"] = "it";
            _local1["Languages.German"] = "de";
            _local1["Languages.Turkish"] = "tr";
            _local1["Languages.Russian"] = "ru";
            return (_local1);
        }


    }
}//package 1qQ

