// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Wall

package com.company.assembleegameclient.objects{
    import com.company.assembleegameclient.engine3d.Face3D;
    import flash.display.BitmapData;
    import com.company.util.BitmapUtil;
    import com.company.assembleegameclient.map.Square;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map._1C8;

    public class Wall extends GameObject {

        private static const _0Gy:Vector.<Number> = new <Number>[0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0];
        private static const _20f:Vector.<int> = new <int>[0, 1, 0, -1];
        private static const _9Q:Vector.<int> = new <int>[-1, 0, 1, 0];

        public var faces_:Vector.<Face3D>;
        private var i6:Face3D = null;
        private var _0Pf:BitmapData = null;

        public function Wall(_arg1:XML){
            this.faces_ = new Vector.<Face3D>();
            super(_arg1);
            _1QM = false;
            var _local2:_27S = ObjectLibrary._1Vi[objectType_];
            this._0Pf = _local2.getTexture(0);
        }

        override public function setObjectId(_arg1:int):void{
            super.setObjectId(_arg1);
            var _local2:_27S = ObjectLibrary._1Vi[objectType_];
            this._0Pf = _local2.getTexture(_arg1);
        }

        override public function getColor():uint{
            return (BitmapUtil._1WN(this._0Pf));
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
            var _local6:BitmapData;
            var _local7:Face3D;
            var _local8:Square;
            if (texture_ == null)
            {
                return;
            }
            if (this.faces_.length == 0)
            {
                this.Me();
            }
            var _local4:BitmapData = texture_;
            if (_0dP != null)
            {
                _local6 = _0dP.getTexture(_arg3);
                if (_local6 != null)
                {
                    _local4 = _local6;
                }
            }
            var _local5:int;
            while (_local5 < this.faces_.length)
            {
                _local7 = this.faces_[_local5];
                _local8 = map_.lookupSquare((x_ + _20f[_local5]), (y_ + _9Q[_local5]));
                if ((((((_local8 == null)) || ((_local8.texture_ == null)))) || (((((!((_local8 == null))) && ((_local8.obj_ is Wall)))) && (!(_local8.obj_.RK))))))
                {
                    _local7._0XV = true;
                } else
                {
                    _local7._0XV = false;
                    if (_0dP != null)
                    {
                        _local7._2H(_local4);
                    }
                }
                _local7.draw(_arg1, _arg2);
                _local5++;
            }
            this.i6.draw(_arg1, _arg2);
        }

        public function Me():void{
            this.faces_.length = 0;
            var _local1:int = x_;
            var _local2:int = y_;
            var _local3:Vector.<Number> = new <Number>[_local1, _local2, 1, (_local1 + 1), _local2, 1, (_local1 + 1), (_local2 + 1), 1, _local1, (_local2 + 1), 1];
            this.i6 = new Face3D(this._0Pf, _local3, _0Gy, false, true);
            this.i6.bitmapFill_.repeat = true;
            this._0gI(_local1, _local2, 1, (_local1 + 1), _local2, 1);
            this._0gI((_local1 + 1), _local2, 1, (_local1 + 1), (_local2 + 1), 1);
            this._0gI((_local1 + 1), (_local2 + 1), 1, _local1, (_local2 + 1), 1);
            this._0gI(_local1, (_local2 + 1), 1, _local1, _local2, 1);
        }

        private function _0gI(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number, _arg5:Number, _arg6:Number):void{
            var _local7:Vector.<Number> = new <Number>[_arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg4, _arg5, (_arg6 - 1), _arg1, _arg2, (_arg3 - 1)];
            var _local8:Face3D = new Face3D(texture_, _local7, _0Gy, true, true);
            _local8.bitmapFill_.repeat = true;
            this.faces_.push(_local8);
        }


    }
}//package com.company.assembleegameclient.objects

