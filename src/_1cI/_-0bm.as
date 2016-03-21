// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1cI.0bm

package 1cI{



    public class 0bm extends 1iz {

        private var fk:Vector.<9f>;
        private var index:int;
        private var hi:Boolean;

        public function 0bm(){
            this.fk = new Vector.<9f>();
        }

        public function fR():Boolean{
            return (this.hi);
        }

        public function 0UD(_arg1:Boolean):void{
            this.hi = _arg1;
        }

        public function add(_arg1:9f):void{
            this.fk.push(_arg1);
        }

        override protected function startTask():void{
            this.index = 0;
            this.lv();
        }

        override protected function onReset():void{
            var _local1:9f;
            for each (_local1 in this.fk)
            {
                _local1.reset();
            }
        }

        private function lv():void{
            if (this.0qm())
            {
                this.1MU();
            } else
            {
                1d5(true);
            }
        }

        private function 0qm():Boolean{
            return ((this.index < this.fk.length));
        }

        private function 1MU():void{
            var _local1:9f = this.fk[this.index++];
            _local1.lastly.addOnce(this.0kG);
            _local1.start();
        }

        private function 0kG(_arg1:9f, _arg2:Boolean, _arg3:String):void{
            if (((_arg2) || (this.hi)))
            {
                this.lv();
            } else
            {
                1d5(false, _arg3);
            }
        }


    }
}//package 1cI

