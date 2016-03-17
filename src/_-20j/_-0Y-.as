// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//20j.0Y-

package 20j{
    import _0OG._22M;
    import 1Hx.Mw;
    import rz.1Qt;
    import 1Cs.ds;
    import xk.8b;
    import xk.0RS;
    import xk.4h;
    import xk.05t;
    import xk.f8;
    import xk.dT;
    import xk.eJ;
    import xk.Lv;
    import com.company.assembleegameclient.game.GameSprite;
    import static.0zA;
    import static.ZombifyDialog;
    import static.V1;
    import 0Fr.*;

    public class 0Y- implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var mediatorMap:1Qt;


        public function configure():void{
            this.kf.map(ds).1nL();
            this.13d.map(8b).0Hs(0RS);
            this.13d.map(4h).0Hs(05t);
            this.13d.map(f8).0Hs(dT);
            this.13d.map(eJ).0Hs(Lv);
            this.mediatorMap.map(GameSprite).1TU(0zA);
            this.mediatorMap.map(ZombifyDialog).1TU(V1);
        }


    }
}//package 20j

