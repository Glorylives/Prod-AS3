// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.q5

package Ct{
    import _Jy._1HZ;
    import 0uE.qZ;
    import 0IN.1qO;
    import AO.du;
    import 0IN.h;
    import 0uE.IJ;
    import _CU._13j;
    import 0uE.PetFuser;
    import 0uE.KC;
    import 0uE.FusionStrength;
    import 1n4.1cA;
    import 0IN.1co;
    import 5z.1dH;
    import 5z.0TC;
    import 1PB.cO;
    import 1t6.*;

    public class q5 extends 23L implements 0DY {

        private static const 1tT:_1HZ = new _1HZ();

        public const Si:qZ = 1qO.2-j(du.1mK, (h.0pp - 39));
        private const background:IJ = 1qO.1A9();
        private const r4:_13j = 1qO.18-(0xB3B3B3, 18, true);
        private const 1F-:_13j = 1qO.04T();
        private const Ps:PetFuser = 1qO.0f0();
        private const 1tf:KC = 1qO.19W(h.1h9);
        private const vQ:FusionStrength = 1qO.P-();
        public const closed:_1HZ = new _1HZ();

        public var 1oD:_1HZ;
        public var 1jE:_1HZ;
        public var 0Or:_1HZ;

        public function q5(){
            this.Si.clicked.addOnce(this.09H);
        }

        public function init(_arg1:0TC):void{
            this.r4.setStringBuilder(new 1cA().setParams(du.1jR));
            this.1oD = this.Ps.1oD;
            this.1jE = this.Si.0su;
            this.0Or = this.Si.q1;
            this.Si.r3(!(_arg1.0fw()));
            this.Si.setPrefix(((_arg1.0fw()) ? du.1mK : du.00V));
            if (_arg1.0fw())
            {
                this.Si.0RN(1co.0ws(1dH.0Yx(_arg1.06h.1qz())));
                this.Si.1vA(1co.24K(1dH.0Yx(_arg1.06h.1qz())));
            };
            this.1tf.clicked.add(this.D2);
            this.04K();
            this.Fl();
            this.1bZ();
        }

        private function 09H():void{
            1tT.dispatch();
        }

        public function destroy():void{
            this.Si.1yi.remove(this.1Xa);
        }

        private function Fl():void{
            addChild(this.background);
            addChild(this.r4);
            addChild(this.1F-);
            addChild(this.Si);
            addChild(this.Ps);
            addChild(this.vQ);
            addChild(this.1tf);
        }

        private function 1bZ():void{
            cp();
            this.1jo();
        }

        private function 1jo():void{
            this.Ps.x = Math.round(((h.1h9 - this.Ps.width) * 0.5));
        }

        private function 04K():void{
            var _local1:cO = new cO();
            _local1.push(this.r4.textChanged);
            _local1.push(this.1F-.textChanged);
            _local1.complete.addOnce(this.FO);
            this.Si.1yi.add(this.1Xa);
        }

        private function FO():void{
            this.r4.y = 5;
            this.r4.x = ((h.1h9 - this.r4.width) * 0.5);
            this.1F-.x = ((h.1h9 - this.1F-.width) * 0.5);
        }

        private function 1Xa():void{
            this.Si.x = ((h.1h9 - this.Si.width) / 2);
        }

        private function D2():void{
            this.closed.dispatch();
        }

        public function PC():_1HZ{
            return (1tT);
        }


    }
}//package Ct

