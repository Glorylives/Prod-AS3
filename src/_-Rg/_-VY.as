// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Rg.VY

package Rg{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 0ci.1WK;
    import Jv.24M;
    import kY.0v-;
    import kY.0tk;
    import 1m5.FameView;
    import 1m5.0bc;
    import 0Fr.*;

    public class VY implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;


        public function configure():void{
            this.kf.map(1WK).1nL();
            this.kf.map(24M);
            this.13d.map(0v-).0Hs(0tk);
            this.mediatorMap.map(FameView).1TU(0bc);
        }


    }
}//package Rg

