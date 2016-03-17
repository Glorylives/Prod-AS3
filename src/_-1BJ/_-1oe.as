// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1BJ.1oe

package 1BJ{
    import _0OG._22M;
    import 1Hx.Mw;
    import 0zL.0Vu;
    import qG.0bJ;
    import 1qQ.0Uh;
    import 1qQ.21w;
    import 1qQ.0oB;
    import 1qQ.l6;
    import kC.ZY;
    import 122.0t9;
    import 122.jv;
    import 122.Gs;
    import 122.1lM;
    import 122.Bt;
    import 122.wG;
    import 0Fr.*;

    public class 1oe implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var startup:0Vu;
        [Inject]
        public var 0Gc:0bJ;


        public function configure():void{
            this.kf.map(0Uh).1eo(new 21w());
            this.kf.map(0oB).1GE(l6);
            this.kf.map(ZY);
            this.startup.10(ZY, -999);
            this.13d.map(0t9).0Hs(jv);
            this.13d.map(Gs).0Hs(1lM);
            this.13d.map(Bt).0Hs(wG);
            this.4X();
        }

        private function 4X():void{
            this.kf.getInstance(Bt).dispatch();
        }


    }
}//package 1BJ

