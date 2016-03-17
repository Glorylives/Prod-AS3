// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//21h.el

package 21h{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 8u.18i;
    import 8u.56;
    import Kb.j4;
    import 1RB.aU;
    import 1RB.ya;
    import Kb.Oe;
    import Kb.0mC;
    import Kb.1i1;
    import Kb.QL;
    import 0Fr.*;

    public class el implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;


        public function configure():void{
            this.kf.map(18i).1nL();
            this.kf.map(56).1nL();
            this.kf.map(j4).1nL();
            this.mediatorMap.map(aU).1TU(ya);
            this.13d.map(Oe).0Hs(0mC);
            this.13d.map(1i1).0Hs(QL);
        }


    }
}//package 21h

