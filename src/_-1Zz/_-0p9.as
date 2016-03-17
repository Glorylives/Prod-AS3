// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Zz.0p9

package 1Zz{
    import WZ.07B;
    import 0eZ.0b8;
    import 1Bg.h8;
    import 1Bg.0oS;
    import com.company.assembleegameclient.game.GameSprite;
    import _1aA.CharacterSelectionAndNewsScreen;
    import flash.display.Sprite;

    public class 0p9 {

        [Inject]
        public var xA:07B;
        [Inject]
        public var update:0b8;
        [Inject]
        public var 0gc:h8;
        [Inject]
        public var fP:0oS;


        public function execute():void{
            this.update.dispatch();
            this.0gc.dispatch();
            this.fP.dispatch(this.1gb());
        }

        private function 1gb():Sprite{
            var _local1:Class = this.xA.1oO();
            if ((((_local1 == null)) || ((_local1 == GameSprite))))
            {
                _local1 = CharacterSelectionAndNewsScreen;
            };
            return (new (_local1)());
        }


    }
}//package 1Zz

