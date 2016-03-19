// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.BattleSummaryDialog

package 1UB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import OZ.23F;
    import 1RM.BattleSummaryText;
    import _CU.sb;
    import 0kv.pq;
    import AO.du;
    import flash.events.MouseEvent;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;

    public class BattleSummaryDialog extends Sprite {

        public const close:_1HZ = new _1HZ();
        private const WIDTH:int = 264;
        private const HEIGHT:int = 302;
        private const background:23F = BattleSummaryDialog.lg();
        private const Aq = BattleSummaryDialog.Qn();

        private var 0D9:Class;
        private var 21X:BattleSummaryText;
        private var 1TJ:BattleSummaryText;
        private var Yi:sb;
        private var 1tf:pq;

        public function BattleSummaryDialog(){
            this.0D9 = 0Lu;
            this.Yi = this.Kr();
            this.1tf = this.1sf();
            super();
            this.1wV(25);
            this.1wV(132);
            this.1wV(252);
            this.27F();
        }

        private function lg():23F{
            var _local1:23F = new 23F();
            _local1.draw(this.WIDTH, this.HEIGHT);
            addChild(_local1);
            return (_local1);
        }

        public function cp():void{
            x = ((stage.stageWidth - this.WIDTH) * 0.5);
            y = ((stage.stageHeight - this.HEIGHT) * 0.5);
        }

        public function 1Bf(_arg1:int, _arg2:int):void{
            if (this.21X)
            {
                removeChild(this.21X);
            }
            this.21X = new BattleSummaryText(du.0td, _arg1, _arg2);
            this.21X.y = ((60 - (this.21X.height / 2)) + 132);
            this.21X.x = ((this.WIDTH / 4) - (this.21X.width / 2));
            addChild(this.21X);
        }

        public function 1Fy(_arg1:int, _arg2:int):void{
            if (this.1TJ)
            {
                removeChild(this.1TJ);
            }
            this.1TJ = new BattleSummaryText(du.03Y, _arg1, _arg2);
            this.1TJ.y = ((60 - (this.1TJ.height / 2)) + 132);
            this.1TJ.x = (((this.WIDTH / 4) - (this.1TJ.width / 2)) + (this.WIDTH / 2));
            addChild(this.1TJ);
        }

        private function LV(_arg1:MouseEvent):void{
            this.1tf.removeEventListener(MouseEvent.CLICK, this.LV);
            this.close.dispatch();
        }

        private function 27F():void{
            this.background.graphics.lineStyle();
            this.background.graphics.beginFill(0x666666, 1);
            this.background.graphics.drawRect((this.WIDTH / 2), 132, 2, 120);
            this.background.graphics.endFill();
        }

        private function 1wV(_arg1:int):void{
            this.background.graphics.lineStyle();
            this.background.graphics.beginFill(0x666666, 1);
            this.background.graphics.drawRect(1, _arg1, (this.background.width - 2), 2);
            this.background.graphics.endFill();
        }

        private function Qn(){
            var _local1:* = new this.0D9();
            _local1.y = 27;
            _local1.x = 2;
            addChild(_local1);
            return (_local1);
        }

        private function Kr():sb{
            var _local1:sb;
            _local1 = new sb();
            _local1.setSize(18).setBold(true).setColor(0xB3B3B3);
            _local1.setStringBuilder(new 1cA().setParams(du.0_ZS));
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            _local1.x = ((this.WIDTH - _local1.width) * 0.5);
            _local1.y = 3;
            addChild(_local1);
            return (_local1);
        }

        private function 1sf():pq{
            var _local1:pq;
            _local1 = new pq(16, du.1kf, 100);
            _local1.addEventListener(MouseEvent.CLICK, this.LV);
            _local1.y = ((this.HEIGHT - _local1.height) - 10);
            _local1.x = ((this.WIDTH / 2) - (_local1.width / 2));
            addChild(_local1);
            return (_local1);
        }


    }
}//package 1UB

