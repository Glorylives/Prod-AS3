// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.7h

package 0sC{
    import flash.display.Sprite;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import com.company.ui.eG;

    public class 7h extends Sprite {

        protected static const 1Vo:uint = 0x333333;
        protected static const 0xl:uint = 16549442;
        protected static const 1IM:uint = 0x454545;
        protected static const 6U:uint = 0xB3B3B3;


        public function getHeight():Number{
            return (0);
        }

        protected function 1lZ(_arg1:eG, _arg2:int, _arg3:int, _arg4:Boolean):void{
            var _local5:uint = ((_arg4) ? 0xl : 1IM);
            graphics.lineStyle(2, _local5, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
            graphics.beginFill(1Vo, 1);
            graphics.drawRect(((_arg1.x - _arg2) - 5), (_arg1.y - _arg3), (_arg1.width + (_arg2 * 2)), (_arg1.height + (_arg3 * 2)));
            graphics.endFill();
            graphics.lineStyle();
        }


    }
}//package 0sC

