// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.0Xn

package _1Np{
    import flash.display.BitmapData;
    import flash.geom.Point;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.utils.Timer;
    import com.company.util.AssetLibrary;
    import com.company.util.J2;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.events.TimerEvent;

    public class _0Xn extends _0F {

        public static var _8y:Vector.<BitmapData>;

        public var start_:Point;
        public var end_:Point;
        public var objectId:uint;
        public var go:GameObject;
        private var oo:Number;
        private var Bj:Number;
        private var _04s:Number;
        private var _14F:uint;
        private var timer:Timer;
        private var K4:Boolean = false;

        public function _0Xn(_arg1:GameObject){
            this.go = _arg1;
            if (_arg1.texture_.height == 8)
            {
                this.oo = 0.4;
                this.Bj = 1.3;
                this._14F = 30;
            } else
            {
                this.oo = 0.7;
                this.Bj = 2;
                this._14F = 40;
            }
        }

        private function _1iw():void{
            var _local2:uint;
            _8y = new Vector.<BitmapData>();
            var _local1:J2 = AssetLibrary._0wJ("lofiParticlesShocker");
            var _local3:uint = 9;
            _local2 = 0;
            while (_local2 < _local3)
            {
                _8y.push(TextureRedrawer.redraw(_local1._7D[_local2], this._14F, true, 0, true));
                _local2++;
            }
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            if (this.K4)
            {
                return (false);
            }
            if (!this.timer)
            {
                this.initialize();
            }
            x_ = this.go.x_;
            y_ = this.go.y_;
            return (true);
        }

        private function initialize():void{
            this.timer = new Timer(200, 10);
            this.timer.addEventListener(TimerEvent.TIMER, this._13c);
            this.timer.addEventListener(TimerEvent.TIMER_COMPLETE, this._1Yl);
            this.timer.start();
            this._1iw();
        }

        private function _13c(_arg1:TimerEvent):void{
            if (map_)
            {
                this._04s = (int((Math.random() * 360)) * (Math.PI / 180));
                this.start_ = new Point((this.go.x_ + (Math.sin(this._04s) * this.oo)), (this.go.y_ + (Math.cos(this._04s) * this.oo)));
                this.end_ = new Point((this.go.x_ + (Math.sin(this._04s) * this.Bj)), (this.go.y_ + (Math.cos(this._04s) * this.Bj)));
                map_.addObj(new _1JY(this.objectId, 25, this._14F, this.start_, this.end_, this._04s, this.go, _8y), this.start_.x, this.start_.y);
            }
        }

        private function _1Yl(_arg1:TimerEvent):void{
            this.destroy();
        }

        public function destroy():void{
            if (this.timer)
            {
                this.timer.removeEventListener(TimerEvent.TIMER, this._13c);
                this.timer.removeEventListener(TimerEvent.TIMER, this._1Yl);
                this.timer.stop();
                this.timer = null;
            }
            this.go = null;
            this.K4 = true;
        }

        override public function removeFromMap():void{
            this.destroy();
            super.removeFromMap();
        }


    }
}//package 1Np

