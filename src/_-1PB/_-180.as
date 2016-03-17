// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.180

package 1PB{
    import 1uF.1Mf;
    import 1ay.1Kv;
    import 1ay.pW;
    import 0UV.1mj;
    import 0xo.1hX;

    public class 180 extends 1Mf {

        [Inject]
        public var view:xh;
        [Inject]
        public var Iv:1Kv;
        [Inject]
        public var Aa:pW;
        [Inject]
        public var 1rY:1mj;


        override public function initialize():void{
            this.Iv.add(this.Ld);
            this.Aa.add(this.in );
            this.1rY.add(this.06Z);
        }

        override public function destroy():void{
            this.Iv.remove(this.Ld);
            this.Aa.remove(this.in );
            this.1rY.remove(this.06Z);
        }

        private function Ld(_arg1:1hX):void{
            this.view.Iv(_arg1);
        }

        private function in (_arg1:1hX):void{
            this.view.Aa(_arg1);
        }

        private function 06Z():void{
            this.view.parent.removeChild(this.view);
        }


    }
}//package 1PB

