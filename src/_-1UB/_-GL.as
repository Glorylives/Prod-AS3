// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.GL

package 1UB{
    import 1uF.1Mf;
    import JV.1OM;
    import Wn.1ot;
    import 0a-.1lD;
    import 0a-.IC;
    import 0UV.1mj;
    import flash.utils.Timer;
    import flash.events.TimerEvent;

    public class GL extends 1Mf {

        [Inject]
        public var view:1nU;
        [Inject]
        public var W2:1OM;
        [Inject]
        public var 21B:1ot;
        [Inject]
        public var 0K5:1lD;
        [Inject]
        public var nZ:IC;
        [Inject]
        public var 1rY:1mj;
        private var 1m2:Timer;

        public function GL(){
            this.1m2 = new Timer(800, 1);
            super();
        }

        override public function initialize():void{
            this.1m2.addEventListener(TimerEvent.TIMER, this.oJ);
            this.nZ.add(this.0dD);
            this.1rY.add(this.0dD);
            this.view.1dj(this.21B.1Ui.R);
            this.view.close.addOnce(this.D2);
            this.view.init();
            if (this.21B.1Ui.R == 1)
            {
                this.1m2.start();
            } else
            {
                this.view.show();
            };
        }

        private function 0dD():void{
            this.view.destroy();
            this.D2();
        }

        override public function destroy():void{
            this.1m2.removeEventListener(TimerEvent.TIMER, this.oJ);
            this.nZ.remove(this.0dD);
            this.1rY.remove(this.0dD);
        }

        private function 21f():void{
            this.1m2.start();
        }

        private function oJ(_arg1:TimerEvent):void{
            this.view.show();
        }

        private function D2():void{
            if (this.W2.1Nd.contains(this.view))
            {
                this.W2.1Nd.removeChild(this.view);
            };
        }


    }
}//package 1UB

