// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1m5.0bc

package 1m5{
    import 1uF.1Mf;
    import 0ci.1WK;
    import 1Cs.ds;
    import 1Bg.1zl;
    import 1Bg.24H;
    import 1Bg.0EO;
    import Jv.24M;
    import kabam.rotmg.assets.services.0Vx;
    import 1zG.1wd;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.objects.27S;
    import com.company.assembleegameclient.util._BJ;
    import com.company.assembleegameclient.util.0s0;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import 1RB.aU;

    public class 0bc extends 1Mf {

        [Inject]
        public var view:FameView;
        [Inject]
        public var 1Wi:1WK;
        [Inject]
        public var d7:ds;
        [Inject]
        public var 21r:1zl;
        [Inject]
        public var 1Lo:24H;
        [Inject]
        public var Ud:0EO;
        [Inject]
        public var 1LU:24M;
        [Inject]
        public var factory:0Vx;
        private var kB:Boolean;
        private var death:1wd;


        override public function initialize():void{
            this.view.closed.add(this.1qf);
            this.Ud.dispatch("/fame");
            this.0d2();
            this.0mK();
        }

        override public function destroy():void{
            this.view.closed.remove(this.1qf);
            this.view.u8();
            ((this.death) && (this.death.0na()));
            this.1LU.1uB.removeAll();
        }

        private function 0d2():void{
            this.kB = this.d7.UD();
            this.view.UI(this.kB);
            this.death = this.d7.17C();
            if (((this.death) && (this.death.background)))
            {
                this.view.0mR(this.death.background);
            }
        }

        private function 0mK():void{
            this.1LU.accountId = this.1Wi.accountId;
            this.1LU.charId = this.1Wi.iV;
            this.1LU.1uB.addOnce(this.1nr);
            this.1LU.start();
        }

        private function 1nr(_arg1:24M, _arg2:Boolean, _arg3:String=""):void{
            var _local4:BitmapData = this.makeIcon();
            this.view.0xb(_arg1.name, _arg1.level, _arg1.type);
            this.view.Vg(_arg1.y9, _arg1.killer);
            this.view.setIcon(_local4);
            this.view.0Vq(_arg1.FY, _arg1.xml);
        }

        private function makeIcon():BitmapData{
            if (((this.kB) && (this.death.1LW)))
            {
                return (this.0uq());
            }
            return (this.Ev());
        }

        private function Ev():BitmapData{
            return (this.factory.makeIcon(this.1LU.26-, 250, this.1LU.texture1, this.1LU.texture2));
        }

        private function 0uq():BitmapData{
            var _local1:27S = ObjectLibrary.hE[this.death.24N];
            var _local2:_BJ = _local1.3q;
            var _local3:0s0 = _local2.imageFromDir(_BJ.RIGHT, _BJ.1OS, 0);
            return (TextureRedrawer.resize(_local3.image_, _local3.mask_, 250, true, this.1LU.texture1, this.1LU.texture2));
        }

        private function 1qf():void{
            if (this.kB)
            {
                this.21r.dispatch(new aU());
            } else
            {
                this.1Lo.dispatch();
            }
        }


    }
}//package 1m5

