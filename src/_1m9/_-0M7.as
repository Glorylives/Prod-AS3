// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1m9.0M7

package 1m9{
    import com.company.assembleegameclient.util.0sg;
    import _0OG._22M;
    import com.company.assembleegameclient.util.23J;
    import flash.events.ErrorEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;
    import 1Wd.uo;
    import 1Wd.Gf;
    import 1Wd.3m;
    import 04m.0so;
    import flash.display3D.Context3DBlendFactor;
    import flash.display3D.Context3DCompareMode;
    import 1Wd.Graphic3DHelper;
    import com.company.assembleegameclient.engine3d.1hA;
    import 0Fr.*;

    public class 0M7 implements 1bp {

        public static const WIDTH:int = 600;
        public static const 1sn:int = (WIDTH / 2);//300
        public static const HEIGHT:int = 600;
        public static const gN:int = (HEIGHT / 2);//300

        [Inject]
        public var Wy:0sg;
        [Inject]
        public var kf:_22M;
        public var 0VG:0lt;
        private var stage3D:23J;


        public function configure():void{
            this.0Dl();
            this.stage3D = this.Wy.getStage3Ds(0);
            this.stage3D.addEventListener(ErrorEvent.ERROR, Parameters.1A5);
            this.stage3D.addEventListener(Event.CONTEXT3D_CREATE, this.1dC);
            this.stage3D.requestContext3D();
        }

        private function 0Dl():void{
            this.kf.map(BK).1nL();
            this.kf.map(uo).1nL();
            this.kf.map(Gf).1nL();
            this.kf.map(3m).1nL();
        }

        private function 1dC(_arg1:Event):void{
            this.stage3D.removeEventListener(Event.CONTEXT3D_CREATE, this.1dC);
            var _local2:0so = this.stage3D.fj();
            if (_local2.1tB().driverInfo.toLowerCase().indexOf("software") != -1)
            {
                Parameters.kT();
            };
            _local2.configureBackBuffer(WIDTH, HEIGHT, 2, true);
            _local2.setBlendFactors(Context3DBlendFactor.SOURCE_ALPHA, Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
            _local2.setDepthTest(false, Context3DCompareMode.LESS_EQUAL);
            this.kf.map(0so).1eo(_local2);
            Graphic3DHelper.map(this.kf);
            this.0VG = this.kf.getInstance(0lt);
            this.0VG.init(_local2.1tB());
            1hA.0W7(_local2.1tB());
        }


    }
}//package 1m9

