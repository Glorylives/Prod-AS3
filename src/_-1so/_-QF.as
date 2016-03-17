// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1so.QF

package 1so{
    import flash.display.Sprite;
    import com.company.assembleegameclient.map.Map;
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.objects.08T;
    import flash.events.Event;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.map.1C8;
    import __AS3__.vec.*;

    public class QF extends Sprite {

        public var map_:Map;
        public var Ph:Vector.<0-w> = null;
        public var questArrow_:0me;

        public function QF(_arg1:Map){
            var _local3:0-w;
            super();
            this.map_ = _arg1;
            this.Ph = new Vector.<0-w>(08T.0-W, true);
            var _local2:int;
            while (_local2 < 08T.0-W)
            {
                _local3 = new 0-w();
                this.Ph[_local2] = _local3;
                addChild(_local3);
                _local2++;
            };
            this.questArrow_ = new 0me(this.map_);
            addChild(this.questArrow_);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            0yC.K2();
        }

        public function draw(_arg1:1C8, _arg2:int):void{
            var _local6:0-w;
            var _local7:Player;
            var _local8:int;
            var _local9:0-w;
            var _local10:Number;
            var _local11:Number;
            if (this.map_.player_ == null)
            {
                return;
            };
            var _local3:08T = this.map_.party_;
            var _local4:Player = this.map_.player_;
            var _local5:int;
            while (_local5 < 08T.0-W)
            {
                _local6 = this.Ph[_local5];
                if (_local6.01-)
                {
                } else
                {
                    if (_local5 >= _local3.Mf.length)
                    {
                        _local6.1Ix(null);
                    } else
                    {
                        _local7 = _local3.Mf[_local5];
                        if (((((_local7.1th) || ((_local7.map_ == null)))) || (_local7.RK)))
                        {
                            _local6.1Ix(null);
                        } else
                        {
                            _local6.1Ix(_local7);
                            _local8 = 0;
                            while (_local8 < _local5)
                            {
                                _local9 = this.Ph[_local8];
                                _local10 = (_local6.x - _local9.x);
                                _local11 = (_local6.y - _local9.y);
                                if (((_local10 * _local10) + (_local11 * _local11)) < 64)
                                {
                                    if (!_local9.01-)
                                    {
                                        _local9.1uN(_local7);
                                    };
                                    _local6.1Ix(null);
                                    break;
                                };
                                _local8++;
                            };
                            _local6.draw(_arg2, _arg1);
                        };
                    };
                };
                _local5++;
            };
            if (!this.questArrow_.01-)
            {
                this.questArrow_.draw(_arg2, _arg1);
            };
        }


    }
}//package 1so

