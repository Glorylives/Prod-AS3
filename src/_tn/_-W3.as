// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//TN.W3

package TN{
    import flash.display.Sprite;
    import flash.display.DisplayObject;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1nN;
    import _Jy._1HZ;
    import XF.lY;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import 1n4.1cA;
    import flash.text.TextFormatAlign;
    import AO.du;
    import 1js.1sT;

    public class W3 extends Sprite {

        private static const 0qf:int = 8;
        private static const 0um:int = 120;
        private static const MJ:int = 16;
        private static const 01X:int = 546;
        private static const 1nq:int = 416;
        private static const 1s6:int = 368;
        private static const 1gr:int = 164;
        private static const 0-5:int = 210;

        private const background:DisplayObject = W3.lg();
        private const title:_13j = W3.Kr();
        private const 1Vj:_13j = W3.0sx();
        private const vB:_13j = W3.0qz();
        private const close:1nN = W3.1gH();
        public const closed:_1HZ = new XF.lY(W3.close, flash.events.MouseEvent.CLICK);

        public function W3():void{
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        }

        private function onAddedToStage(_arg1:Event):void{
            removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            x = ((stage.stageWidth - width) / 2);
            y = ((stage.stageHeight - height) / 2);
        }

        public function setTitle(_arg1:String):W3{
            this.title.setStringBuilder(new 1cA().setParams(_arg1));
            return (this);
        }

        public function setBody(_arg1:String, _arg2:String):W3{
            this.1Vj.setStringBuilder(new 1cA().setParams(_arg1));
            this.vB.setStringBuilder(new 1cA().setParams(_arg2));
            return (this);
        }

        private function lg():DisplayObject{
            var _local1:4K = new 4K();
            addChild(_local1);
            return (_local1);
        }

        private function Kr():_13j{
            var _local1:_13j;
            _local1 = new _13j().setSize(18).setColor(0xB6B6B6).setTextWidth(01X).setAutoSize(TextFormatAlign.CENTER).setBold(true);
            _local1.y = 0qf;
            addChild(_local1);
            return (_local1);
        }

        private function 0sx():_13j{
            var _local1:_13j;
            _local1 = new _13j().setSize(14).setColor(14864077).setTextWidth(1nq).setAutoSize(TextFormatAlign.CENTER).setBold(true);
            _local1.x = ((01X - 1nq) * 0.5);
            _local1.y = 1gr;
            addChild(_local1);
            return (_local1);
        }

        private function 0qz():_13j{
            var _local1:_13j;
            _local1 = new _13j().setSize(14).setColor(10914439).setTextWidth(1nq).setAutoSize(TextFormatAlign.CENTER);
            _local1.x = ((01X - 1nq) * 0.5);
            _local1.y = 0-5;
            addChild(_local1);
            return (_local1);
        }

        private function 1gH():1nN{
            var _local1:1nN;
            _local1 = new 1nN(MJ, du.CLOSE, 0um);
            _local1.textChanged.addOnce(this.Q);
            _local1.y = 1s6;
            addChild(_local1);
            return (_local1);
        }

        private function Q():void{
            new 1sT().layout(01X, this.close);
        }


    }
}//package TN

