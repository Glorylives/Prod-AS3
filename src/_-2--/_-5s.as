// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.5s

package 2--{
    import 1t6.Dialog;
    import flash.text.TextFormatAlign;
    import _CU._13j;

    public class 5s {

        private static const 256:int = 14;

        private var 1WQ:Dialog;

        public function 5s(_arg1:Dialog):void{
            this.1WQ = _arg1;
        }

        public function F():void{
            this.1WQ.064.setColor(Dialog.0Tl);
            this.1WQ.a.setHorizontalAlign(TextFormatAlign.CENTER);
            this.1WQ.Tw = 4;
            this.1WQ.0Jn = 18;
            this.1WQ.0AU = 18;
        }

        public function 0Ph():void{
            var _local1:_13j = this.1WQ.064;
            var _local2:Number = (_local1.getBounds(this.1WQ.rect_).bottom + this.1WQ.Tw);
            this.drawLine(_local2);
        }

        public function drawLine(_arg1:Number):void{
            this.1WQ.rect_.graphics.moveTo(0, _arg1);
            this.1WQ.rect_.graphics.beginFill(0x666666, 1);
            this.1WQ.rect_.graphics.drawRect(0, _arg1, (this.1WQ.203 - 1), 2);
        }

        public function positionText():void{
            var _local1:_13j = this.1WQ.064;
            this.1WQ.a.y = ((_local1.getBounds(this.1WQ.rect_).bottom + this.1WQ.Tw) + 256);
        }


    }
}//package 2--

