﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1so.QF

package _1so{
import com.company.assembleegameclient.objects._08T;

import flash.display.Sprite;
    import com.company.assembleegameclient.map.Map;
    import flash.events.Event;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.map._1C8;

    public class _QF extends Sprite {

        public var map_:Map;
        public var Ph:Vector.<_0w> = null;
        public var questArrow_:_0me;

        public function _QF(_arg1:Map){
            var _local3:_0w;
            super();
            this.map_ = _arg1;
            this.Ph = new Vector.<_0w>(_08T._0W, true);
            var _local2:int;
            while (_local2 < _08T._0W)
            {
                _local3 = new _0w();
                this.Ph[_local2] = _local3;
                addChild(_local3);
                _local2++;
            }
            this.questArrow_ = new _0me(this.map_);
            addChild(this.questArrow_);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            _0yC.K2();
        }

        public function draw(_arg1:_1C8, _arg2:int):void{
            var _local6:_0w;
            var _local7:Player;
            var _local8:int;
            var _local9:_0w;
            var _local10:Number;
            var _local11:Number;
            if (this.map_.player_ == null)
            {
                return;
            }
            var _local3:_08T = this.map_.party_;
            var _local4:Player = this.map_.player_;
            var _local5:int;
            while (_local5 < _08T._0W)
            {
                _local6 = this.Ph[_local5];
                if (_local6._01)
                {
                } else
                {
                    if (_local5 >= _local3.Mf.length)
                    {
                        _local6._1Ix(null);
                    } else
                    {
                        _local7 = _local3.Mf[_local5];
                        if (((((_local7._1th) || ((_local7.map_ == null)))) || (_local7.RK)))
                        {
                            _local6._1Ix(null);
                        } else
                        {
                            _local6._1Ix(_local7);
                            _local8 = 0;
                            while (_local8 < _local5)
                            {
                                _local9 = this.Ph[_local8];
                                _local10 = (_local6.x - _local9.x);
                                _local11 = (_local6.y - _local9.y);
                                if (((_local10 * _local10) + (_local11 * _local11)) < 64)
                                {
                                    if (!_local9._01)
                                    {
                                        _local9._1uN(_local7);
                                    }
                                    _local6._1Ix(null);
                                    break;
                                }
                                _local8++;
                            }
                            _local6.draw(_arg2, _arg1);
                        }
                    }
                }
                _local5++;
            }
            if (!this.questArrow_._01)
            {
                this.questArrow_.draw(_arg2, _arg1);
            }
        }


    }
}//package 1so

