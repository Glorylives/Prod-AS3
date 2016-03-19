// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d._wq

package com.company.assembleegameclient.engine3d{
    import flash.display.GraphicsPathCommand;
    import flash.display.GraphicsEndFill;
    import flash.display.GraphicsPath;
    import flash.display.GraphicsBitmapFill;
    import flash.geom.Matrix;
    import flash.display.GraphicsSolidFill;
    import flash.geom.Vector3D;
    import flash.geom.Utils3D;
    import com.company.util.Trig;
    import flash.display.IGraphicsData;
    import flash.geom.Matrix3D;
    import com.company.assembleegameclient.map._1C8;
    import flash.display.BitmapData;

    public class _wq {

        private static const _0jB:Vector.<int> = new <int>[GraphicsPathCommand.MOVE_TO, GraphicsPathCommand.LINE_TO, GraphicsPathCommand.LINE_TO, GraphicsPathCommand.LINE_TO];
        private static const END_FILL:GraphicsEndFill = new GraphicsEndFill();

        private const data_:Vector.<Number> = new Vector.<Number>();
        private const path_:GraphicsPath = new flash.display.GraphicsPath(_0jB, data_);
        private const bitmapFill_:GraphicsBitmapFill = new GraphicsBitmapFill(null, new Matrix(), false, false);
        private const _18a:GraphicsSolidFill = new GraphicsSolidFill(0, 1);

        public var size_:Number;
        public var _4M:Vector3D;

        public function _wq(_arg1:Number){
            this.size_ = _arg1;
        }

        public function setSize(_arg1:Number):void{
            this.size_ = _arg1;
        }

        public function draw(_arg1:Vector.<IGraphicsData>, _arg2:Vector3D, _arg3:Number, _arg4:Matrix3D, _arg5:_1C8, _arg6:BitmapData, _arg7:uint=0):void{
            var _local10:Number;
            var _local11:Number;
            var _local12:Matrix;
            this._4M = Utils3D.projectVector(_arg4, _arg2);
            if (this._4M.w < 0)
            {
                return;
            }
            var _local8:Number = (this._4M.w * Math.sin(((_arg5._1ic.fieldOfView / 2) * Trig.kP)));
            var _local9:Number = (this.size_ / _local8);
            this.data_.length = 0;
            if (_arg3 == 0)
            {
                this.data_.push((this._4M.x - _local9), (this._4M.y - _local9), (this._4M.x + _local9), (this._4M.y - _local9), (this._4M.x + _local9), (this._4M.y + _local9), (this._4M.x - _local9), (this._4M.y + _local9));
            } else
            {
                _local10 = Math.cos(_arg3);
                _local11 = Math.sin(_arg3);
                this.data_.push((this._4M.x + ((_local10 * -(_local9)) + (_local11 * -(_local9)))), (this._4M.y + ((_local11 * -(_local9)) - (_local10 * -(_local9)))), (this._4M.x + ((_local10 * _local9) + (_local11 * -(_local9)))), (this._4M.y + ((_local11 * _local9) - (_local10 * -(_local9)))), (this._4M.x + ((_local10 * _local9) + (_local11 * _local9))), (this._4M.y + ((_local11 * _local9) - (_local10 * _local9))), (this._4M.x + ((_local10 * -(_local9)) + (_local11 * _local9))), (this._4M.y + ((_local11 * -(_local9)) - (_local10 * _local9))));
            }
            if (_arg6 != null)
            {
                this.bitmapFill_.bitmapData = _arg6;
                _local12 = this.bitmapFill_.matrix;
                _local12.identity();
                _local12.scale(((2 * _local9) / _arg6.width), ((2 * _local9) / _arg6.height));
                _local12.translate(-(_local9), -(_local9));
                _local12.rotate(_arg3);
                _local12.translate(this._4M.x, this._4M.y);
                _arg1.push(this.bitmapFill_);
            } else
            {
                this._18a.color = _arg7;
                _arg1.push(this._18a);
            }
            _arg1.push(this.path_);
            _arg1.push(END_FILL);
        }


    }
}//package com.company.assembleegameclient.engine3d

