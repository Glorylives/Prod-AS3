// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1P8.Iy

package 1P8{
    import _0OG._22M;
    import rz.1Qt;
    import 1Hx.Mw;
    import 12r.1dk;
    import 0Kf.ConfirmDeleteCharacterDialog;
    import 0Kf.21v;
    import 0WR.1Yp;
    import 0WR.0C8;
    import 0Fr.*;

    public class Iy implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 13d:Mw;


        public function configure():void{
            this.kf.map(1dk);
            this.mediatorMap.map(ConfirmDeleteCharacterDialog).1TU(21v);
            this.13d.map(1Yp).0Hs(0C8);
        }


    }
}//package 1P8

