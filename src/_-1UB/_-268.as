// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.268

package 1UB{
    import 1uF.1Mf;
    import 1Bg.1hy;
    import 1Bg.of;
    import gx.1Nb;
    import flash.display.Sprite;

    public class 268 extends 1Mf {

        [Inject]
        public var view:ArenaLeaderboardListItem;
        [Inject]
        public var X4:1hy;
        [Inject]
        public var up:of;
        [Inject]
        public var 0j3:1Nb;


        override public function initialize():void{
            this.view.X4.add(this.oJ);
            this.view.hideTooltip.add(this.08A);
            this.view.setColor();
        }

        override public function destroy():void{
            this.view.X4.remove(this.oJ);
            this.view.hideTooltip.remove(this.08A);
        }

        private function oJ(_arg1:Sprite):void{
            this.X4.dispatch(_arg1);
        }

        private function 08A():void{
            this.up.dispatch();
        }


    }
}//package 1UB

