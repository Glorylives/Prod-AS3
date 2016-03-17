// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Fk.26H

package 1Fk{
    import 0Fr.dW;
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 0zL.0Vu;
    import 1wn.0Py;
    import 1wn.1t;
    import 1wn.1DZ;
    import 0sk.26Z;
    import 1UP.l5;
    import 1mO.0Uy;
    import 1mO.0OX;
    import 1mO.230;
    import 1mO.0tT;
    import BG.17B;
    import 1mO.ao;
    import 1mO.0bI;
    import 1mO.1Ik;
    import 0Fr.*;

    public class 26H implements 1bp {

        [Inject]
        public var context:dW;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var 0Kc:0Vu;


        public function configure():void{
            this.kf.map(0Py).1nL();
            this.kf.map(1t).1nL();
            this.kf.map(1DZ).1nL();
            this.kf.map(26Z).1nL();
            this.kf.map(l5).1nL();
            this.mediatorMap.map(0Uy).1TU(0OX);
            this.mediatorMap.map(230).1TU(0tT);
            this.mediatorMap.map(17B).1TU(ao);
            this.mediatorMap.map(0bI).1TU(1Ik);
            this.0Kc.10(l5);
        }


    }
}//package 1Fk

