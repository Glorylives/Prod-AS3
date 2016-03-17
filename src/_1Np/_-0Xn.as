// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.0Xn

package 1Np{
    import __AS3__.vec.Vector;
    import flash.display.BitmapData;
    import flash.geom.Point;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.utils.Timer;
    import com.company.util.AssetLibrary;
    import com.company.util.J2;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.events.TimerEvent;
    import __AS3__.vec.*;

    public class 0Xn extends 0F- {

        public static var 8y:Vector.<BitmapData>;

        public var start_:Point;
        public var end_:Point;
        public var objectId:uint;
        public var go:GameObject;
        private var oo:Number;
        private var Bj:Number;
        private var 04s:Number;
        private var 14F:uint;
        private var timer:Timer;
        private var K4:Boolean = false;

        public function 0Xn(_arg1:GameObject){
            this.go = _arg1;
            if (_arg1.texture_.height == 8)
            {
                this.oo = 0.4;
                this.Bj = 1.3;
                this.14F = 30;
            } else
            {
                this.oo = 0.7;
                this.Bj = 2;
                this.14F = 40;
            };
        }

        private function 1iw():void{
            var _local2:uint;
            8y = new Vector.<BitmapData>();
            var _local1:J2 = AssetLibrary.0wJ("lofiParticlesShocker");
            var _local3:uint = 9;
            _local2 = 0;
            while (_local2 < _local3)
            {
                8y.push(TextureRedrawer.redraw(_local1.7D[_local2], this.14F, true, 0, true));
                _local2++;
            };
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            if (this.K4)
            {
                return (false);
            };
            if (!this.timer)
            {
                this.initialize();
            };
            x_ = this.go.x_;
            y_ = this.go.y_;
            return (true);
        }

        private function initialize():void{
            this.timer = new Timer(200, 10);
            this.timer.addEventListener(TimerEvent.TIMER, this.13c);
            this.timer.addEventListener(TimerEvent.TIMER_COMPLETE, this.1Yl);
            this.timer.start();
            this.1iw();
        }

        private function 13c(_arg1:TimerEvent):void{
            if (map_)
            {
                this.04s = (int((Math.random() * 360)) * (Math.PI / 180));
                this.start_ = new Point((this.go.x_ + (Math.sin(this.04s) * this.oo)), (this.go.y_ + (Math.cos(this.04s) * this.oo)));
                this.end_ = new Point((this.go.x_ + (Math.sin(this.04s) * this.Bj)), (this.go.y_ + (Math.cos(this.04s) * this.Bj)));
                map_.addObj(new 1JY(this.objectId, 25, this.14F, this.start_, this.end_, this.04s, this.go, 8y), this.start_.x, this.start_.y);
            };
        }

        private function 1Yl(_arg1:TimerEvent):void{
            this.destroy();
        }

        public function destroy():void{
            if (this.timer)
            {
                this.timer.removeEventListener(TimerEvent.TIMER, this.13c);
                this.timer.removeEventListener(TimerEvent.TIMER, this.1Yl);
                this.timer.stop();
                this.timer = null;
            };
            this.go = null;
            this.K4 = true;
        }

        override public function removeFromMap():void{
            this.destroy();
            super.removeFromMap();
        }


    }
}//package 1Np

