// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1cI.06P

package 1cI{
    import _Jy._1HZ;

    public class 06P extends 1iz {

        private var 0xg:_1HZ;
        private var params:Array;

        public function 06P(_arg1:_1HZ, ... _args){
            this.0xg = _arg1;
            this.params = _args;
        }

        override protected function startTask():void{
            this.0xg.dispatch.apply(null, this.params);
            1d5(true);
        }


    }
}//package 1cI

