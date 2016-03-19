﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.SpiderWeb

package com.company.assembleegameclient.objects{
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map._1C8;
    import com.company.assembleegameclient.map.Square;

    public class SpiderWeb extends GameObject {

        private var _0pV:Boolean = false;

        public function SpiderWeb(_arg1:XML){
            super(_arg1);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
            if (!this._0pV)
            {
                this._0pV = this._1VO();
            }
            if (this._0pV)
            {
                super.draw(_arg1, _arg2, _arg3);
            }
        }

        private function _1VO():Boolean{
            var _local1:Square;
            _local1 = map_.lookupSquare((x_ - 1), y_);
            if (((!((_local1 == null))) && ((_local1.obj_ is Wall))))
            {
                return (true);
            }
            _local1 = map_.lookupSquare(x_, (y_ - 1));
            if (((!((_local1 == null))) && ((_local1.obj_ is Wall))))
            {
                _0rb.setPosition(x_, y_, 0, 90);
                return (true);
            }
            _local1 = map_.lookupSquare((x_ + 1), y_);
            if (((!((_local1 == null))) && ((_local1.obj_ is Wall))))
            {
                _0rb.setPosition(x_, y_, 0, 180);
                return (true);
            }
            _local1 = map_.lookupSquare(x_, (y_ + 1));
            if (((!((_local1 == null))) && ((_local1.obj_ is Wall))))
            {
                _0rb.setPosition(x_, y_, 0, 270);
                return (true);
            }
            return (false);
        }


    }
}//package com.company.assembleegameclient.objects

