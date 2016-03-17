// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.9D

package 1Np{
    import flash.geom.Point;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.utils.Timer;
    import flash.events.TimerEvent;

    public class 9D extends 0F- {

        public var start_:Point;
        public var go:GameObject;
        private var 0Fg:Boolean;

        public function 9D(_arg1:GameObject){
            this.go = _arg1;
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local3:Timer = new Timer(50, 12);
            _local3.addEventListener(TimerEvent.TIMER, this.13c);
            _local3.start();
            return (false);
        }

        private function 13c(_arg1:TimerEvent):void{
            this.0Fg = !(this.0Fg);
            this.go.H4(this.0Fg);
        }


    }
}//package 1Np

