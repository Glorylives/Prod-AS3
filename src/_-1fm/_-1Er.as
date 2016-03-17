// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1fm.1Er

package 1fm{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 0zL.0Vu;
    import M0.1g;
    import M0.jc;
    import 0Fr.*;

    public class 1Er implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var Ys:0Vu;


        public function configure():void{
            this.kf.map(1g).1nL();
            this.kf.map(jc).1nL();
            this.Ys.10(jc);
        }


    }
}//package 1fm

