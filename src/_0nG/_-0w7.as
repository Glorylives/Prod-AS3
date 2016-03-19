// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0nG.0w7

package 0nG{
    import 2--.1Xr;
    import 1t6.1r2;
    import 5z.0tK;
    import AO.du;
    import 1t6.Dialog;
    import flash.events.Event;
    import _Jy._1HZ;
    import 1t6.*;

    public class 0w7 extends 1Xr implements 0DY {

        private const 0cE:1r2 = new 1r2();

        [Inject]
        public var release:EC;
        private var petVO:0tK;

        public function 0w7(_arg1:0tK){
            super(du.mm, du.0jr, du.12L, du.04x, null);
            this.petVO = _arg1;
            this.0ja();
        }

        override protected function setDialogWidth():int{
            return (400);
        }

        private function 0ja():void{
            this.0cE.add(this, Dialog.RIGHT_BUTTON);
            this.0cE.add(this, Dialog.LEFT_BUTTON);
            addEventListener(Dialog.LEFT_BUTTON, this.0wi);
        }

        private function 0wi(_arg1:Event):void{
            removeEventListener(Dialog.LEFT_BUTTON, this.0wi);
            this.release.dispatch(this.petVO.try ());
        }

        public function PC():_1HZ{
            return (this.0cE.PC());
        }

        public function getPetVO():0tK{
            return (this.petVO);
        }


    }
}//package 0nG

