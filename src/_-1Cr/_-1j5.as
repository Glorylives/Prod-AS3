// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Cr.1j5

package 1Cr{
    import 1t6.Dialog;
    import 1t6.1r2;
    import 0-O.O6;
    import _04_._1JZ;
    import _0OG._22M;
    import c9.0B2;
    import flash.events.Event;
    import _Jy._1HZ;
    import 1t6.*;

    public class 1j5 extends Dialog implements 0DY {

        private const 0cE:1r2 = new 1r2();

        private var 1yo:O6;

        public function 1j5(_arg1:String, _arg2:String, _arg3:String, _arg4:String, _arg5:O6, _arg6:Object=null){
            super(_arg1, _arg2, _arg3, _arg4, null, _arg6);
            this.1yo = _arg5;
            this.0cE.add(this, Dialog.RIGHT_BUTTON);
            this.0cE.add(this, Dialog.LEFT_BUTTON);
            addEventListener(Dialog.RIGHT_BUTTON, this.18);
        }

        private function 18(_arg1:Event):void{
            removeEventListener(Dialog.RIGHT_BUTTON, this.18);
            var _local2:_22M = _1JZ.0JF();
            var _local3:0B2 = _local2.getInstance(0B2);
            _local3.dispatch(this.1yo);
        }

        public function PC():_1HZ{
            return (this.0cE.PC());
        }


    }
}//package 1Cr

