// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1i-.0ZH

package _1i{
    public class _0ZH extends BaseDescription {

        private var tV:String;

        public function _0ZH(){
            clear();
        }

        public static function toString(_arg1:_0TR):String{
            return (new (_0ZH)()._1n8(_arg1).toString());
        }


        override protected function append(_arg1:Object):void{
            tV = (tV + String(_arg1));
        }

        override public function toString():String{
            return (tV);
        }

        public function clear():void{
            tV = "";
        }


    }
}//package 1i-

