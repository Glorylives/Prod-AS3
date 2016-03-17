// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.1HE

package eC{
    import flash.display.Sprite;
    import gx.StatModel;
    import AO.du;
    import __AS3__.vec.Vector;
    import XF.1eq;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.objects.Player;
    import flash.filters.GlowFilter;
    import __AS3__.vec.*;

    public class 1HE extends Sprite {

        private static const TX:Array = [new StatModel(du.qI, du.1rA, du.12P, true), new StatModel(du.K3, du.0EW, du.1Uk, false), new StatModel(du.1Dq, du.58, du.1Iy, true), new StatModel(du.15E, du.G9, du.07V, true), new StatModel(du.26F, du.1J-, du.0Cb, true), new StatModel(du.190, du.cc, du.XW, true)];
        public static const 1Br:int = 0;
        public static const 1DJ:int = 1;
        public static const 0zX:int = 2;
        public static const 0WU:int = 3;
        public static const 21z:int = 4;
        public static const 0Ou:int = 5;
        public static const 1J5:String = "state_undocked";
        public static const jx:String = "state_docked";
        public static const 0nX:String = jx;//"state_docked"

        private const WIDTH:int = 191;
        private const HEIGHT:int = 45;

        private var background:Sprite;
        public var Zg:Vector.<0F0>;
        public var Un:Sprite;
        public var 0gA:1eq;
        public var 07p:String = "state_docked";

        public function 1HE(){
            this.background = this.11y();
            this.Zg = new Vector.<0F0>();
            this.Un = new Sprite();
            super();
            addChild(this.background);
            addChild(this.Un);
            this.w0();
            mouseChildren = false;
            this.0gA = new 1eq(this, MouseEvent.MOUSE_DOWN, MouseEvent);
        }

        private function w0():void{
            var _local3:0F0;
            var _local1:int;
            var _local2:int;
            while (_local2 < TX.length)
            {
                _local3 = this.27V(_local2, _local1);
                this.Zg.push(_local3);
                this.Un.addChild(_local3);
                _local1 = (_local1 + (_local2 % 2));
                _local2++;
            };
        }

        private function 27V(_arg1:int, _arg2:int):0F0{
            var _local4:0F0;
            var _local3:StatModel = TX[_arg1];
            _local4 = new 0F0(_local3.name, _local3.4Z, _local3.description, _local3.st);
            _local4.x = (((_arg1 % 2) * this.WIDTH) / 2);
            _local4.y = (_arg2 * (this.HEIGHT / 3));
            return (_local4);
        }

        public function draw(_arg1:Player):void{
            if (_arg1)
            {
                this.0Qk();
                this.1d8(_arg1);
            };
            this.Un.x = ((this.WIDTH - this.Un.width) / 2);
        }

        private function 1d8(_arg1:Player):void{
            this.Zg[1Br].draw(_arg1.17R, _arg1.0el, _arg1.Nx);
            this.Zg[1DJ].draw(_arg1.1vs, _arg1.0Jk, _arg1.0i2);
            this.Zg[0zX].draw(_arg1.speed_, _arg1.0AE, _arg1.1r0);
            this.Zg[0WU].draw(_arg1.0B0, _arg1.1ms, _arg1.1bF);
            this.Zg[21z].draw(_arg1.0aj, _arg1.0wa, _arg1.0Mp);
            this.Zg[0Ou].draw(_arg1.00N, _arg1.1zn, _arg1.K8);
        }

        public function 3w():void{
            this.07p = jx;
        }

        public function nY():void{
            this.07p = 1J5;
        }

        private function 11y():Sprite{
            this.background = new Sprite();
            this.background.graphics.clear();
            this.background.graphics.beginFill(0x363636);
            this.background.graphics.lineStyle(2, 0xFFFFFF);
            this.background.graphics.drawRoundRect(-5, -5, (this.WIDTH + 10), (this.HEIGHT + 13), 10);
            this.background.filters = [new GlowFilter(0, 1, 10, 10, 1, 3)];
            return (this.background);
        }

        private function 0Qk():void{
            if (this.07p == 1J5)
            {
                this.background.alpha = 1;
            } else
            {
                if (this.07p == jx)
                {
                    this.background.alpha = 0;
                };
            };
        }


    }
}//package eC

