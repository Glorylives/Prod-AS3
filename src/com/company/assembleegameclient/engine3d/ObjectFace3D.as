// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d.ObjectFace3D

package com.company.assembleegameclient.engine3d{
import _1m9._14d;

import flash.display.BitmapData;
    import flash.display.GraphicsBitmapFill;
    import flash.geom.Vector3D;
    import flash.display.GraphicsPath;
    import flash.display.GraphicsSolidFill;
    import flash.geom.Matrix;
    import flash.display.GraphicsPathCommand;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.util.MoreColorUtil;
    import flash.geom.ColorTransform;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util._tu;
    import flash.display.IGraphicsData;

    public class ObjectFace3D {

        public static const _0QU:BitmapData = new BitmapData(1, 1, true, 0xFF000000);

        public const bitmapFill_:GraphicsBitmapFill = new GraphicsBitmapFill();

        public var obj_:_0oE;
        public var sS:Vector.<int>;
        public var _18b:Boolean;
        public var _1W4:Boolean = false;
        public var texture_:BitmapData = null;
        public var normalL_:Vector3D = null;
        public var _1OL:Vector3D;
        public var Bq:Number = 1;
        private var path_:GraphicsPath;
        private var _18a:GraphicsSolidFill;
        private var tToS_:Matrix;
        private var tempMatrix_:Matrix;

        public function ObjectFace3D(_arg1:_0oE, _arg2:Vector.<int>, _arg3:Boolean=true){
            this._18a = new GraphicsSolidFill(0xFFFFFF, 1);
            this.tToS_ = new Matrix();
            this.tempMatrix_ = new Matrix();
            super();
            this.obj_ = _arg1;
            this.sS = _arg2;
            this._18b = _arg3;
            var _local4:Vector.<int> = new Vector.<int>();
            var _local5:int;
            while (_local5 < this.sS.length)
            {
                _local4.push((((_local5 == 0)) ? GraphicsPathCommand.MOVE_TO : GraphicsPathCommand.LINE_TO));
                _local5++;
            }
            var _local6:Vector.<Number> = new Vector.<Number>();
            _local6.length = (this.sS.length * 2);
            this.path_ = new GraphicsPath(_local4, _local6);
        }

        public function dispose():void{
            this.sS = null;
            this.path_.commands = null;
            this.path_.data = null;
            this.path_ = null;
        }

        public function _1sg():void{
            this._1OL = new Vector3D();
            _0Ru.Dw(this.obj_._0m(this.sS[0]), this.obj_._0m(this.sS[1]), this.obj_._0m(this.sS[(this.sS.length - 1)]), this._1OL);
            this.Bq = _0fX.QV(this._1OL, 0.75);
            if (this.normalL_ != null)
            {
                this._1OL = this.obj_.jJ.deltaTransformVector(this.normalL_);
            }
        }

        public function draw(_arg1:Vector.<IGraphicsData>, _arg2:uint, _arg3:BitmapData):void{
            var _local13:int;
            var _local4:int = (this.sS[0] * 2);
            var _local5:int = (this.sS[1] * 2);
            var _local6:int = (this.sS[(this.sS.length - 1)] * 2);
            var _local7:Vector.<Number> = this.obj_.vS_;
            var _local8:Number = (_local7[_local5] - _local7[_local4]);
            var _local9:Number = (_local7[(_local5 + 1)] - _local7[(_local4 + 1)]);
            var _local10:Number = (_local7[_local6] - _local7[_local4]);
            var _local11:Number = (_local7[(_local6 + 1)] - _local7[(_local4 + 1)]);
            if (((_local8 * _local11) - (_local9 * _local10)) < 0)
            {
                return;
            }
            if (((!(Parameters.data_.GPURender)) && (((!(this._18b)) || ((_arg3 == null))))))
            {
                this._18a.color = MoreColorUtil._09(new ColorTransform(this.Bq, this.Bq, this.Bq), _arg2);
                _arg1.push(this._18a);
            } else
            {
                if ((((_arg3 == null)) && (Parameters.data_.GPURender)))
                {
                    _arg3 = _0QU;
                } else
                {
                    _arg3 = TextureRedrawer.WQ(_arg3, this.Bq);
                }
                this.bitmapFill_.bitmapData = _arg3;
                this.bitmapFill_.matrix = this._0CE(_arg3);
                _arg1.push(this.bitmapFill_);
            }
            var _local12:int;
            while (_local12 < this.sS.length)
            {
                _local13 = this.sS[_local12];
                this.path_.data[(_local12 * 2)] = _local7[(_local13 * 2)];
                this.path_.data[((_local12 * 2) + 1)] = _local7[((_local13 * 2) + 1)];
                _local12++;
            }
            _arg1.push(this.path_);
            _arg1.push(_tu.END_FILL);
            if (((((this._1W4) && (Parameters.TP()))) && (!((this.bitmapFill_ == null)))))
            {
                _14d._0Sd(this.bitmapFill_, true);
            }
        }

        private function _0CE(_arg1:BitmapData):Matrix{
            var _local2:Vector.<Number> = this.obj_.uvts_;
            var _local3:int = (this.sS[0] * 3);
            var _local4:int = (this.sS[1] * 3);
            var _local5:int = (this.sS[(this.sS.length - 1)] * 3);
            var _local6:Number = (_local2[_local3] * _arg1.width);
            var _local7:Number = (_local2[(_local3 + 1)] * _arg1.height);
            this.tToS_.a = ((_local2[_local4] * _arg1.width) - _local6);
            this.tToS_.b = ((_local2[(_local4 + 1)] * _arg1.height) - _local7);
            this.tToS_.c = ((_local2[_local5] * _arg1.width) - _local6);
            this.tToS_.d = ((_local2[(_local5 + 1)] * _arg1.height) - _local7);
            this.tToS_.tx = _local6;
            this.tToS_.ty = _local7;
            this.tToS_.invert();
            _local3 = (this.sS[0] * 2);
            _local4 = (this.sS[1] * 2);
            _local5 = (this.sS[(this.sS.length - 1)] * 2);
            var _local8:Vector.<Number> = this.obj_.vS_;
            this.tempMatrix_.a = (_local8[_local4] - _local8[_local3]);
            this.tempMatrix_.b = (_local8[(_local4 + 1)] - _local8[(_local3 + 1)]);
            this.tempMatrix_.c = (_local8[_local5] - _local8[_local3]);
            this.tempMatrix_.d = (_local8[(_local5 + 1)] - _local8[(_local3 + 1)]);
            this.tempMatrix_.tx = _local8[_local3];
            this.tempMatrix_.ty = _local8[(_local3 + 1)];
            this.tToS_.concat(this.tempMatrix_);
            return (this.tToS_);
        }


    }
}//package com.company.assembleegameclient.engine3d

