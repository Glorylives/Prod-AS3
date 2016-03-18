// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0nG.PetPanel

package 0nG{
    import _ZE.Panel;
    import _Jy._1HZ;
    import 0qj.1ae;
    import _CU._13j;
    import 0IN.1qO;
    import XF.1eq;
    import flash.display.Sprite;
    import 0kv.pq;
    import 5z.0tK;
    import flash.display.Bitmap;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.game.nx;
    import AO.du;
    import 0IN.h;
    import 1n4.1cA;
    import 0uE.5f;

    public class PetPanel extends Panel {

        private static const VJ:int = 16;
        private static const 11M:int = 6;
        private static const 0wN:int = 5;

        public const 1z6:_1HZ = new _1HZ(1ae);
        private const 0jw:_13j = 1qO.1H-(0xFFFFFF, 16, true);
        private const 1gC:_13j = 1qO.1H-(0xB6B6B6, 12, false);

        public var 1oa:1eq;
        public var 0rw:Sprite;
        public var 0RB:pq;
        public var 089:pq;
        public var 6g:pq;
        public var petVO:0tK;
        private var 1tY:Bitmap;

        public function PetPanel(_arg1:nx, _arg2:0tK){
            this.0rw = new Sprite();
            super(_arg1);
            this.petVO = _arg2;
            this.1oa = new 1eq(this.0rw, MouseEvent.MOUSE_OVER);
            this.1oa.add(this.0bV);
            this.1tY = _arg2.15c();
            this.Fl();
            this.0Ha();
            this.81();
            this.QT();
        }

        private static function 0Ma(_arg1:pq):void{
            _arg1.y = ((HEIGHT - _arg1.height) - 4);
        }


        private function QT():void{
            this.0RB = this.1sf(du.0KO);
            this.089 = this.1sf(du.12L);
            this.6g = this.1sf(du.1Kk);
            this.1-S();
        }

        private function 1sf(_arg1:String):pq{
            var _local2:pq = new pq(VJ, _arg1);
            addChild(_local2);
            return (_local2);
        }

        public function setState(_arg1:uint):void{
            this.kz((_arg1 == h.YE));
        }

        public function kz(_arg1:Boolean):void{
            this.0RB.visible = _arg1;
            this.089.visible = _arg1;
            this.6g.visible = !(_arg1);
        }

        private function Fl():void{
            this.0rw.addChild(this.1tY);
            addChild(this.0rw);
            addChild(this.0jw);
            addChild(this.1gC);
        }

        private function 81():void{
            this.0jw.setStringBuilder(new 1cA().setParams(this.petVO.getName()));
            this.1gC.setStringBuilder(new 1cA().setParams(this.petVO.1qz()));
        }

        private function 0Ha():void{
            this.1tY.x = 4;
            this.1tY.y = -3;
            this.0jw.x = 58;
            this.0jw.y = 23;
            this.1gC.x = 58;
            this.1gC.y = 35;
        }

        private function 1-S():void{
            this.1H0();
            this.23j();
            this.1y3();
        }

        private function 1H0():void{
            this.0RB.x = 11M;
            0Ma(this.0RB);
        }

        private function 23j():void{
            this.089.x = (((WIDTH - this.089.width) - 11M) - 0wN);
            0Ma(this.089);
        }

        private function 1y3():void{
            this.6g.x = ((WIDTH - this.6g.width) / 2);
            0Ma(this.6g);
        }

        private function 0bV(_arg1:MouseEvent):void{
            var _local2:5f = new 5f(this.petVO);
            _local2.0tW(this);
            this.1z6.dispatch(_local2);
        }


    }
}//package 0nG

