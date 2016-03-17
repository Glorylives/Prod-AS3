// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.IJ

package 0uE{
    import flash.display.Sprite;
    import 1js.4w;
    import 1js.1fP;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;

    public class IJ extends Sprite {

        public static const HORIZONTAL_DIVISION:String = "HORIZONTAL_DIVISION";
        public static const VERTICAL_DIVISION:String = "VERTICAL_DIVISION";
        private static const BEVEL:int = 4;
        public static const nN:int = 0;
        public static const 0W9:int = 1;
        public static const 0qG:int = 2;
        public static const 0ps:int = 3;


        public function draw(_arg1:int, _arg2:int, _arg3:int=0):void{
            var _local4:4w = new 4w(_arg1, _arg2, BEVEL);
            var _local5:1fP = new 1fP();
            graphics.lineStyle(1, 0xFFFFFF, 1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3);
            if (_arg3 == 0W9)
            {
                graphics.lineStyle(1, 0x363636, 1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3);
                graphics.beginFill(0x363636, 1);
                _local5.0Zx(1, 1, new 4w((_arg1 - 2), 29, BEVEL), graphics);
                graphics.endFill();
                graphics.beginFill(0x363636, 1);
                graphics.drawRect(1, 15, (_arg1 - 2), 15);
                graphics.endFill();
                graphics.lineStyle(2, 0xFFFFFF, 1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3);
                graphics.beginFill(0x363636, 0);
                _local5.0Zx(0, 0, _local4, graphics);
                graphics.endFill();
            } else
            {
                if (_arg3 == 0qG)
                {
                    graphics.lineStyle(2, 0xFFFFFF, 1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3);
                    graphics.beginFill(0x363636, 0);
                    _local5.0Zx(0, 0, _local4, graphics);
                    graphics.endFill();
                } else
                {
                    if (_arg3 == nN)
                    {
                        graphics.beginFill(0x363636);
                        _local5.0Zx(0, 0, _local4, graphics);
                        graphics.endFill();
                    } else
                    {
                        if (_arg3 == 0ps)
                        {
                            graphics.beginFill(0);
                            _local5.0Zx(0, 0, _local4, graphics);
                            graphics.endFill();
                        };
                    };
                };
            };
        }

        public function UK(_arg1:String, _arg2:int):void{
            if (_arg1 == HORIZONTAL_DIVISION)
            {
                this.0g(_arg2);
            } else
            {
                if (_arg1 == VERTICAL_DIVISION)
                {
                    this.1Sf(_arg2);
                };
            };
        }

        private function 0g(_arg1:int):void{
            graphics.lineStyle();
            graphics.endFill();
            graphics.moveTo(1, _arg1);
            graphics.beginFill(0x666666, 1);
            graphics.drawRect(1, _arg1, (width - 2), 2);
        }

        private function 1Sf(_arg1:int):void{
            graphics.lineStyle();
            graphics.moveTo(_arg1, 1);
            graphics.lineStyle(2, 0x666666);
            graphics.lineTo(_arg1, (height - 1));
        }


    }
}//package 0uE

