// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Wn.1Ev

package Wn{


    public class 1Ev {

        private var name:String;
        private var key:String;
        private var 0Y3:Vector.<0EB>;

        public function 1Ev(_arg1:String, _arg2:String){
            this.name = _arg1;
            this.key = _arg2;
        }

        public function getName():String{
            return (this.name);
        }

        public function getKey():String{
            return (this.key);
        }

        public function 0iF():Vector.<0EB>{
            return (this.0Y3);
        }

        public function 01d(_arg1:Vector.<0EB>):void{
            this.0Y3 = _arg1;
        }

        public function Hd():Boolean{
            return (!((this.0Y3 == null)));
        }

        public function 0FS():void{
            this.0Y3 = null;
        }


    }
}//package Wn

