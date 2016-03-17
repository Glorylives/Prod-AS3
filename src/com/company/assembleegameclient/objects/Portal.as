// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Portal

package com.company.assembleegameclient.objects{
    import 1n4.1Jo;
    import _04_._1JZ;
    import _CU.1CD;
    import flash.display.BitmapData;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map.1C8;
    import ZE.PortalPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;

    public class Portal extends GameObject implements 18p {

        private static const fO:RegExp = /(^\s+)\s\(([0-9]+)\/[0-9]+\)/;

        public var 1OJ:Boolean;
        public var 1QF:Boolean;
        public var TW:Boolean = true;

        public function Portal(_arg1:XML){
            super(_arg1);
            10J = true;
            this.1OJ = _arg1.hasOwnProperty("NexusPortal");
            this.1QF = _arg1.hasOwnProperty("LockedPortal");
        }

        override protected function makeNameBitmapData():BitmapData{
            var _local1:Array = name_.match(fO);
            var _local2:1Jo = new 0FU().makeBuilder(name_);
            var _local3:1CD = _1JZ.0JF().getInstance(1CD);
            return (_local3.make(_local2, 16, 0xFFFFFF, true, 1Ab, true));
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            super.draw(_arg1, _arg2, _arg3);
            if (this.1OJ)
            {
                0lq(_arg1, _arg2);
            };
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new PortalPanel(_arg1, this));
        }


    }
}//package com.company.assembleegameclient.objects

