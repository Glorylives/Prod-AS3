// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1IY.0lH

package 1IY{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 1f1.76;
    import yA._oF;
    import yA.vZ;
    import yA.1MN;
    import yA.0d;
    import N.08e;
    import N.1dw;
    import 0Fr.*;

    public class 0lH implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var commandCenter:76;


        public function configure():void{
            this.mediatorMap.map(_oF).1TU(vZ);
            this.mediatorMap.map(1MN).1TU(0d);
            this.kf.map(08e).1nL();
            this.kf.map(1dw).1nL();
        }


    }
}//package 1IY

