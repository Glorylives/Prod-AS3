// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//24z.0Mc

package 24z{
    import 0Fr.dW;
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import tn.0ec;
    import 1oP.1H;
    import IN.uP;
    import 1Os.62;
    import 1oP.CharacterSkinListItem;
    import 1oP.1C7;
    import 1oP.0sb;
    import 1oP.1PW;
    import 1oP.1SZ;
    import 1oP.7q;
    import 1oP.ClassDetailView;
    import 1oP.0H3;
    import 0eZ.1f2;
    import IN.0F6;
    import 0eZ.0P3;
    import IN.0w2;
    import IN.01;
    import IN.0bR;
    import IN.0Ar;
    import IN.179;
    import IN.20h;
    import 02e.1LJ;
    import kabam.rotmg.assets.24A;
    import 0Fr.*;

    public class 0Mc implements 1bp {

        [Inject]
        public var context:dW;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;


        public function configure():void{
            this.kf.map(0ec).1nL();
            this.kf.map(1H).1nL();
            this.kf.map(uP).1nL();
            this.kf.map(62);
            this.mediatorMap.map(CharacterSkinListItem).1TU(1C7);
            this.mediatorMap.map(0sb).1TU(1PW);
            this.mediatorMap.map(1SZ).1TU(7q);
            this.mediatorMap.map(ClassDetailView).1TU(0H3);
            this.13d.map(1f2).0Hs(0F6);
            this.13d.map(0P3).0Hs(0w2);
            this.13d.map(01).0Hs(0bR);
            this.13d.map(01).0Hs(0Ar);
            this.13d.map(179).0Hs(20h).9G(1LJ);
            this.context.9g.0qQ(this.init);
        }

        private function init():void{
            var _local1:XML = XML(new 24A.PlayersCXML());
            var _local2:01 = this.kf.getInstance(01);
            _local2.dispatch(_local1);
        }


    }
}//package 24z

