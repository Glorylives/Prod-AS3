// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ArenaPortal

package com.company.assembleegameclient.objects{
    import _ZE.ArenaPortalPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import _ZE.Panel;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map._1C8;
    import _1n4._1WS;
    import _1n4._1Jo;
    import _04_._1JZ;
    import _CU._1CD;
    import flash.display.BitmapData;

    public class ArenaPortal extends Portal implements _18p {

        public function ArenaPortal(_arg1:XML){
            super(_arg1);
            _10J = true;
            name_ = "";
        }

        override public function getPanel(_arg1:GameSprite):Panel{
            return (new ArenaPortalPanel(_arg1, this));
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
            super.draw(_arg1, _arg2, _arg3);
            _0lq(_arg1, _arg2);
        }

        override protected function makeNameBitmapData():BitmapData{
            var _local1:_1Jo = new _1WS(name_);
            var _local2:_1CD = _1JZ._0JF().getInstance(_1CD);
            return (_local2.make(_local1, 16, 0xFFFFFF, true, _1Ab, true));
        }


    }
}//package com.company.assembleegameclient.objects

