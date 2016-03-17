// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ud.kx

package 0ud{
    import 1cI.1iz;
    import 1cI.3D;
    import 1cI.0bm;
    import 1cI.9f;
    import 14V.*;

    public class kx extends 1iz implements h3 {

        [Inject]
        public var S1:100;
        [Inject]
        public var 1Y:1it;
        [Inject]
        public var ES:3D;


        override protected function startTask():void{
            var _local1:0bm = new 0bm();
            _local1.add(this.S1);
            _local1.add(this.1Y);
            _local1.lastly.add(this.12H);
            this.ES.add(_local1);
            _local1.start();
        }

        private function 12H(_arg1:9f, _arg2:Boolean, _arg3:String):void{
            1d5(true);
        }


    }
}//package 0ud

