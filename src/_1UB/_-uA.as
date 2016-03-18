// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.uA

package 1UB{
    import 1uF.1Mf;
    import zf.0vS;
    import zf.0cK;
    import flash.utils.Timer;
    import flash.events.TimerEvent;

    public class uA extends 1Mf {

        [Inject]
        public var view:ve;
        [Inject]
        public var S7:0vS;
        [Inject]
        public var 1YD:0cK;
        private var 0k8:Timer;

        public function uA(){
            this.0k8 = new Timer(6000);
            super();
        }

        override public function initialize():void{
            this.S7.add(this.9b);
            this.1YD.add(this.0FG);
            this.0k8.addEventListener(TimerEvent.TIMER, this.1bi);
        }

        override public function destroy():void{
            this.S7.remove(this.9b);
            this.1YD.remove(this.0FG);
            this.view.stop();
        }

        private function 0FG():void{
            this.view.stop();
        }

        private function 1bi(_arg1:TimerEvent):void{
            this.0k8.stop();
            this.view.start();
            this.view.x = (300 - (this.view.width / 2));
        }

        private function 9b(_arg1:int):void{
            this.0k8.start();
            this.view.stop();
        }


    }
}//package 1UB

