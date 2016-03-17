// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//16R.0cq

package 16R{
    import _0OG._22M;
    import 0qs.0MV;
    import aS.245;
    import rz.1Qt;
    import 1u-.tM;
    import 0Fa.053;
    import 1u-.0xT;
    import 0N9.1BC;
    import 0N9.02A;
    import 0N9.0hf;
    import 0UV.0rh;
    import 0N9.iy;
    import 0UV.1P9;
    import 0N9.8-;
    import 0UV.1mj;
    import 1r4.1T2;
    import 1zG.Text;
    import 0N9.1iR;
    import 0N9.1Qk;
    import 0N9.hN;
    import 0Fa.GH;
    import 0Fa.0JN;
    import 0Fa.1Q7;
    import 0Fa.HS;
    import 0Fa.Chat;
    import 0Fa.10u;
    import 0Fa.0Ka;
    import 0Fa.0XP;
    import 0Fr.*;

    public class 0cq implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var 9K:0MV;
        [Inject]
        public var 13d:245;
        [Inject]
        public var mediatorMap:1Qt;


        public function configure():void{
            this.kf.map(tM).1nL();
            this.kf.map(0cq).1nL();
            this.kf.map(053).1nL();
            this.kf.map(0xT).1nL();
            this.kf.map(1BC).1nL();
            this.kf.map(02A).1nL();
            this.kf.map(0hf).1nL();
            this.13d.map(0rh).0Hs(iy);
            this.13d.map(1P9).0Hs(8-);
            this.13d.map(1mj).0Hs(8-);
            this.9K.map(1T2.TEXT).hG(Text).1V6(1iR);
            this.13d.map(1Qk).0Hs(hN);
            this.mediatorMap.map(GH).1TU(0JN);
            this.mediatorMap.map(1Q7).1TU(HS);
            this.mediatorMap.map(Chat).1TU(10u);
            this.mediatorMap.map(0Ka).1TU(0XP);
        }


    }
}//package 16R

