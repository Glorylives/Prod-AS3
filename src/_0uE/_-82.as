// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.82

package

import _Jy._201;

0uE{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 0qj.1ae;
    import _CU._13j;
    import _Jy.__201;
    import 5z.25U;
    import XF.1eq;
    import flash.events.MouseEvent;
    import 0IN.1qO;
    import 0IN.h;
    import 1n4.1cA;
    import AO.du;
    import 1PB.cO;

    public class 82 extends Sprite {

        public const 1z6:_1HZ = new _1HZ(1ae);

        public var Rz:_13j;
        private var 19T:_201;
        private var 65:_13j;
        private var vo:25U;
        private var 1nH:int;
        private var textColor:int;
        private var tooltip:1rq;

        public function 82(_arg1:25U, _arg2:int){
            this.vo = _arg1;
            this.1nH = _arg2;
            this.19T = new 1eq(this, MouseEvent.MOUSE_OVER).add(this.0bV);
            this.textColor = ((_arg1.1AV()) ? 0xB3B3B3 : 0x666666);
            this.81();
            this.08E();
            _arg1.1iq.add(this.11f);
        }

        public function destroy():void{
            this.vo.1iq.remove(this.11f);
        }

        private function 11f(_arg1:25U):void{
            this.bW();
        }

        private function 0bV(_arg1:MouseEvent):void{
            this.tooltip = new 1rq(this.vo);
            this.tooltip.0tW(this);
            this.1z6.dispatch(this.tooltip);
        }

        private function 08E():void{
            graphics.beginFill(this.textColor);
            graphics.drawCircle(0, -5, 1.5);
        }

        private function 81():void{
            this.1VH();
            if (this.vo.1AV())
            {
                this.0Lw();
            };
        }

        private function 0Lw():void{
            this.Rz = 1qO.1H-(this.textColor, 13, true);
            addChild(this.Rz);
            this.04K();
            this.bW();
            (((this.vo.level >= h.00P)) && (this.Rz.setColor(h.YP)));
        }

        private function bW():void{
            if (this.Rz)
            {
                this.Rz.setStringBuilder(new 1cA().setParams(this.0sI(this.vo), {level:this.vo.level}));
            };
        }

        private function 1VH():void{
            this.65 = 1qO.1H-(this.textColor, 13, true);
            this.65.setStringBuilder(new 1cA().setParams(this.vo.name));
            this.65.x = 3;
            addChild(this.65);
        }

        private function 0sI(_arg1:25U):String{
            return ((((_arg1.level < h.00P)) ? du.0E : du.1Oq));
        }

        private function 04K():void{
            var _local1:cO = new cO();
            _local1.push(this.Rz.textChanged);
            _local1.complete.addOnce(this.FO);
        }

        private function FO():void{
            this.Rz.x = (this.1nH - this.Rz.width);
        }


    }
}//package 0uE

