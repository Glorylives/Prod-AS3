// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1t6.1r2

package 1t6{
    import _Jy._1HZ;
    import __AS3__.vec.Vector;
    import flash.events.Event;
    import __AS3__.vec.*;

    public class 1r2 {

        private const 0LN:_1HZ = new _1HZ();

        private var 1WQ:0DY;
        private var 1Gf:Vector.<String>;

        public function 1r2(){
            this.1Gf = new Vector.<String>();
            super();
        }

        public function add(_arg1:0DY, _arg2:String):void{
            this.1WQ = _arg1;
            this.1Gf.push(_arg2);
            _arg1.addEventListener(_arg2, this.1WO);
        }

        private function 1WO(_arg1:Event):void{
            var _local2:String;
            for each (_local2 in this.1Gf)
            {
                this.1WQ.removeEventListener(_local2, this.1WO);
            };
            this.1WQ.PC().dispatch();
        }

        public function PC():_1HZ{
            return (this.0LN);
        }


    }
}//package 1t6

