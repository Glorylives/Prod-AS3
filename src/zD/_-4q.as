// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//zD.4q

package zD{
    import flash.display.Sprite;
    import flash.geom.Rectangle;
    import com.company.assembleegameclient.map.Map;
    import com.company.util.IntPoint;
    import com.company.assembleegameclient.map.1C8;
    import flash.events.Event;
    import flash.utils.getTimer;
    import flash.utils.ByteArray;
    import 1h1.1cJ;
    import 04w.Background;

    public class 4q extends Sprite {

        private static const BORDER:int = 10;
        private static const 1na:Rectangle = new Rectangle(-400, -300, 800, 600);
        private static const 0VL:Number = ((7 * Math.PI) / 4);//5.49778714378214
        private static const Tp:Number = (1 / 1000);//0.001
        private static const 1WR:Class = 0cW;

        private static var 1xC:Map;
        private static var 1l5:IntPoint;
        private static var 0BN:Number;
        private static var 1px:Number;
        private static var camera:1C8;

        private var Tn:int;
        private var time:Number;

        public function 4q(){
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onAddedToStage(_arg1:Event):void{
            addChildAt((1xC = ((1xC) || (this.0Gx()))), 0);
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            this.Tn = getTimer();
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onEnterFrame(_arg1:Event):void{
            this.time = getTimer();
            0BN = (0BN + ((this.time - this.Tn) * Tp));
            if (0BN > (1l5.x_ + BORDER))
            {
                0BN = (0BN - 1l5.x_);
            };
            camera.configure(0BN, 1px, 12, 0VL, 1na);
            1xC.draw(camera, this.time);
            this.Tn = this.time;
        }

        private function 0Gx():Map{
            var _local1:ByteArray = new 1WR();
            var _local2:String = _local1.readUTFBytes(_local1.length);
            1l5 = 1cJ.02p(_local2);
            0BN = BORDER;
            1px = (BORDER + int(((1l5.y_ - (2 * BORDER)) * Math.random())));
            camera = new 1C8();
            var _local3:Map = new Map(null);
            _local3.setProps((1l5.x_ + (2 * BORDER)), 1l5.y_, "Background Map", Background.1Yg, false, false);
            _local3.initialize();
            1cJ.0Z2(_local2, _local3, 0, 0);
            1cJ.0Z2(_local2, _local3, 1l5.x_, 0);
            return (_local3);
        }


    }
}//package zD

