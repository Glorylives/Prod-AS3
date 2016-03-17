// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//03b.24W

package 03b{
    import 0Fr.dW;
    import _0OG._22M;
    import 1Hx.Mw;
    import rz.1Qt;
    import 0iw.0Cl;
    import 0iw.20w;
    import 0iw.Pn;
    import com.company.assembleegameclient.game.GameSprite;
    import 0ip.8X;
    import _Jy._1HZ;
    import 0Fr.*;

    public class 24W implements 1bp {

        [Inject]
        public var context:dW;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var 13d:Mw;
        [Inject]
        public var mediatorMap:1Qt;


        public function configure():void{
            this.kf.map(0Cl).1nL();
            this.13d.map(20w).0Hs(Pn);
            this.mediatorMap.map(GameSprite).1TU(8X);
            this.context.9g.0qQ(this.init);
        }

        private function init():void{
            _1HZ(this.kf.getInstance(20w)).dispatch();
        }


    }
}//package 03b

