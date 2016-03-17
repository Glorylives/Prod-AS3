// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d.Face3D

package com.company.assembleegameclient.engine3d{
    import flash.display.GraphicsSolidFill;
    import flash.display.BitmapData;
    import __AS3__.vec.Vector;
    import flash.display.GraphicsBitmapFill;
    import flash.display.GraphicsPath;
    import flash.geom.Vector3D;
    import flash.display.GraphicsPathCommand;
    import flash.geom.Utils3D;
    import com.company.util._tu;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map.1C8;
    import com.company.util.0JZ;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import __AS3__.vec.*;

    public class Face3D {

        private static const Ne:GraphicsSolidFill = new GraphicsSolidFill(0, 1);

        public var iB:BitmapData;
        public var 0y2:Vector.<Number>;
        public var yL:Vector.<Number>;
        public var vout_:Vector.<Number>;
        public var 1va:Boolean;
        public var Bq:Number = 1;
        public var 0XV:Boolean = false;
        private var 0KB:Boolean = true;
        private var 20L:TextureMatrix = null;
        public var bitmapFill_:GraphicsBitmapFill;
        private var path_:GraphicsPath;

        public function Face3D(_arg1:BitmapData, _arg2:Vector.<Number>, _arg3:Vector.<Number>, _arg4:Boolean=false, _arg5:Boolean=false){
            var _local7:Vector3D;
            this.vout_ = new Vector.<Number>();
            this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
            this.path_ = new GraphicsPath(new Vector.<int>(), null);
            super();
            this.iB = _arg1;
            this.0y2 = _arg2;
            this.yL = _arg3;
            this.1va = _arg4;
            if (_arg5)
            {
                _local7 = new Vector3D();
                0Ru.0x0(_arg2, _local7);
                this.Bq = 0fX.QV(_local7, 0.75);
            };
            this.path_.commands.push(GraphicsPathCommand.MOVE_TO);
            var _local6:int = 3;
            while (_local6 < this.0y2.length)
            {
                this.path_.commands.push(GraphicsPathCommand.LINE_TO);
                _local6 = (_local6 + 3);
            };
            this.path_.data = this.vout_;
        }

        public function dispose():void{
            this.iB = null;
            this.0y2 = null;
            this.yL = null;
            this.vout_ = null;
            this.20L = null;
            this.bitmapFill_ = null;
            this.path_.commands = null;
            this.path_.data = null;
            this.path_ = null;
        }

        public function 2-H(_arg1:BitmapData):void{
            if (this.iB == _arg1)
            {
                return;
            };
            this.iB = _arg1;
            this.0KB = true;
        }

        public function 0tI(_arg1:Vector.<Number>):void{
            this.yL = _arg1;
            this.0KB = true;
        }

        public function 1q4():Number{
            var _local1:Number = -(Number.MAX_VALUE);
            var _local2:int = this.vout_.length;
            var _local3:int;
            while (_local3 < _local2)
            {
                if (this.vout_[(_local3 + 1)] > _local1)
                {
                    _local1 = this.vout_[(_local3 + 1)];
                };
                _local3 = (_local3 + 2);
            };
            return (_local1);
        }

        public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8):Boolean{
            var _local10:Vector.<Number>;
            var _local11:Number;
            var _local12:Number;
            var _local13:Number;
            var _local14:Number;
            var _local15:int;
            Utils3D.projectVectors(_arg2.wToS_, this.0y2, this.vout_, this.yL);
            if (this.1va)
            {
                _local10 = this.vout_;
                _local11 = (_local10[2] - _local10[0]);
                _local12 = (_local10[3] - _local10[1]);
                _local13 = (_local10[4] - _local10[0]);
                _local14 = (_local10[5] - _local10[1]);
                if (((_local11 * _local14) - (_local12 * _local13)) > 0)
                {
                    return (false);
                };
            };
            var _local3:Number = (_arg2.0KH.x - 10);
            var _local4:Number = (_arg2.0KH.y - 10);
            var _local5:Number = (_arg2.0KH.right + 10);
            var _local6:Number = (_arg2.0KH.bottom + 10);
            var _local7:Boolean = true;
            var _local8:int = this.vout_.length;
            var _local9:int;
            while (_local9 < _local8)
            {
                _local15 = (_local9 + 1);
                if ((((((((this.vout_[_local9] >= _local3)) && ((this.vout_[_local9] <= _local5)))) && ((this.vout_[_local15] >= _local4)))) && ((this.vout_[_local15] <= _local6))))
                {
                    _local7 = false;
                    break;
                };
                _local9 = (_local9 + 2);
            };
            if (_local7)
            {
                return (false);
            };
            if (this.0XV)
            {
                _arg1.push(Ne);
                _arg1.push(this.path_);
                _arg1.push(tu.END_FILL);
                return (true);
            };
            if (this.0KB)
            {
                this.16c();
            };
            this.20L.calculateTextureMatrix(this.vout_);
            this.bitmapFill_.bitmapData = this.20L.texture_;
            this.bitmapFill_.matrix = this.20L.tToS_;
            _arg1.push(this.bitmapFill_);
            _arg1.push(this.path_);
            _arg1.push(tu.END_FILL);
            return (true);
        }

        public function contains(_arg1:Number, _arg2:Number):Boolean{
            if (0JZ.0w3(this.vout_[0], this.vout_[1], this.vout_[2], this.vout_[3], this.vout_[4], this.vout_[5], _arg1, _arg2))
            {
                return (true);
            };
            if ((((this.vout_.length == 8)) && (0JZ.0w3(this.vout_[0], this.vout_[1], this.vout_[4], this.vout_[5], this.vout_[6], this.vout_[7], _arg1, _arg2))))
            {
                return (true);
            };
            return (false);
        }

        private function 16c():void{
            var _local1:BitmapData = TextureRedrawer.WQ(this.iB, this.Bq);
            if (this.20L == null)
            {
                this.20L = new TextureMatrix(_local1, this.yL);
            } else
            {
                this.20L.texture_ = _local1;
                this.20L.0PR(this.yL);
            };
            this.0KB = false;
        }


    }
}//package com.company.assembleegameclient.engine3d

