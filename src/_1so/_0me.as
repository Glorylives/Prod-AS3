﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1so.0me

package _1so{
    import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.map._1C8;

import flash.utils.getTimer;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.objects.GameObject;
    import com.company.assembleegameclient.map.Quest;
    public class _0me extends _0yC {

        public var map_:Map;

        public function _0me(_arg1:Map){
            super(16352321, 12919330, true);
            this.map_ = _arg1;
        }

        public function refreshToolTip():void{
            hZ(this.getToolTip(go_, getTimer()));
        }

        override protected function onMouseOver(_arg1:MouseEvent):void{
            super.onMouseOver(_arg1);
            this.refreshToolTip();
        }

        override protected function onMouseOut(_arg1:MouseEvent):void{
            super.onMouseOut(_arg1);
            this.refreshToolTip();
        }

        private function getToolTip(_arg1:GameObject, _arg2:int):_1ae{
            if ((((_arg1 == null)) || ((_arg1.texture_ == null))))
            {
                return (null);
            };
            if (this.Bx(_arg2))
            {
                return (new QuestToolTip(go_));
            };
            if (Parameters.data_.showQuestPortraits)
            {
                return (new _0xW(_arg1));
            };
            return (null);
        }

        private function Bx(_arg1:int):Boolean{
            var _local2:Quest = this.map_.quest_;
            return (((_01) || (_local2.isNew(_arg1))));
        }

        override public function draw(_arg1:int, _arg2:_1C8):void{
            var _local4:Boolean;
            var _local5:Boolean;
            var _local3:GameObject = this.map_.quest_.getObject(_arg1);
            if (_local3 != go_)
            {
                _1Ix(_local3);
                hZ(this.getToolTip(_local3, _arg1));
            } else
            {
                if (go_ != null)
                {
                    _local4 = (_0Xr is QuestToolTip);
                    _local5 = this.Bx(_arg1);
                    if (_local4 != _local5)
                    {
                        hZ(this.getToolTip(_local3, _arg1));
                    };
                };
            };
            super.draw(_arg1, _arg2);
        }


    }
}//package 1so

