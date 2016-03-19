// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Wd.Graphic3D

package _1Wd{
import _04m._0eX;
import _04m._0so;
import _04m._1S;
import _04m._jP;

import _1m9._14d;

import flash.geom.Matrix3D;
    import flash.display.BitmapData;
    import flash.geom.Matrix;
    import flash.display3D.VertexBuffer3D;
    import flash.display3D.IndexBuffer3D;
    import flash.geom.ColorTransform;
    import flash.display3D.Context3DProgramType;
    import flash.display.GraphicsBitmapFill;
    import flash.display.GraphicsGradientFill;
    import flash.display3D.Context3DVertexBufferFormat;
    public class Graphic3D {

        private static const _1Lk:Vector.<Number> = Vector.<Number>([-0.5, 0.5, 0, 0, 0, 0, 0.01, 0, 1, 0.5, 0.5, 0, 0, 0, 0, 0.3, 1, 1, -0.5, -0.5, 0, 0, 0, 0, 0.1, 0, 0, 0.5, -0.5, 0, 0, 0, 0, 0.2, 1, 0]);
        private static const Ea:Vector.<uint> = Vector.<uint>([0, 1, 2, 2, 1, 3]);

        public var texture:_jP;
        public var matrix3D:Matrix3D;
        public var context3D:_0so;
        [Inject]
        public var Fy:_uo;
        [Inject]
        public var fg:_0eX;
        [Inject]
        public var _1ck:_1S;
        private var bitmapData:BitmapData;
        private var matrix2D:Matrix;
        private var _08n:Matrix;
        private var _0w8:Number = 0;
        private var _0Pc:Vector.<Number>;
        private var _0Cq:VertexBuffer3D;
        private var In:VertexBuffer3D;
        private var _0Cu:IndexBuffer3D;
        private var repeat:Boolean;

        public function Graphic3D(){
            this.matrix3D = new Matrix3D();
            super();
        }

        public function _1zT(_arg1:GraphicsBitmapFill, _arg2:_0so):void{
            this.bitmapData = _arg1.bitmapData;
            this.repeat = _arg1.repeat;
            this.matrix2D = _arg1.matrix;
            this.texture = this.Fy.make(_arg1.bitmapData);
            this._0Pc = _14d.IL(_arg1);
            this._0Cq = _14d.af(_arg1);
            this._0w8 = _14d.p(_arg1);
            if (this._0w8 != 0)
            {
                this._0Pc = Vector.<Number>([0, -(this._0w8), 0, 0]);
            }
            this.transform();
            var _local3:ColorTransform = _14d._1lX(this.bitmapData);
            _arg2._1tB().setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 2, Vector.<Number>([_local3.redMultiplier, _local3.greenMultiplier, _local3.blueMultiplier, _local3.alphaMultiplier]));
            _arg2._1tB().setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 3, Vector.<Number>([(_local3.redOffset / 0xFF), (_local3.greenOffset / 0xFF), (_local3.blueOffset / 0xFF), (_local3.alphaOffset / 0xFF)]));
        }

        public function  _in(_arg1:GraphicsGradientFill, _arg2:_0so, _arg3:Number, _arg4:Number):void{
            this._08n = _arg1.matrix;
            if ((((this.In == null)) || ((this._0Cu == null))))
            {
                this.In = _arg2._1tB().createVertexBuffer(4, 9);
                this.In.uploadFromVector(_1Lk, 0, 4);
                this._0Cu = _arg2._1tB().createIndexBuffer(6);
                this._0Cu.uploadFromVector(Ea, 0, 6);
            }
            this._0Xx(_arg3, _arg4);
        }

        private function _0Xx(_arg1:Number, _arg2:Number):void{
            this.matrix3D.identity();
            var _local3:Vector.<Number> = this.matrix3D.rawData;
            _local3[4] = -(this._08n.c);
            _local3[1] = -(this._08n.b);
            _local3[0] = (this._08n.a * 4);
            _local3[5] = (this._08n.d * 4);
            _local3[12] = (this._08n.tx / _arg1);
            _local3[13] = (-(this._08n.ty) / _arg2);
            this.matrix3D.rawData = _local3;
        }

        private function transform():void{
            this.matrix3D.identity();
            var _local1:Vector.<Number> = this.matrix3D.rawData;
            _local1[4] = -(this.matrix2D.c);
            _local1[1] = -(this.matrix2D.b);
            _local1[0] = this.matrix2D.a;
            _local1[5] = this.matrix2D.d;
            _local1[12] = this.matrix2D.tx;
            _local1[13] = -(this.matrix2D.ty);
            this.matrix3D.rawData = _local1;
            this.matrix3D.prependScale(Math.ceil(this.texture.Pj()), Math.ceil(this.texture.getHeight()), 1);
            this.matrix3D.prependTranslation(0.5, -0.5, 0);
        }

        public function _0zU(_arg1:_0so):void{
            var _local2:_01j = _01j.getInstance();
            _arg1.setProgram(_local2._0gg(_arg1, this.repeat));
            _arg1.setTextureAt(0, this.texture);
            if (this._0Cq != null)
            {
                _arg1._1tB().setVertexBufferAt(0, this._0Cq, 0, Context3DVertexBufferFormat.FLOAT_3);
                _arg1._1tB().setVertexBufferAt(1, this._0Cq, 3, Context3DVertexBufferFormat.FLOAT_2);
                _arg1._1tB().setProgramConstantsFromVector(Context3DProgramType.VERTEX, 4, this._0Pc);
                _arg1._1tB().setVertexBufferAt(2, null, 6, Context3DVertexBufferFormat.FLOAT_2);
                _arg1.drawTriangles(this._1ck);
            } else
            {
                _arg1.setVertexBufferAt(0, this.fg, 0, Context3DVertexBufferFormat.FLOAT_3);
                _arg1.setVertexBufferAt(1, this.fg, 3, Context3DVertexBufferFormat.FLOAT_2);
                _arg1._1tB().setProgramConstantsFromVector(Context3DProgramType.VERTEX, 4, this._0Pc);
                _arg1._1tB().setVertexBufferAt(2, null, 6, Context3DVertexBufferFormat.FLOAT_2);
                _arg1.drawTriangles(this._1ck);
            }
        }

        public function dH(_arg1:_0so):void{
            _arg1._1tB().setVertexBufferAt(0, this.In, 0, Context3DVertexBufferFormat.FLOAT_3);
            _arg1._1tB().setVertexBufferAt(1, this.In, 3, Context3DVertexBufferFormat.FLOAT_4);
            _arg1._1tB().setVertexBufferAt(2, this.In, 7, Context3DVertexBufferFormat.FLOAT_2);
            _arg1._1tB().setTextureAt(0, null);
            _arg1._1tB().drawTriangles(this._0Cu);
        }

        public function _1OH():Matrix3D{
            return (this.matrix3D);
        }


    }
}//package 1Wd

