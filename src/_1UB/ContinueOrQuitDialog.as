// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.ContinueOrQuitDialog

package 1UB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import OZ.23F;
    import _CU.sb;
    import 0kv.pq;
    import OZ.08g;
    import com.company.assembleegameclient.util.Currency;
    import flash.events.MouseEvent;
    import 1n4.1cA;
    import AO.du;
    import 1n4.1WS;
    import flash.filters.DropShadowFilter;

    public class ContinueOrQuitDialog extends Sprite {

        public const quit:_1HZ = new _1HZ();
        public const 1Py:_1HZ = new _1HZ(int, int);
        private const WIDTH:int = 350;
        private const HEIGHT:int = 150;
        private const background:23F = ContinueOrQuitDialog.lg();
        private const title:sb = ContinueOrQuitDialog.Kr();
        private const quitSubtitle:sb = ContinueOrQuitDialog.0F8();
        private const 0yX:pq = ContinueOrQuitDialog.20D();
        private const continueButton:08g = ContinueOrQuitDialog.5U();
        private const 1u3:sb = ContinueOrQuitDialog.0F8();
        private const My:sb = ContinueOrQuitDialog.0F8();

        private var cost:int;

        public function ContinueOrQuitDialog(_arg1:int, _arg2:Boolean){
            this.cost = _arg1;
            this.continueButton.setPrice(_arg1, Currency.1Jg);
            this.dm(_arg2);
        }

        public function init(_arg1:int, _arg2:int):void{
            this.cp();
            this.0yX.addEventListener(MouseEvent.CLICK, this.1Kq);
            this.continueButton.addEventListener(MouseEvent.CLICK, this.1Z-);
            this.quitSubtitle.setStringBuilder(new 1cA().setParams(du.OV));
            this.1u3.setStringBuilder(new 1cA().setParams(du.0mW, {waveNumber:_arg1.toString()}));
            this.My.setStringBuilder(new 1WS("Processing"));
            this.My.visible = false;
            this.align();
            this.104();
            this.Tf();
        }

        public function dm(_arg1:Boolean):void{
            this.My.visible = _arg1;
            this.continueButton.visible = !(_arg1);
        }

        public function destroy():void{
            this.0yX.removeEventListener(MouseEvent.CLICK, this.1Kq);
            this.continueButton.removeEventListener(MouseEvent.CLICK, this.1Z-);
        }

        private function 1Kq(_arg1:MouseEvent):void{
            this.quit.dispatch();
        }

        private function 1Z-(_arg1:MouseEvent):void{
            this.1Py.dispatch(Currency.1Jg, this.cost);
        }

        private function align():void{
            this.quitSubtitle.x = (70 - (this.quitSubtitle.width / 2));
            this.quitSubtitle.y = 85;
            this.0yX.x = (70 - (this.0yX.width / 2));
            this.0yX.y = 110;
            this.1u3.x = ((105 - (this.1u3.width / 2)) + 140);
            this.1u3.y = 85;
            this.continueButton.x = ((105 - (this.continueButton.width / 2)) + 140);
            this.continueButton.y = 110;
            this.My.x = ((105 - (this.My.width / 2)) + 140);
            this.My.y = 110;
        }

        private function cp():void{
            x = ((stage.stageWidth - this.WIDTH) * 0.5);
            y = ((stage.stageHeight - this.HEIGHT) * 0.5);
        }

        private function lg():23F{
            var _local1:23F = new 23F();
            _local1.draw(this.WIDTH, this.HEIGHT);
            addChild(_local1);
            return (_local1);
        }

        private function Kr():sb{
            var _local1:sb = new sb();
            _local1.setSize(20).setBold(true).setColor(0xB3B3B3);
            _local1.setStringBuilder(new 1cA().setParams(du.0yN));
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            _local1.x = ((this.WIDTH - _local1.width) * 0.5);
            _local1.y = 25;
            addChild(_local1);
            return (_local1);
        }

        private function 104():void{
            this.background.graphics.lineStyle();
            this.background.graphics.beginFill(0x666666, 1);
            this.background.graphics.drawRect(1, 70, (this.background.width - 2), 2);
            this.background.graphics.endFill();
        }

        private function Tf():void{
            this.background.graphics.lineStyle();
            this.background.graphics.beginFill(0x666666, 1);
            this.background.graphics.drawRect(140, 70, 2, (this.HEIGHT - 66));
            this.background.graphics.endFill();
        }

        private function 20D():pq{
            var _local1:pq = new pq(15, du.0Kl);
            addChild(_local1);
            return (_local1);
        }

        private function 5U():08g{
            var _local1:08g = new 08g("", 15, this.cost, Currency.1Jg);
            _local1.fh.addOnce(this.align);
            addChild(_local1);
            return (_local1);
        }

        private function 0F8():sb{
            var _local1:sb = new sb();
            _local1.setSize(15).setColor(0xFFFFFF).setBold(true);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            addChild(_local1);
            return (_local1);
        }


    }
}//package 1UB

