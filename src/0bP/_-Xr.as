// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0bP.Xr

package 0bP{
    import go.0Ip;
    import 051.1JW;
    import 0Fr.dW;
    import 0Fr.1W0;
    import 0Fr.*;

    public class Xr implements 0d8 {

        private var 1gq:0Ip;
        private var 7Y:1JW;

        public function Xr(_arg1:dW){
            this.1gq = _arg1.kf.getInstance(0Ip);
            this.7Y = new 1JW();
        }

        public function log(_arg1:Object, _arg2:uint, _arg3:int, _arg4:String, _arg5:Array=null):void{
            var _local6:String = ((((1W0.NAME[_arg2] + " ") + _arg1) + " ") + this.7Y.2J(_arg4, _arg5));
            this.1gq.dispatch(_local6);
        }


    }
}//package 0bP

