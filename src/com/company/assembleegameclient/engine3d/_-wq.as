// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d.wq

package com.company.assembleegameclient.engine3d{
    import __AS3__.vec.Vector;
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
    import com.company.assembleegameclient.map.1C8;
    import flash.display.BitmapData;
    import __AS3__.vec.*;

    public class wq {

        private static const 0jB:Vector.<int> = new <int>[GraphicsPathCommand.MOVE_TO, GraphicsPathCommand.LINE_TO, GraphicsPathCommand.LINE_TO, GraphicsPathCommand.LINE_TO];
        private static const END_FILL:GraphicsEndFill = new GraphicsEndFill();

        private const data_:Vector.<Number> = new Vector.<Number>();
        private const path_:GraphicsPath = new flash.display.GraphicsPath(0jB, wq.data_);
        private const bitmapFill_:GraphicsBitmapFill = new GraphicsBitmapFill(null, new Matrix(), false, false);
        private const 18a:GraphicsSolidFill = new GraphicsSolidFill(0, 1);

        public var size_:Number;
        public var 4M:Vector3D;

        public function wq(_arg1:Number){
            this.size_ = _arg1;
        }

        public function setSize(_arg1:Number):void{
            this.size_ = _arg1;
        }

        public function draw(_arg1:Vector.<IGraphicsData>, _arg2:Vector3D, _arg3:Number, _arg4:Matrix3D, _arg5:1C8, _arg6:BitmapData, _arg7:uint=0):void{
            var _local10:Number;
            var _local11:Number;
            var _local12:Matrix;
            this.4M = Utils3D.projectVector(_arg4, _arg2);
            if (this.4M.w < 0)
            {
                return;
            };
            var _local8:Number = (this.4M.w * Math.sin(((_arg5.1ic.fieldOfView / 2) * Trig.kP)));
            var _local9:Number = (this.size_ / _local8);
            this.data_.length = 0;
            if (_arg3 == 0)
            {
                this.data_.push((this.4M.x - _local9), (this.4M.y - _local9), (this.4M.x + _local9), (this.4M.y - _local9), (this.4M.x + _local9), (this.4M.y + _local9), (this.4M.x - _local9), (this.4M.y + _local9));
            } else
            {
                _local10 = Math.cos(_arg3);
                _local11 = Math.sin(_arg3);
                this.data_.push((this.4M.x + ((_local10 * -(_local9)) + (_local11 * -(_local9)))), (this.4M.y + ((_local11 * -(_local9)) - (_local10 * -(_local9)))), (this.4M.x + ((_local10 * _local9) + (_local11 * -(_local9)))), (this.4M.y + ((_local11 * _local9) - (_local10 * -(_local9)))), (this.4M.x + ((_local10 * _local9) + (_local11 * _local9))), (this.4M.y + ((_local11 * _local9) - (_local10 * _local9))), (this.4M.x + ((_local10 * -(_local9)) + (_local11 * _local9))), (this.4M.y + ((_local11 * -(_local9)) - (_local10 * _local9))));
            };
            if (_arg6 != null)
            {
                this.bitmapFill_.bitmapData = _arg6;
                _local12 = this.bitmapFill_.matrix;
                _local12.identity();
                _local12.scale(((2 * _local9) / _arg6.width), ((2 * _local9) / _arg6.height));
                _local12.translate(-(_local9), -(_local9));
                _local12.rotate(_arg3);
                _local12.translate(this.4M.x, this.4M.y);
                _arg1.push(this.bitmapFill_);
            } else
            {
                this.18a.color = _arg7;
                _arg1.push(this.18a);
            };
            _arg1.push(this.path_);
            _arg1.push(END_FILL);
        }


    }
}//package com.company.assembleegameclient.engine3d

