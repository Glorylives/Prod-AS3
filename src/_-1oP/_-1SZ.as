// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1oP.1SZ

package 1oP{
    import flash.display.Sprite;
    import zD.05l;
    import _1aA.01l;
    import flash.display.Shape;
    import BG.02I;
    import com.company.rotmg.graphics.ScreenGraphic;
    import _1aA.Lz;
    import _Jy._1HZ;
    import XF.lY;
    import flash.events.MouseEvent;
    import 1PB.cO;
    import _04_._1JZ;
    import WZ.0Te;
    import 1jB.1sM;
    import flash.text.TextFieldAutoSize;
    import _CU._13j;

    public class 1SZ extends Sprite {

        private const base:05l = 1SZ.0w();
        private const account:01l = 1SZ.1RA();
        private const 1Tv:Shape = 1SZ.8G();
        private const 0Ek:02I = 1SZ.1Gl();
        private const 6m:ScreenGraphic = 1SZ.1A-();
        private const 0Vg:Lz = 1SZ.Jb();
        private const TC:Lz = 1SZ.0ue();
        private const list:0sb = 1SZ.25D();
        private const gs:ClassDetailView = 1SZ.0gr();
        public const play:_1HZ = new XF.lY(1SZ.0Vg, flash.events.MouseEvent.CLICK);
        public const back:_1HZ = new XF.lY(1SZ.TC, flash.events.MouseEvent.CLICK);
        public const 1he:cO = 1SZ.2g();


        private function 0w():05l{
            var _local1:05l = new 05l();
            addChild(_local1);
            return (_local1);
        }

        private function 1RA():01l{
            var _local1:01l = new 01l();
            addChild(_local1);
            return (_local1);
        }

        private function 1Gl():02I{
            var _local1:02I;
            _local1 = new 02I(null, true, true);
            var _local2:0Te = _1JZ.0JF().getInstance(0Te);
            if (_local2 != null)
            {
                _local1.draw(_local2.0ce(), _local2.15g(), _local2.N4());
            };
            _local1.x = 800;
            _local1.y = 20;
            addChild(_local1);
            return (_local1);
        }

        private function 8G():Shape{
            var _local1:Shape = new Shape();
            _local1.graphics.clear();
            _local1.graphics.lineStyle(2, 0x545454);
            _local1.graphics.moveTo(0, 105);
            _local1.graphics.lineTo(800, 105);
            _local1.graphics.moveTo(346, 105);
            _local1.graphics.lineTo(346, 526);
            addChild(_local1);
            return (_local1);
        }

        private function 1A-():ScreenGraphic{
            var _local1:ScreenGraphic = new ScreenGraphic();
            addChild(_local1);
            return (_local1);
        }

        private function Jb():Lz{
            var _local1:Lz;
            _local1 = new Lz(1sM.1Lu, 36, false);
            _local1.setAutoSize(TextFieldAutoSize.CENTER);
            _local1.setVerticalAlign(_13j.MIDDLE);
            _local1.x = (400 - (_local1.width / 2));
            _local1.y = 550;
            addChild(_local1);
            return (_local1);
        }

        private function 0ue():Lz{
            var _local1:Lz;
            _local1 = new Lz(1sM.BACK, 22, false);
            _local1.setVerticalAlign(_13j.MIDDLE);
            _local1.x = 30;
            _local1.y = 550;
            addChild(_local1);
            return (_local1);
        }

        private function 25D():0sb{
            var _local1:0sb;
            _local1 = new 0sb();
            _local1.x = 351;
            _local1.y = 110;
            addChild(_local1);
            return (_local1);
        }

        private function 0gr():ClassDetailView{
            var _local1:ClassDetailView;
            _local1 = new ClassDetailView();
            _local1.x = 5;
            _local1.y = 110;
            addChild(_local1);
            return (_local1);
        }

        public function 10q(_arg1:Boolean):void{
            if (!_arg1)
            {
                this.0Vg.deactivate();
            };
        }

        private function 2g():cO{
            var _local1:cO = new cO();
            _local1.push(this.0Vg.n4);
            _local1.complete.add(this.03d);
            return (_local1);
        }

        private function 03d():void{
            this.0Vg.x = (stage.stageWidth / 2);
        }


    }
}//package 1oP

