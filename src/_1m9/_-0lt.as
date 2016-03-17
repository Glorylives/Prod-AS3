// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1m9.0lt

package 1m9{
    import __AS3__.vec.Vector;
    import 04m.0so;
    import 1Wd.uo;
    import _0OG._22M;
    import flash.display3D.Program3D;
    import 1Wd.Graphic3D;
    import flash.geom.Matrix3D;
    import flash.geom.Vector3D;
    import flash.display3D.textures.Texture;
    import flash.display3D.VertexBuffer3D;
    import flash.display3D.IndexBuffer3D;
    import Jt.1WA;
    import gY.AGALMiniAssembler;
    import flash.display3D.Context3DProgramType;
    import flash.utils.ByteArray;
    import flash.display3D.Context3DTextureFormat;
    import flash.display3D.Context3D;
    import com.company.assembleegameclient.map.1C8;
    import flash.display.StageScaleMode;
    import flash.display.IGraphicsData;
    import Jt.4b;
    import flash.display.Stage3D;
    import flash.display3D.Context3DVertexBufferFormat;
    import flash.display3D.Context3DTriangleFace;
    import flash.display.GraphicsBitmapFill;
    import flash.display.GraphicsGradientFill;
    import com.company.assembleegameclient.parameters.Parameters;
    import __AS3__.vec.*;

    public class 0lt {

        public static const STAGE3D_FILTER_PAUSE:uint = 1;
        public static const STAGE3D_FILTER_BLIND:uint = 2;
        public static const STAGE3D_FILTER_DRUNK:uint = 3;
        private static const 0oz:Vector.<Number> = new <Number>[1, 2, 0, 0];
        private static const 1df:Vector.<Number> = new <Number>[0.3, 0.59, 0.11, 0];
        private static const 1AG:Vector.<Number> = new <Number>[0.05, 0.05, 0.05, 0];
        private static const jI:Vector.<Number> = new <Number>[-1, 1, 0, 0, 1, 1, 1, 0, 1, -1, 1, 1, -1, -1, 0, 1];
        private static const 1EW:Vector.<uint> = new <uint>[0, 2, 3, 0, 1, 2];

        public static var 0uZ:Boolean;

        [Inject]
        public var context3D:0so;
        [Inject]
        public var Fy:uo;
        [Inject]
        public var kf:_22M;
        private var 0mA:Number;
        private var pm:Number;
        public var 0sG:Program3D;
        private var 0K3:Program3D;
        private var 92:Program3D;
        private var 0fi:Program3D;
        private var 1sl:Graphic3D;
        protected var 0Mj:Matrix3D;
        protected var 0xv:Matrix3D;
        private var 0OJ:Vector3D;
        private var 2-p:Vector3D;
        private var 09d:Vector3D;
        private var 1vU:Vector3D;
        private var 0UF:Vector.<Number>;
        protected var SU:Number;
        protected var LY:Number;
        private var stageWidth:Number = 600;
        private var stageHeight:Number = 600;
        private var v2:Texture;
        private var 0xC:Number = 0.01;
        private var eT:VertexBuffer3D;
        private var 48:IndexBuffer3D;
        protected var 191:String;
        protected var 12U:String;
        protected var 0xu:Vector.<Number>;

        public function 0lt(_arg1:BK){
            this.0xv = new Matrix3D();
            this.0OJ = new Vector3D();
            this.2-p = new Vector3D();
            this.09d = new Vector3D();
            this.1vU = new Vector3D();
            this.0UF = new Vector.<Number>(16, true);
            this.191 = ["m44 op, va0, vc0", "m44 v0, va0, vc8", "m44 v1, va1, vc8", "mov v2, va2"].join("\n");
            this.12U = ["tex oc, v2, fs0 <2d,clamp>"].join("\n");
            this.0xu = Vector.<Number>([0.4, 0.6, 0.4, 1.5]);
            super();
            0lt.0uZ = false;
            this.0Zg();
            _arg1.add(this.0nA);
        }

        public function init(_arg1:Context3D):void{
            this.0Mj = 1WA.1p0(56, 1, 0.1, 0x0800);
            var _local2:AGALMiniAssembler = new AGALMiniAssembler();
            _local2.0-u(Context3DProgramType.VERTEX, this.191);
            var _local3:AGALMiniAssembler = new AGALMiniAssembler();
            _local3.0-u(Context3DProgramType.FRAGMENT, this.12U);
            this.0sG = _arg1.createProgram();
            this.0sG.upload(_local2.kr, _local3.kr);
            var _local4 = (((("tex ft0, v0, fs0 <2d,clamp,linear>\n" + "dp3 ft0.x, ft0, fc0\n") + "mov ft0.y, ft0.x\n") + "mov ft0.z, ft0.x\n") + "mov oc, ft0\n");
            var _local5 = (((("mov op, va0\n" + "add vt0, vc0.xxxx, va0\n") + "div vt0, vt0, vc0.yyyy\n") + "sub vt0.y, vc0.x, vt0.y\n") + "mov v0, vt0\n");
            var _local6:AGALMiniAssembler = new AGALMiniAssembler();
            _local6.0-u(Context3DProgramType.VERTEX, _local5);
            var _local7:ByteArray = _local6.kr;
            _local6.0-u(Context3DProgramType.FRAGMENT, _local4);
            var _local8:ByteArray = _local6.kr;
            this.0K3 = _arg1.createProgram();
            this.0K3.upload(_local7, _local8);
            var _local9 = ((((((((("sub ft0, v0, fc0\n" + "sub ft0.zw, ft0.zw, ft0.zw\n") + "dp3 ft1, ft0, ft0\n") + "sqt ft1, ft1\n") + "div ft1.xy, ft1.xy, fc0.zz\n") + "pow ft1.x, ft1.x, fc0.w\n") + "mul ft0.xy, ft0.xy, ft1.xx\n") + "div ft0.xy, ft0.xy, ft1.yy\n") + "add ft0.xy, ft0.xy, fc0.xy\n") + "tex oc, ft0, fs0<2d,clamp>\n");
            var _local10 = ("m44 op, va0, vc0\n" + "mov v0, va1\n");
            _local6.0-u(Context3DProgramType.VERTEX, _local10);
            var _local11:ByteArray = _local6.kr;
            _local6.0-u(Context3DProgramType.FRAGMENT, _local9);
            var _local12:ByteArray = _local6.kr;
            this.92 = _arg1.createProgram();
            this.92.upload(_local11, _local12);
            var _local13 = (("m44 op, va0, vc0\n" + "mov v0, va1\n") + "mov v1, va2\n");
            _local6.0-u(Context3DProgramType.VERTEX, _local13);
            var _local14:ByteArray = _local6.kr;
            var _local15 = (((("sub ft0.xy, v1.xy, fc4.xx\n" + "mul ft0.xy, ft0.xy, ft0.xy\n") + "add ft0.x, ft0.x, ft0.y\n") + "slt ft0.y, ft0.x, fc4.y\n") + "mul oc, v0, ft0.yyyy\n");
            _local6.0-u(Context3DProgramType.FRAGMENT, _local15);
            var _local16:ByteArray = _local6.kr;
            this.0fi = _arg1.createProgram();
            this.0fi.upload(_local14, _local16);
            this.v2 = _arg1.createTexture(0x0400, 0x0400, Context3DTextureFormat.BGRA, true);
            this.eT = _arg1.createVertexBuffer(4, 4);
            this.eT.uploadFromVector(jI, 0, 4);
            this.48 = _arg1.createIndexBuffer(6);
            this.48.uploadFromVector(1EW, 0, 6);
            this.1sl = this.kf.getInstance(Graphic3D);
        }

        private function 1V3(_arg1:1C8):void{
            var _local2:Number = -(_arg1.angleRad_);
            this.2-p.x = 0;
            this.2-p.y = 0;
            this.2-p.z = -1;
            this.0OJ.x = -((_arg1.x_ + this.SU));
            this.0OJ.y = (_arg1.y_ - this.LY);
            this.0OJ.z = -(_arg1.z_);
            this.1vU.x = Math.cos(_local2);
            this.1vU.y = Math.sin(_local2);
            this.1vU.z = 0;
            this.09d.x = Math.cos((_local2 + (Math.PI / 2)));
            this.09d.y = Math.sin((_local2 + (Math.PI / 2)));
            this.09d.z = 0;
            this.0UF[0] = this.1vU.x;
            this.0UF[1] = this.09d.x;
            this.0UF[2] = this.2-p.x;
            this.0UF[3] = 0;
            this.0UF[4] = this.1vU.y;
            this.0UF[5] = this.09d.y;
            this.0UF[6] = this.2-p.y;
            this.0UF[7] = 0;
            this.0UF[8] = this.1vU.z;
            this.0UF[9] = 1;
            this.0UF[10] = -(this.2-p.z);
            this.0UF[11] = 0;
            this.0UF[12] = this.0OJ.dotProduct(this.1vU);
            this.0UF[13] = this.0OJ.dotProduct(this.09d);
            this.0UF[14] = -(this.0OJ.dotProduct(this.2-p));
            this.0UF[15] = 1;
            var _local3:Matrix3D = new Matrix3D();
            _local3.rawData = this.0UF;
            this.0xv.identity();
            this.0xv.append(_local3);
        }

        private function 0nA(_arg1:Vector.<IGraphicsData>, _arg2:Vector.<4b>, _arg3:Number, _arg4:Number, _arg5:1C8, _arg6:uint):void{
            WebMain._0Kr.scaleMode = StageScaleMode.NO_SCALE;
            if (((!((((WebMain._0Kr.stageWidth * 3) / 4) == this.stageWidth))) || (!((WebMain._0Kr.stageHeight == this.stageHeight)))))
            {
                this.8W();
            };
            if (0lt.0uZ == true)
            {
                this.Ui();
            } else
            {
                this.0Zg();
            };
            if (_arg6 > 0)
            {
                this.04q(_arg1, _arg2, _arg3, _arg4, _arg5, _arg6);
            } else
            {
                this.G7(_arg1, _arg2, _arg3, _arg4, _arg5);
            };
            this.context3D.present();
            WebMain._0Kr.scaleMode = StageScaleMode.EXACT_FIT;
        }

        private function 8W():void{
            if ((((((WebMain._0Kr.stageWidth * 3) / 4) < 1)) || ((WebMain._0Kr.stageHeight < 1))))
            {
                return;
            };
            var _local1:Stage3D = WebMain._0Kr.stage3Ds[0];
            _local1.context3D.configureBackBuffer(((WebMain._0Kr.stageWidth * 3) / 4), WebMain._0Kr.stageHeight, 2, false);
            this.stageWidth = ((WebMain._0Kr.stageWidth * 3) / 4);
            this.stageHeight = WebMain._0Kr.stageHeight;
        }

        private function 04q(_arg1:Vector.<IGraphicsData>, _arg2:Vector.<4b>, _arg3:Number, _arg4:Number, _arg5:1C8, _arg6:uint):void{
            this.context3D.1tB().setRenderToTexture(this.v2, true);
            this.G7(_arg1, _arg2, _arg3, _arg4, _arg5);
            this.context3D.1tB().setRenderToBackBuffer();
            switch (_arg6)
            {
                case STAGE3D_FILTER_PAUSE:
                case STAGE3D_FILTER_BLIND:
                    this.context3D.1tB().setProgram(this.0K3);
                    this.context3D.1tB().setTextureAt(0, this.v2);
                    this.context3D.1tB().clear(0.5, 0.5, 0.5);
                    this.context3D.1tB().setVertexBufferAt(0, this.eT, 0, Context3DVertexBufferFormat.FLOAT_2);
                    this.context3D.1tB().setVertexBufferAt(1, null);
                    break;
                case STAGE3D_FILTER_DRUNK:
                    this.context3D.1tB().setProgram(this.92);
                    this.context3D.1tB().setTextureAt(0, this.v2);
                    this.context3D.1tB().clear(0.5, 0.5, 0.5);
                    this.context3D.1tB().setVertexBufferAt(0, this.eT, 0, Context3DVertexBufferFormat.FLOAT_2);
                    this.context3D.1tB().setVertexBufferAt(1, this.eT, 2, Context3DVertexBufferFormat.FLOAT_2);
                    break;
            };
            this.context3D.1tB().setVertexBufferAt(2, null);
            switch (_arg6)
            {
                case STAGE3D_FILTER_PAUSE:
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.VERTEX, 0, 0oz);
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 0, 1df);
                    break;
                case STAGE3D_FILTER_BLIND:
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.VERTEX, 0, 0oz);
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 0, 1AG);
                    break;
                case STAGE3D_FILTER_DRUNK:
                    if ((((this.0xu[3] <= 0.2)) || ((this.0xu[3] >= 1.8))))
                    {
                        this.0xC = (this.0xC * -1);
                    };
                    this.0xu[3] = (this.0xu[3] + this.0xC);
                    this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, new Matrix3D());
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 0, this.0xu, (this.0xu.length / 4));
                    break;
            };
            this.context3D.1tB().clear(0, 0, 0, 1);
            this.context3D.1tB().drawTriangles(this.48);
        }

        private function G7(_arg1:Vector.<IGraphicsData>, _arg2:Vector.<4b>, _arg3:Number, _arg4:Number, _arg5:1C8):void{
            var test:int;
            var graphicsData:IGraphicsData;
            var graphicsDatas:Vector.<IGraphicsData> = _arg1;
            var grahpicsData3d:Vector.<4b> = _arg2;
            var mapWidth:Number = _arg3;
            var mapHeight:Number = _arg4;
            var camera:1C8 = _arg5;
            this.context3D.clear();
            var finalTransform:Matrix3D = new Matrix3D();
            var index3d:uint;
            this.SU = (-(mapWidth) / 2);
            this.LY = (mapHeight / 2);
            this.1V3(camera);
            for each (graphicsData in graphicsDatas)
            {
                this.context3D.1tB().setCulling(Context3DTriangleFace.NONE);
                if ((((graphicsData is GraphicsBitmapFill)) && (!(14d.M8(GraphicsBitmapFill(graphicsData))))))
                {
                    try
                    {
                        test = GraphicsBitmapFill(graphicsData).bitmapData.width;
                    } catch(e:Error)
                    {
                        continue;
                    };
                    this.1sl.1zT(GraphicsBitmapFill(graphicsData), this.context3D);
                    finalTransform.identity();
                    finalTransform.append(this.1sl.1OH());
                    finalTransform.appendScale((1 / 0M7.1sn), (1 / 0M7.gN), 1);
                    finalTransform.appendTranslation((this.0mA / 0M7.WIDTH), (this.pm / 0M7.HEIGHT), 0);
                    this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, finalTransform, true);
                    this.1sl.0zU(this.context3D);
                };
                if ((graphicsData is GraphicsGradientFill))
                {
                    this.context3D.1tB().setProgram(this.0fi);
                    this.1sl. in(GraphicsGradientFill(graphicsData), this.context3D, 0M7.1sn, 0M7.gN);
                    finalTransform.identity();
                    finalTransform.append(this.1sl.1OH());
                    finalTransform.appendTranslation((this.0mA / 0M7.WIDTH), (this.pm / 0M7.HEIGHT), 0);
                    this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, finalTransform, true);
                    this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 4, Vector.<Number>([0.5, 0.25, 0, 0]));
                    this.1sl.dH(this.context3D);
                };
                if ((((graphicsData == null)) && (!((grahpicsData3d.length == 0)))))
                {
                    try
                    {
                        this.context3D.1tB().setProgram(this.0sG);
                        this.context3D.1tB().setCulling(Context3DTriangleFace.BACK);
                        grahpicsData3d[index3d].UpdateModelMatrix(this.SU, this.LY);
                        finalTransform.identity();
                        finalTransform.append(grahpicsData3d[index3d].GetModelMatrix());
                        finalTransform.append(this.0xv);
                        finalTransform.append(this.0Mj);
                        finalTransform.appendTranslation((this.0mA / 0M7.WIDTH), ((this.pm / 0M7.HEIGHT) * 11.5), 0);
                        this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, finalTransform, true);
                        this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 8, grahpicsData3d[index3d].GetModelMatrix(), true);
                        grahpicsData3d[index3d].draw(this.context3D.1tB());
                        index3d = (index3d + 1);
                    } catch(e:Error)
                    {
                    };
                };
            };
        }

        private function Ui():void{
            this.0mA = 0;
            this.pm = ((Parameters.data_.centerOnPlayer) ? -50 : ((1C8.0EH.y + (1C8.VZ.height / 2)) * 2));
        }

        private function 0Zg():void{
            this.0mA = (this.pm = 0);
        }


    }
}//package 1m9

