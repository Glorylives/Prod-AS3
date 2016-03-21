// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1cI.0wV

package 1cI{
    public class 0wV extends 1iz {

        private var 1LU:9f;
        private var success:9f;
        private var failure:9f;

        public function 0wV(_arg1:9f, _arg2:9f=null, _arg3:9f=null){
            this.1LU = _arg1;
            this.success = _arg2;
            this.failure = _arg3;
        }

        public function 0zW(_arg1:9f):void{
            this.success = _arg1;
        }

        public function 0aV(_arg1:9f):void{
            this.failure = _arg1;
        }

        override protected function startTask():void{
            this.1LU.1uB.addOnce(this.0kG);
            this.1LU.start();
        }

        private function 0kG(_arg1:9f, _arg2:Boolean, _arg3:String=""):void{
            if (_arg2)
            {
                this.1Wo(this.success);
            } else
            {
                this.1Wo(this.failure);
            }
        }

        private function 1Wo(_arg1:9f):void{
            if (_arg1)
            {
                _arg1.1uB.addOnce(this.0zP);
                _arg1.start();
            } else
            {
                1d5(true);
            }
        }

        private function 0zP(_arg1:9f, _arg2:Boolean, _arg3:String=""):void{
            1d5(_arg2, _arg3);
        }


    }
}//package 1cI

