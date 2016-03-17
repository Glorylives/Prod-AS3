// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1m9.0M7

package _1m9{
import _04m._0so;

import _1Wd.Graphic3DHelper;

import _1Wd._3m;
import _1Wd._Gf;

import _1Wd._uo;

import com.company.assembleegameclient.engine3d._1hA;

import com.company.assembleegameclient.util
import com.company.assembleegameclient.util._0sg;
import com.company.assembleegameclient.util._23J;
    import _0OG._22M;
    import flash.events.ErrorEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;

    import flash.display3D.Context3DBlendFactor;
    import flash.display3D.Context3DCompareMode;
    import _0Fr.*;

    public class _0M7 implements _1bp {

        public static const WIDTH:int = 600;
        public static const _1sn:int = (WIDTH / 2);//300
        public static const HEIGHT:int = 600;
        public static const gN:int = (HEIGHT / 2);//300

        [Inject]
        public var Wy:_0sg;
        [Inject]
        public var kf:_22M;
        public var _0VG:_0lt;
        private var stage3D:_23J;


        public function configure():void{
            this._0Dl();
            this.stage3D = this.Wy.getStage3Ds(0);
            this.stage3D.addEventListener(ErrorEvent.ERROR, Parameters._1A5);
            this.stage3D.addEventListener(Event.CONTEXT3D_CREATE, this._1dC);
            this.stage3D.requestContext3D();
        }

        private function _0Dl():void{
            this.kf.map(_BK)._1nL();
            this.kf.map(_uo)._1nL();
            this.kf.map(_Gf)._1nL();
            this.kf.map(_3m)._1nL();
        }

        private function _1dC(_arg1:Event):void{
            this.stage3D.removeEventListener(Event.CONTEXT3D_CREATE, this._1dC);
            var _local2:_0so = this.stage3D.fj();
            if (_local2._1tB().driverInfo.toLowerCase().indexOf("software") != -1)
            {
                Parameters.kT();
            };
            _local2.configureBackBuffer(WIDTH, HEIGHT, 2, true);
            _local2.setBlendFactors(Context3DBlendFactor.SOURCE_ALPHA, Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
            _local2.setDepthTest(false, Context3DCompareMode.LESS_EQUAL);
            this.kf.map(_0so)._1eo(_local2);
            Graphic3DHelper.map(this.kf);
            this._0VG = this.kf.getInstance(_0lt);
            this._0VG.init(_local2._1tB());
            _1hA._0W7(_local2._1tB());
        }


    }
}//package 1m9

