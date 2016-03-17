// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.0H8

package 1UB{
    import 1uF.1Mf;
    import Wn.1ot;

    public class 0H8 extends 1Mf {

        [Inject]
        public var view:0Ja;
        [Inject]
        public var 15a:1ot;


        override public function initialize():void{
            this.15a.cB.add(this.160);
        }

        override public function destroy():void{
            this.15a.cB.remove(this.160);
        }

        private function 160():void{
            this.view.1dj(this.15a.1Ui.R);
        }


    }
}//package 1UB

