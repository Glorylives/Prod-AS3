// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1dX.EvolveDialog

package 1dX{
    import 2--.1Xr;
    import 1t6.1r2;
    import 1t6.Dialog;
    import _Jy._1HZ;
    import 1t6.*;

    public class EvolveDialog extends 1Xr implements 0DY {

        private static const 0Z5:int = 6;

        private const 0cE:1r2 = new 1r2();

        public var yv:2y;

        public function EvolveDialog(_arg1:2y){
            this.yv = _arg1;
            super("EvolveDialog.title", "", "ErrorDialog.ok", null, null);
            this.0cE.add(this, Dialog.LEFT_BUTTON);
            203 = (_arg1.width + 1);
        }

        override protected function makeUIAndAdd():void{
            box_.addChild(this.yv);
        }

        override protected function drawAdditionalUI():void{
            this.yv.x = ((203 - this.yv.width) / 2);
            this.yv.y = (064.getBounds(box_).bottom + 0Z5);
        }

        override protected function drawGraphicsTemplate():void{
            super.drawGraphicsTemplate();
            var _local1:Number = this.yv.getBounds(rect_).bottom;
            0PI.drawLine(_local1);
        }

        public function PC():_1HZ{
            return (this.0cE.PC());
        }


    }
}//package 1dX

