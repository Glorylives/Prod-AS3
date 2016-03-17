// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1m9.0lt

package _1m9{
import _04m._0so;

import _1Wd.Graphic3D;

import _1Wd._uo;

    import _0OG._22M;

import _Jt._1WA;

import _Jt._4b;

import com.company.assembleegameclient.map._1C8;

import flash.display3D.Program3D;
    import flash.geom.Matrix3D;
    import flash.geom.Vector3D;
    import flash.display3D.textures.Texture;
    import flash.display3D.VertexBuffer3D;
    import flash.display3D.IndexBuffer3D;
    import _gY.AGALMiniAssembler;
    import flash.display3D.Context3DProgramType;
    import flash.utils.ByteArray;
    import flash.display3D.Context3DTextureFormat;
    import flash.display3D.Context3D;
    import flash.display.StageScaleMode;
    import flash.display.IGraphicsData;
    import flash.display.Stage3D;
    import flash.display3D.Context3DVertexBufferFormat;
    import flash.display3D.Context3DTriangleFace;
    import flash.display.GraphicsBitmapFill;
    import flash.display.GraphicsGradientFill;
    import com.company.assembleegameclient.parameters.Parameters;

    public class _0lt {

        public static const STAGE3D_FILTER_PAUSE:uint = 1;
        public static const STAGE3D_FILTER_BLIND:uint = 2;
        public static const STAGE3D_FILTER_DRUNK:uint = 3;
        private static const _0oz:Vector.<Number> = new <Number>[1, 2, 0, 0];
        private static const _1df:Vector.<Number> = new <Number>[0.3, 0.59, 0.11, 0];
        private static const _1AG:Vector.<Number> = new <Number>[0.05, 0.05, 0.05, 0];
        private static const jI:Vector.<Number> = new <Number>[-1, 1, 0, 0, 1, 1, 1, 0, 1, -1, 1, 1, -1, -1, 0, 1];
        private static const _1EW:Vector.<uint> = new <uint>[0, 2, 3, 0, 1, 2];

        public static var _0uZ:Boolean;

        [Inject]
        public var context3D:_0so;
        [Inject]
        public var Fy:_uo;
        [Inject]
        public var kf:_22M;
        private var _0mA:Number;
        private var pm:Number;
        public var _0sG:Program3D;
        private var _0K3:Program3D;
        private var _92:Program3D;
        private var _0fi:Program3D;
        private var _1sl:Graphic3D;
        protected var _0Mj:Matrix3D;
        protected var _0xv:Matrix3D;
        private var _0OJ:Vector3D;
        private var _2p:Vector3D;
        private var _09d:Vector3D;
        private var _1vU:Vector3D;
        private var _0UF:Vector.<Number>;
        protected var SU:Number;
        protected var LY:Number;
        private var stageWidth:Number = 600;
        private var stageHeight:Number = 600;
        private var v2:Texture;
        private var _0xC:Number = 0.01;
        private var eT:VertexBuffer3D;
        private var _48:IndexBuffer3D;
        protected var _191:String;
        protected var _12U:String;
        protected var _0xu:Vector.<Number>;

        public function _0lt(_arg1:_BK){
            this._0xv = new Matrix3D();
            this._0OJ = new Vector3D();
            this._2p = new Vector3D();
            this._09d = new Vector3D();
            this._1vU = new Vector3D();
            this._0UF = new Vector.<Number>(16, true);
            this._191 = ["m44 op, va0, vc0", "m44 v0, va0, vc8", "m44 v1, va1, vc8", "mov v2, va2"].join("\n");
            this._12U = ["tex oc, v2, fs0 <2d,clamp>"].join("\n");
            this._0xu = Vector.<Number>([0.4, 0.6, 0.4, 1.5]);
            super();
            _0lt._0uZ = false;
            this._0Zg();
            _arg1.add(this._0nA);
        }

        public function init(_arg1:Context3D):void{
            this._0Mj = _1WA._1p0(56, 1, 0.1, 0x0800);
            var _local2:AGALMiniAssembler = new AGALMiniAssembler();
            _local2._0u(Context3DProgramType.VERTEX, this._191);
            var _local3:AGALMiniAssembler = new AGALMiniAssembler();
            _local3._0u(Context3DProgramType.FRAGMENT, this._12U);
            this._0sG = _arg1.createProgram();
            this._0sG.upload(_local2.kr, _local3.kr);
            var _local4 = (((("tex ft0, v0, fs0 <2d,clamp,linear>\n" + "dp3 ft0.x, ft0, fc0\n") + "mov ft0.y, ft0.x\n") + "mov ft0.z, ft0.x\n") + "mov oc, ft0\n");
            var _local5 = (((("mov op, va0\n" + "add vt0, vc0.xxxx, va0\n") + "div vt0, vt0, vc0.yyyy\n") + "sub vt0.y, vc0.x, vt0.y\n") + "mov v0, vt0\n");
            var _local6:AGALMiniAssembler = new AGALMiniAssembler();
            _local6._0u(Context3DProgramType.VERTEX, _local5);
            var _local7:ByteArray = _local6.kr;
            _local6._0u(Context3DProgramType.FRAGMENT, _local4);
            var _local8:ByteArray = _local6.kr;
            this._0K3 = _arg1.createProgram();
            this._0K3.upload(_local7, _local8);
            var _local9 = ((((((((("sub ft0, v0, fc0\n" + "sub ft0.zw, ft0.zw, ft0.zw\n") + "dp3 ft1, ft0, ft0\n") + "sqt ft1, ft1\n") + "div ft1.xy, ft1.xy, fc0.zz\n") + "pow ft1.x, ft1.x, fc0.w\n") + "mul ft0.xy, ft0.xy, ft1.xx\n") + "div ft0.xy, ft0.xy, ft1.yy\n") + "add ft0.xy, ft0.xy, fc0.xy\n") + "tex oc, ft0, fs0<2d,clamp>\n");
            var _local10 = ("m44 op, va0, vc0\n" + "mov v0, va1\n");
            _local6._0u(Context3DProgramType.VERTEX, _local10);
            var _local11:ByteArray = _local6.kr;
            _local6._0u(Context3DProgramType.FRAGMENT, _local9);
            var _local12:ByteArray = _local6.kr;
            this._92 = _arg1.createProgram();
            this._92.upload(_local11, _local12);
            var _local13 = (("m44 op, va0, vc0\n" + "mov v0, va1\n") + "mov v1, va2\n");
            _local6._0u(Context3DProgramType.VERTEX, _local13);
            var _local14:ByteArray = _local6.kr;
            var _local15 = (((("sub ft0.xy, v1.xy, fc4.xx\n" + "mul ft0.xy, ft0.xy, ft0.xy\n") + "add ft0.x, ft0.x, ft0.y\n") + "slt ft0.y, ft0.x, fc4.y\n") + "mul oc, v0, ft0.yyyy\n");
            _local6._0u(Context3DProgramType.FRAGMENT, _local15);
            var _local16:ByteArray = _local6.kr;
            this._0fi = _arg1.createProgram();
            this._0fi.upload(_local14, _local16);
            this.v2 = _arg1.createTexture(0x0400, 0x0400, Context3DTextureFormat.BGRA, true);
            this.eT = _arg1.createVertexBuffer(4, 4);
            this.eT.uploadFromVector(jI, 0, 4);
            this._48 = _arg1.createIndexBuffer(6);
            this._48.uploadFromVector(_1EW, 0, 6);
            this._1sl = this.kf.getInstance(Graphic3D);
        }

        private function _1V3(_arg1:_1C8):void{
            var _local2:Number = -(_arg1.angleRad_);
            this._2p.x = 0;
            this._2p.y = 0;
            this._2p.z = -1;
            this._0OJ.x = -((_arg1.x_ + this.SU));
            this._0OJ.y = (_arg1.y_ - this.LY);
            this._0OJ.z = -(_arg1.z_);
            this._1vU.x = Math.cos(_local2);
            this._1vU.y = Math.sin(_local2);
            this._1vU.z = 0;
            this._09d.x = Math.cos((_local2 + (Math.PI / 2)));
            this._09d.y = Math.sin((_local2 + (Math.PI / 2)));
            this._09d.z = 0;
            this._0UF[0] = this._1vU.x;
            this._0UF[1] = this._09d.x;
            this._0UF[2] = this._2p.x;
            this._0UF[3] = 0;
            this._0UF[4] = this._1vU.y;
            this._0UF[5] = this._09d.y;
            this._0UF[6] = this._2p.y;
            this._0UF[7] = 0;
            this._0UF[8] = this._1vU.z;
            this._0UF[9] = 1;
            this._0UF[10] = -(this._2p.z);
            this._0UF[11] = 0;
            this._0UF[12] = this._0OJ.dotProduct(this._1vU);
            this._0UF[13] = this._0OJ.dotProduct(this._09d);
            this._0UF[14] = -(this._0OJ.dotProduct(this._2p));
            this._0UF[15] = 1;
            var _local3:Matrix3D = new Matrix3D();
            _local3.rawData = this._0UF;
            this._0xv.identity();
            this._0xv.append(_local3);
        }

        private function _0nA(_arg1:Vector.<IGraphicsData>, _arg2:Vector.<_4b>, _arg3:Number, _arg4:Number, _arg5:_1C8, _arg6:uint):void{
            WebMain._0Kr.scaleMode = StageScaleMode.NO_SCALE;
            if (((!((((WebMain._0Kr.stageWidth * 3) / 4) == this.stageWidth))) || (!((WebMain._0Kr.stageHeight == this.stageHeight)))))
            {
                this._8W();
            };
            if (_0lt._0uZ == true)
            {
                this.Ui();
            } else
            {
                this._0Zg();
            };
            if (_arg6 > 0)
            {
                this._04q(_arg1, _arg2, _arg3, _arg4, _arg5, _arg6);
            } else
            {
                this.G7(_arg1, _arg2, _arg3, _arg4, _arg5);
            };
            this.context3D.present();
            WebMain._0Kr.scaleMode = StageScaleMode.EXACT_FIT;
        }

        private function _8W():void{
            if ((((((WebMain._0Kr.stageWidth * 3) / 4) < 1)) || ((WebMain._0Kr.stageHeight < 1))))
            {
                return;
            };
            var _local1:Stage3D = WebMain._0Kr.stage3Ds[0];
            _local1.context3D.configureBackBuffer(((WebMain._0Kr.stageWidth * 3) / 4), WebMain._0Kr.stageHeight, 2, false);
            this.stageWidth = ((WebMain._0Kr.stageWidth * 3) / 4);
            this.stageHeight = WebMain._0Kr.stageHeight;
        }

        private function _04q(_arg1:Vector.<IGraphicsData>, _arg2:Vector.<_4b>, _arg3:Number, _arg4:Number, _arg5:_1C8, _arg6:uint):void{
            this.context3D._1tB().setRenderToTexture(this.v2, true);
            this.G7(_arg1, _arg2, _arg3, _arg4, _arg5);
            this.context3D._1tB().setRenderToBackBuffer();
            switch (_arg6)
            {
                case STAGE3D_FILTER_PAUSE:
                case STAGE3D_FILTER_BLIND:
                    this.context3D._1tB().setProgram(this._0K3);
                    this.context3D._1tB().setTextureAt(0, this.v2);
                    this.context3D._1tB().clear(0.5, 0.5, 0.5);
                    this.context3D._1tB().setVertexBufferAt(0, this.eT, 0, Context3DVertexBufferFormat.FLOAT_2);
                    this.context3D._1tB().setVertexBufferAt(1, null);
                    break;
                case STAGE3D_FILTER_DRUNK:
                    this.context3D._1tB().setProgram(this._92);
                    this.context3D._1tB().setTextureAt(0, this.v2);
                    this.context3D._1tB().clear(0.5, 0.5, 0.5);
                    this.context3D._1tB().setVertexBufferAt(0, this.eT, 0, Context3DVertexBufferFormat.FLOAT_2);
                    this.context3D._1tB().setVertexBufferAt(1, this.eT, 2, Context3DVertexBufferFormat.FLOAT_2);
                    break;
            };
            this.context3D._1tB().setVertexBufferAt(2, null);
            switch (_arg6)
            {
                case STAGE3D_FILTER_PAUSE:
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.VERTEX, 0, _0oz);
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 0, _1df);
                    break;
                case STAGE3D_FILTER_BLIND:
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.VERTEX, 0, _0oz);
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 0, _1AG);
                    break;
                case STAGE3D_FILTER_DRUNK:
                    if ((((this._0xu[3] <= 0.2)) || ((this._0xu[3] >= 1.8))))
                    {
                        this._0xC = (this._0xC * -1);
                    };
                    this._0xu[3] = (this._0xu[3] + this._0xC);
                    this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, new Matrix3D());
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 0, this._0xu, (this._0xu.length / 4));
                    break;
            };
            this.context3D._1tB().clear(0, 0, 0, 1);
            this.context3D._1tB().drawTriangles(this._48);
        }

        private function G7(_arg1:Vector.<IGraphicsData>, _arg2:Vector.<_4b>, _arg3:Number, _arg4:Number, _arg5:_1C8):void{
            var test:int;
            var graphicsData:IGraphicsData;
            var graphicsDatas:Vector.<IGraphicsData> = _arg1;
            var grahpicsData3d:Vector.<_4b> = _arg2;
            var mapWidth:Number = _arg3;
            var mapHeight:Number = _arg4;
            var camera:_1C8 = _arg5;
            this.context3D.clear();
            var finalTransform:Matrix3D = new Matrix3D();
            var index3d:uint;
            this.SU = (-(mapWidth) / 2);
            this.LY = (mapHeight / 2);
            this._1V3(camera);
            for each (graphicsData in graphicsDatas)
            {
                this.context3D._1tB().setCulling(Context3DTriangleFace.NONE);
                if ((((graphicsData is GraphicsBitmapFill)) && (!(_14d.M8(GraphicsBitmapFill(graphicsData))))))
                {
                    try
                    {
                        test = GraphicsBitmapFill(graphicsData).bitmapData.width;
                    } catch(e:Error)
                    {
                        continue;
                    };
                    this._1sl._1zT(GraphicsBitmapFill(graphicsData), this.context3D);
                    finalTransform.identity();
                    finalTransform.append(this._1sl._1OH());
                    finalTransform.appendScale((1 / _0M7._1sn), (1 / _0M7.gN), 1);
                    finalTransform.appendTranslation((this._0mA / _0M7.WIDTH), (this.pm / _0M7.HEIGHT), 0);
                    this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, finalTransform, true);
                    this._1sl._0zU(this.context3D);
                };
                if ((graphicsData is GraphicsGradientFill))
                {
                    this.context3D._1tB().setProgram(this._0fi);
                    this._1sl. _in(GraphicsGradientFill(graphicsData), this.context3D, _0M7._1sn, _0M7.gN);
                    finalTransform.identity();
                    finalTransform.append(this._1sl._1OH());
                    finalTransform.appendTranslation((this._0mA / _0M7.WIDTH), (this.pm / _0M7.HEIGHT), 0);
                    this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, finalTransform, true);
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 4, Vector.<Number>([0.5, 0.25, 0, 0]));
                    this._1sl.dH(this.context3D);
                };
                if ((((graphicsData == null)) && (!((grahpicsData3d.length == 0)))))
                {
                    try
                    {
                        this.context3D._1tB().setProgram(this._0sG);
                        this.context3D._1tB().setCulling(Context3DTriangleFace.BACK);
                        grahpicsData3d[index3d].UpdateModelMatrix(this.SU, this.LY);
                        finalTransform.identity();
                        finalTransform.append(grahpicsData3d[index3d].GetModelMatrix());
                        finalTransform.append(this._0xv);
                        finalTransform.append(this._0Mj);
                        finalTransform.appendTranslation((this._0mA / _0M7.WIDTH), ((this.pm / _0M7.HEIGHT) * 11.5), 0);
                        this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, finalTransform, true);
                        this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 8, grahpicsData3d[index3d].GetModelMatrix(), true);
                        grahpicsData3d[index3d].draw(this.context3D._1tB());
                        index3d = (index3d + 1);
                    } catch(e:Error)
                    {
                    };
                };
            };
        }

        private function Ui():void{
            this._0mA = 0;
            this.pm = ((Parameters.data_.centerOnPlayer) ? -50 : ((_1C8._0EH.y + (_1C8.VZ.height / 2)) * 2));
        }

        private function _0Zg():void{
            this._0mA = (this.pm = 0);
        }


    }
}//package 1m9

