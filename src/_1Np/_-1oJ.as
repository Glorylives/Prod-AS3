// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.1oJ

package 1Np{
    import flash.geom.Point;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.utils.Timer;
    import flash.events.TimerEvent;

    public class 1oJ extends 0F- {

        public var start_:Point;
        public var go:GameObject;
        private var 0L7:Number;
        private var 1HR:Number;
        private var 0kS:ParticleField;
        private var time:uint;
        private var timer:Timer;
        private var rA:Boolean;

        public function 1oJ(_arg1:GameObject, _arg2:uint){
            this.go = _arg1;
            this.0L7 = (Math.floor((_arg1.x_ * 10)) / 10);
            this.1HR = (Math.floor((_arg1.y_ * 10)) / 10);
            this.time = _arg2;
            this.UB();
            this.0Wo();
        }

        private function UB():void{
            var _local1:uint = (((this.go.texture_.height == 8)) ? 50 : 30);
            this.timer = new Timer(_local1, Math.round((this.time / _local1)));
            this.timer.addEventListener(TimerEvent.TIMER, this.13c);
            this.timer.addEventListener(TimerEvent.TIMER_COMPLETE, this.0cy);
            this.timer.start();
        }

        private function 13c(_arg1:TimerEvent):void{
            var _local2:Number = (Math.floor((this.go.x_ * 10)) / 10);
            var _local3:Number = (Math.floor((this.go.y_ * 10)) / 10);
            if (((!((this.0L7 == _local2))) || (!((this.1HR == _local3)))))
            {
                this.timer.stop();
                this.0kS.destroy();
            }
        }

        private function 0cy(_arg1:TimerEvent):void{
            this.0kS.destroy();
            var _local2:Timer = new Timer(33, 12);
            _local2.addEventListener(TimerEvent.TIMER, this.1eI);
            _local2.start();
        }

        private function 1eI(_arg1:TimerEvent):void{
            this.rA = !(this.rA);
            this.go.0MR(this.rA);
        }

        private function 0Wo():void{
            this.0kS = new ParticleField(this.go.texture_.width, this.go.texture_.height);
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            map_.addObj(this.0kS, this.go.x_, this.go.y_);
            return (false);
        }


    }
}//package 1Np

