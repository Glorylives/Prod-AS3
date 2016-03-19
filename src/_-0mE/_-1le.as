// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0mE.1le

package 0mE{
    import qs.1T5;
    import 14V.27Q;
    import 1cI.3D;
    import 1qg.11S;
    import 1Bg.1AE;
    import 0eZ.0b8;
    import 1Bg.fQ;
    import 1Bg.h8;
    import 1Bg.0oS;
    import WZ.07B;
    import 1tt.DT;
    import 1cI.06P;
    import 1cI.0wV;
    import 1cI.0bm;
    import com.company.assembleegameclient.game.GameSprite;
    import _1aA.CharacterSelectionAndNewsScreen;
    import flash.display.Sprite;
    import 1fx.1Zh;

    public class 1le {

        [Inject]
        public var data:1T5;
        [Inject]
        public var 0at:27Q;
        [Inject]
        public var ES:3D;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var 1Lj:1AE;
        [Inject]
        public var iA:0b8;
        [Inject]
        public var Ud:fQ;
        [Inject]
        public var 0gc:h8;
        [Inject]
        public var fP:0oS;
        [Inject]
        public var xA:07B;
        [Inject]
        public var 24c:DT;
        private var SZ:06P;


        public function execute():void{
            this.SZ = new 06P(this.fP, this.1gb());
            var _local1:0wV = new 0wV(this.0at, this.1eW(), this.26G());
            this.ES.add(_local1);
            _local1.start();
        }

        private function 1eW():0bm{
            var _local1:0bm = new 0bm();
            _local1.add(new 06P(this.closeDialogs));
            _local1.add(new 06P(this.Ud, this.0Ki()));
            _local1.add(new 06P(this.iA));
            _local1.add(new 06P(this.0gc));
            _local1.add(this.24c);
            _local1.add(this.SZ);
            return (_local1);
        }

        private function 26G():0bm{
            var _local1:0bm = new 0bm();
            _local1.add(new 06P(this.1Lj, this.0at));
            _local1.add(this.SZ);
            return (_local1);
        }

        private function 1gb():Sprite{
            var _local1:Class = this.xA.1oO();
            if ((((_local1 == null)) || ((_local1 == GameSprite))))
            {
                _local1 = CharacterSelectionAndNewsScreen;
            }
            return (new (_local1)());
        }

        private function 0Ki():1Zh{
            var _local1:1Zh = new 1Zh();
            _local1.category = "account";
            _local1.1D9 = "signedIn";
            return (_local1);
        }


    }
}//package 0mE

