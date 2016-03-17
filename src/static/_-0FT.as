// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//static.0FT

package static{
    import 1uF.1Mf;
    import 1Cs.ds;
    import WZ.0Te;
    import 0UV.Xq;
    import 1qg.0io;
    import 1qg.11S;
    import flash.display.Sprite;
    import gx.1KE;

    public class 0FT extends 1Mf {

        [Inject]
        public var death:ds;
        [Inject]
        public var view:ResurrectionView;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var 7V:Xq;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var closeDialogs:11S;


        override public function initialize():void{
            this.view.closed.add(this.1qf);
            this.view.0w-.add(this.0Ef);
            this.view.init(this.death.17C().background);
        }

        override public function destroy():void{
            this.view.0w-.remove(this.0Ef);
            this.view.closed.remove(this.1qf);
        }

        private function 0Ef(_arg1:Sprite):void{
            this.0n2.dispatch(_arg1);
        }

        private function 1qf():void{
            this.closeDialogs.dispatch();
            var _local1:1KE = new 1KE();
            _local1.19j = false;
            _local1.charId = this.SP.1IA;
            _local1.0iT = true;
            this.7V.dispatch(_local1);
        }


    }
}//package static

