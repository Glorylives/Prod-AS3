// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.1Xr

package 2--{
    import 1t6.Dialog;

    public class 1Xr extends Dialog {

        protected var 0PI:5s;

        public function 1Xr(_arg1:String, _arg2:String, _arg3:String, _arg4:String, _arg5:String){
            this.0PI = new 5s(this);
            super(_arg1, _arg2, _arg3, _arg4, _arg5);
            this.0PI.F();
        }

        override protected function drawAdditionalUI():void{
            this.0PI.positionText();
        }

        override protected function drawGraphicsTemplate():void{
            this.0PI.0Ph();
        }


    }
}//package 2--

