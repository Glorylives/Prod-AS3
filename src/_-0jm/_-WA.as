// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0jm.WA

package 0jm{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import qG.0bJ;
    import 1Y6.Tm;
    import 0Qa.0Vr;
    import 0Qa.23m;
    import 0Qa.0GD;
    import 0Fr.*;

    public class WA implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var setup:0bJ;


        public function configure():void{
            this.mediatorMap.map(WebMain).1TU(Tm);
            this.YH();
        }

        private function YH():void{
            if (this.setup.0a4())
            {
                this.13d.map(0Vr).0Hs(23m);
            } else
            {
                this.13d.map(0Vr).0Hs(0GD);
            };
        }


    }
}//package 0jm

