// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.1k8

package _1aA{
    import flash.display.Sprite;
    import flash.geom.Rectangle;
    import flash.display.Shape;

    import com.company.assembleegameclient.ui.0DJ;
    import flash.events.Event;
    import AO.du;
    import com.company.assembleegameclient.util.09g;
    import flash.display.BitmapData;
    import com.company.util.BitmapUtil;
    import flash.display.Bitmap;
    import flash.utils.getTimer;
    import flash.display.DisplayObject;


    public class 1k8 extends Sprite {

        private var rect_:Rectangle;
        private var mask_:Shape;
        private var 1G2:Sprite;
        private var 0pc:Vector.<0Nh>;
        private var Ae:0DJ;
        private var startTime_:int;

        public function 1k8(_arg1:Rectangle, _arg2:XML){
            var _local4:XML;
            this.mask_ = new Shape();
            this.1G2 = new Sprite();
            this.0pc = new Vector.<0Nh>();
            super();
            this.rect_ = _arg1;
            graphics.lineStyle(1, 0x494949, 2);
            graphics.drawRect((this.rect_.x + 1), (this.rect_.y + 1), (this.rect_.width - 2), (this.rect_.height - 2));
            graphics.lineStyle();
            this.Ae = new 0DJ(16, this.rect_.height);
            this.Ae.addEventListener(Event.CHANGE, this.0iO);
            this.mask_.graphics.beginFill(0xFFFFFF, 1);
            this.mask_.graphics.drawRect(this.rect_.x, this.rect_.y, this.rect_.width, this.rect_.height);
            this.mask_.graphics.endFill();
            addChild(this.mask_);
            mask = this.mask_;
            addChild(this.1G2);
            this.1ZF(du.0G-, null, 0, _arg2.Shots, false, 5746018);
            if (int(_arg2.Shots) != 0)
            {
                this.1ZF(du.Zi, null, 0, ((100 * Number(_arg2.ShotsThatDamage)) / Number(_arg2.Shots)), true, 5746018, "", "%");
            }
            this.1ZF(du.19n, null, 0, _arg2.TilesUncovered, false, 5746018);
            this.1ZF(du.0XE, null, 0, _arg2.MonsterKills, false, 5746018);
            this.1ZF(du.Pw, null, 0, _arg2.GodKills, false, 5746018);
            this.1ZF(du.1O1, null, 0, _arg2.OryxKills, false, 5746018);
            this.1ZF(du.kb, null, 0, _arg2.QuestsCompleted, false, 5746018);
            this.1ZF(du.hT, null, 0, ((((((int(_arg2.PirateCavesCompleted) + int(_arg2.UndeadLairsCompleted)) + int(_arg2.AbyssOfDemonsCompleted)) + int(_arg2.SnakePitsCompleted)) + int(_arg2.SpiderDensCompleted)) + int(_arg2.SpriteWorldsCompleted)) + int(_arg2.TombsCompleted)), false, 5746018);
            this.1ZF(du.ra, null, 0, _arg2.LevelUpAssists, false, 5746018);
            var _local3:BitmapData = 09g.0jZ();
            _local3 = BitmapUtil.0Bs(_local3, 6, 6, (_local3.width - 12), (_local3.height - 12));
            this.1ZF(du.rl, null, 0, _arg2.BaseFame, true, 0xFFC800, "", "", new Bitmap(_local3));
            for each (_local4 in _arg2.Bonus)
            {
                this.1ZF(_local4.@id, _local4.@desc, _local4.@level, int(_local4), true, 0xFFC800, "+", "", new Bitmap(_local3));
            }
        }

        public function 08r():void{
            var _local1:0Nh;
            this.2-D();
            this.startTime_ = -(int.MAX_VALUE);
            for each (_local1 in this.0pc)
            {
                _local1.049();
            }
        }

        public function 2-D():void{
            this.startTime_ = getTimer();
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function 0iO(_arg1:Event):void{
            var _local2:Number = this.Ae.0md();
            this.1G2.y = ((_local2 * ((this.rect_.height - this.1G2.height) - 15)) + 5);
        }

        private function 1ZF(_arg1:String, _arg2:String, _arg3:int, _arg4:int, _arg5:Boolean, _arg6:uint, _arg7:String="", _arg8:String="", _arg9:DisplayObject=null):void{
            if ((((_arg4 == 0)) && (!(_arg5))))
            {
                return;
            }
            this.0pc.push(new 0Nh(20, 0xB3B3B3, _arg6, _arg1, _arg2, _arg3, _arg4, _arg7, _arg8, _arg9));
        }

        private function onEnterFrame(_arg1:Event):void{
            var _local3:Number;
            var _local6:0Nh;
            var _local2:Number = (this.startTime_ + ((2000 * (this.0pc.length - 1)) / 2));
            _local3 = getTimer();
            var _local4:int = Math.min(this.0pc.length, (((2 * (getTimer() - this.startTime_)) / 2000) + 1));
            var _local5:int;
            while (_local5 < _local4)
            {
                _local6 = this.0pc[_local5];
                _local6.y = (28 * _local5);
                this.1G2.addChild(_local6);
                _local5++;
            }
            this.1G2.y = ((this.rect_.height - this.1G2.height) - 10);
            if (_local3 > (_local2 + 1000))
            {
                this.Yp();
                dispatchEvent(new Event(Event.COMPLETE));
                removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            }
        }

        private function Yp():void{
            graphics.clear();
            graphics.lineStyle(1, 0x494949, 2);
            graphics.drawRect((this.rect_.x + 1), (this.rect_.y + 1), (this.rect_.width - 26), (this.rect_.height - 2));
            graphics.lineStyle();
            this.Ae.x = (this.rect_.width - 16);
            this.Ae.1OQ(this.mask_.height, this.1G2.height);
            this.Ae.Gx(1);
            addChild(this.Ae);
        }


    }
}//package _1aA

