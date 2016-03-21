// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1cI.7f

package 1cI{



    public class 7f extends 1iz {

        private var fk:Vector.<1iz>;
        private var 0A4:int;

        public function 7f(){
            this.fk = new Vector.<1iz>();
        }

        public function add(_arg1:1iz):void{
            this.fk.push(_arg1);
        }

        override protected function startTask():void{
            this.0A4 = this.fk.length;
            if (this.0A4 > 0)
            {
                this.0MA();
            } else
            {
                1d5(true);
            }
        }

        override protected function onReset():void{
            var _local1:1iz;
            for each (_local1 in this.fk)
            {
                _local1.reset();
            }
        }

        private function 0MA():void{
            var _local1:int = this.0A4;
            while (_local1--)
            {
                this.fk[_local1].lastly.addOnce(this.0kG);
                this.fk[_local1].start();
            }
        }

        private function 0kG(_arg1:1iz, _arg2:Boolean, _arg3:String):void{
            if (_arg2)
            {
                if (--this.0A4 == 0)
                {
                    1d5(true);
                }
            } else
            {
                1d5(false, _arg3);
            }
        }

        public function toString():String{
            return ((("[TaskGroup(" + this.fk.join(",")) + ")]"));
        }


    }
}//package 1cI

