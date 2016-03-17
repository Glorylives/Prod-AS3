// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.ParticleField

package 1Np{
    import 1a.Y3;
    import flash.display.Sprite;
    import flash.utils.Timer;
    import flash.display.BitmapData;
    import flash.events.TimerEvent;
    import flash.geom.Point;

    public class ParticleField extends Y3 {

        private const SMALL:String = "SMALL";
        private const LARGE:String = "LARGE";

        private var 021:String;
        private var width:int;
        private var height:int;
        public var lifetime_:int;
        public var timeLeft_:int;
        private var 9I:Sprite;
        private var 0sR:Array;
        private var visibleHeight:Number;
        private var offset:Number;
        private var timer:Timer;
        private var 01y:Boolean;

        public function ParticleField(_arg1:Number, _arg2:Number){
            this.9I = new Sprite();
            this.0sR = [];
            this.Zu(_arg2, _arg1);
            this.0ng();
            this.UB();
            var _local3:BitmapData = new BitmapData(this.width, this.height, true, 0);
            _local3.draw(this.9I);
            super(_local3, 0);
        }

        private function UB():void{
            this.timer = new Timer(this.0nH());
            this.timer.addEventListener(TimerEvent.TIMER, this.13c);
            this.timer.start();
        }

        private function Zu(_arg1:Number, _arg2:Number):void{
            this.visibleHeight = ((_arg1 * 5) + 40);
            this.offset = (this.visibleHeight * 0.5);
            this.width = ((_arg2 * 5) + 40);
            this.height = (this.visibleHeight + this.offset);
        }

        private function 0ng():void{
            this.021 = (((this.width == 8)) ? this.SMALL : this.LARGE);
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local3:uint;
            if (this.01y)
            {
                return (false);
            };
            var _local4:uint = this.0sR.length;
            _local3 = 0;
            while (_local3 < _local4)
            {
                if (this.0sR[_local3])
                {
                    this.0sR[_local3].move();
                };
                _local3++;
            };
            0Pk = new BitmapData(this.width, this.height, true, 0);
            0Pk.draw(this.9I);
            return (true);
        }

        private function 13c(_arg1:TimerEvent):void{
            var _local2:Square = new Square(this.T3(), this.yS(), this.ax());
            _local2.complete.add(this.c2);
            this.0sR.push(_local2);
            this.9I.addChild(_local2);
        }

        private function ax():uint{
            return ((((this.021 == this.SMALL)) ? 15 : 30));
        }

        private function 0nH():uint{
            return ((((this.021 == this.SMALL)) ? 100 : 50));
        }

        private function c2(_arg1:Square):void{
            _arg1.complete.removeAll();
            this.9I.removeChild(_arg1);
            this.0sR.splice(this.0sR.indexOf(_arg1), 1);
        }

        private function T3():Point{
            var _local1:Array = (((Math.random() < 0.5)) ? ["x", "y", "width", "visibleHeight"] : ["y", "x", "visibleHeight", "width"]);
            var _local2:Point = new Point(0, 0);
            _local2[_local1[0]] = (Math.random() * this[_local1[2]]);
            _local2[_local1[1]] = (((Math.random() < 0.5)) ? 0 : this[_local1[3]]);
            return (_local2);
        }

        private function yS():Point{
            return (new Point((this.width / 2), (this.visibleHeight / 2)));
        }

        public function destroy():void{
            if (this.timer != null)
            {
                this.timer.removeEventListener(TimerEvent.TIMER, this.13c);
                this.timer.stop();
                this.timer = null;
            };
            this.9I = null;
            this.0sR = [];
            this.01y = true;
        }


    }
}//package 1Np

import flash.display.Shape;
import flash.geom.Point;
import _Jy._1HZ;

class Square extends Shape {

    public var start:Point;
    public var end:Point;
    private var lifespan:uint;
    private var moveX:Number;
    private var moveY:Number;
    private var angle:Number;
    public var complete:_1HZ;

    public function Square(_arg1:Point, _arg2:Point, _arg3:uint){
        this.complete = new _1HZ();
        super();
        this.start = _arg1;
        this.end = _arg2;
        this.lifespan = _arg3;
        this.moveX = ((_arg2.x - _arg1.x) / _arg3);
        this.moveY = ((_arg2.y - _arg1.y) / _arg3);
        graphics.beginFill(0xFFFFFF);
        graphics.drawRect(-2, -2, 4, 4);
        this.position();
    }

    private function position():void{
        this.x = this.start.x;
        this.y = this.start.y;
    }

    public function move():void{
        this.x = (this.x + this.moveX);
        this.y = (this.y + this.moveY);
        this.lifespan--;
        if (!this.lifespan)
        {
            this.complete.dispatch(this);
        };
    }


}

