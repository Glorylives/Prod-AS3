// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.0D4

package 1PB{
    import 1uF.1Mf;
    import _1aA.20c;
    import WZ.0Te;
    import 1Bg.1zl;
    import 0UV.Xq;
    import 1Bg.1hy;
    import 1Bg.of;
    import 1Bg.1NA;
    import 1Bg.uK;
    import 1Bg.kR;
    import tn.0ec;
    import _1aA.CharacterSelectionAndNewsScreen;
    import 1oP.1SZ;
    import flash.display.Sprite;

    public class 0D4 extends 1Mf {

        [Inject]
        public var view:20c;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var 21r:1zl;
        [Inject]
        public var 7V:Xq;
        [Inject]
        public var X4:1hy;
        [Inject]
        public var up:of;
        [Inject]
        public var EI:1NA;
        [Inject]
        public var 21G:uK;
        [Inject]
        public var 00z:kR;
        [Inject]
        public var 1z8:0ec;


        override public function initialize():void{
            this.view.selected.add(this.14J);
            this.view.close.add(this.D2);
            this.view.tooltip.add(this.1CZ);
            this.view.buy.add(this.qP);
            this.EI.add(this.Q1);
            this.21G.add(this.G0);
            this.view.initialize(this.SP);
        }

        private function G0(_arg1:int):void{
            this.view.91(this.SP.0ce(), this.SP.15g());
        }

        override public function destroy():void{
            this.view.selected.remove(this.14J);
            this.view.close.remove(this.D2);
            this.view.tooltip.remove(this.1CZ);
            this.view.buy.remove(this.qP);
            this.21G.remove(this.G0);
            this.EI.remove(this.Q1);
        }

        private function D2():void{
            this.21r.dispatch(new CharacterSelectionAndNewsScreen());
        }

        private function 14J(_arg1:int):void{
            this.1z8.7k(_arg1).eR(true);
            this.21r.dispatch(new 1SZ());
        }

        private function 1CZ(_arg1:Sprite):void{
            if (_arg1)
            {
                this.X4.dispatch(_arg1);
            } else
            {
                this.up.dispatch();
            }
        }

        private function Q1():void{
            this.view.update(this.SP);
        }

        private function qP(_arg1:int):void{
            this.00z.dispatch(_arg1);
        }


    }
}//package 1PB

