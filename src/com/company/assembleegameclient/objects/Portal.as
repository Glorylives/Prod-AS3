// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Portal

package com.company.assembleegameclient.objects{
    import _04_._1JZ;

import _1n4._1Jo;

import _CU._1CD;

import com.company.assembleegameclient.objects.GameObject;

import flash.display.BitmapData;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map._1C8;
    import _ZE.PortalPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import _ZE.Panel;

    public class Portal extends GameObject implements _18p {

        private static const fO:RegExp = /(^\s+)\s\(([0-9]+)\/[0-9]+\)/;

        public var _1OJ:Boolean;
        public var _1QF:Boolean;
        public var TW:Boolean = true;

        public function Portal(_arg1:XML){
            super(_arg1);
            _10J = true;
            this._1OJ = _arg1.hasOwnProperty("NexusPortal");
            this._1QF = _arg1.hasOwnProperty("LockedPortal");
        }

        override protected function makeNameBitmapData():BitmapData{
            var _local1:Array = name_.match(fO);
            var _local2:_1Jo = new _0FU().makeBuilder(name_);
            var _local3:_1CD = _1JZ._0JF().getInstance(_1CD);
            return (_local3.make(_local2, 16, 0xFFFFFF, true, _1Ab, true));
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
            super.draw(_arg1, _arg2, _arg3);
            if (this._1OJ)
            {
                GameObject._0lq(_arg1, _arg2);
            };
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new PortalPanel(_arg1, this));
        }


    }
}//package com.company.assembleegameclient.objects

