// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//static.V1

package static{
    import 1uF.1Mf;
    import 1qg.11S;
    import xk.4h;
    import 1Cs.ds;
    import 1zG.1wd;
    import flash.display.BitmapData;

    public class V1 extends 1Mf {

        [Inject]
        public var view:ZombifyDialog;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var 01e:4h;
        [Inject]
        public var death:ds;


        override public function initialize():void{
            this.view.closed.addOnce(this.1qf);
        }

        private function 1qf():void{
            var _local1:1wd;
            _local1 = this.death.17C();
            var _local2:BitmapData = new HL(this.view.stage.width, this.view.stage.height);
            _local2.draw(this.view.stage);
            _local1.background = _local2;
            this.closeDialogs.dispatch();
            this.01e.dispatch(_local1);
        }


    }
}//package static

