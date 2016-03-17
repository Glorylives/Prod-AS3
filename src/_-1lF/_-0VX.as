// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1LF.0VX

package 1LF{
    import 0Fr.dW;
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 0qs.0MV;
    import 23a.ReskinCharacterView;
    import 23a.1xa;
    import 23a.ReskinPanel;
    import 23a.02c;
    import 0Mo.0Ql;
    import 0Mo.SK;
    import 0Mo.0Yg;
    import 0Mo.1zB;
    import 0Mo.db;
    import 0Mo.0uO;
    import 1r4.1T2;
    import yo.1I8;
    import 0Mo.sz;
    import 0Fr.*;

    public class 0VX implements 1bp {

        [Inject]
        public var context:dW;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var 9K:0MV;


        public function configure():void{
            this.mediatorMap.map(ReskinCharacterView).1TU(1xa);
            this.mediatorMap.map(ReskinPanel).1TU(02c);
            this.13d.map(0Ql).0Hs(SK);
            this.13d.map(0Yg).0Hs(1zB);
            this.13d.map(db).0Hs(0uO);
            this.9K.map(1T2.RESKIN).hG(1I8).1V6(sz);
            this.context.9g.0qQ(this.2-k);
        }

        private function 2-k():void{
            this.kf.getInstance(0Ql).dispatch();
        }


    }
}//package 1LF

