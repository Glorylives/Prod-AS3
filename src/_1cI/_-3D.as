// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1cI.3D

package 1cI{



    public class 3D {

        private var fk:Vector.<9f>;

        public function 3D(){
            this.fk = new <9f>[];
        }

        public function add(_arg1:9f):void{
            this.fk.push(_arg1);
            _arg1.1uB.addOnce(this.0kG);
        }

        public function 0Bx(_arg1:9f):Boolean{
            return (!((this.fk.indexOf(_arg1) == -1)));
        }

        private function 0kG(_arg1:9f, _arg2:Boolean, _arg3:String=""):void{
            this.fk.splice(this.fk.indexOf(_arg1), 1);
        }


    }
}//package 1cI

