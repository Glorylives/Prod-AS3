// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.23F

package OZ{
    import flash.display.Sprite;
    import 1js.4w;
    import 1js.1fP;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;

    public class 23F extends Sprite {

        private static const BEVEL:int = 4;


        public function draw(_arg1:int, _arg2:int):void{
            var _local3:4w = new 4w(_arg1, _arg2, BEVEL);
            var _local4:1fP = new 1fP();
            graphics.lineStyle(1, 0xFFFFFF, 1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3);
            graphics.beginFill(0x363636);
            _local4.0Zx(0, 0, _local3, graphics);
            graphics.endFill();
        }


    }
}//package OZ

