// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1yP.1uu

package 1yP{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 0Kp.0GW;
    import 0-O.0E8;
    import 1Cr.L9;
    import 1Cr.0lP;
    import c9.0B2;
    import c9.iO;
    import 0Fr.*;

    public class 1uu implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;


        public function configure():void{
            this.kf.map(0GW).1nL();
            this.kf.map(0E8).1nL();
            this.mediatorMap.map(L9).1TU(0lP);
            this.13d.map(0B2).0Hs(iO);
        }


    }
}//package 1yP

