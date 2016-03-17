// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1oP.7q

package 1oP{
    import 1uF.1Mf;
    import WZ.0Te;
    import 1Bg.1zl;
    import 0UV.Xq;
    import _1aA.20c;
    import gx.1KE;

    public class 7q extends 1Mf {

        [Inject]
        public var view:1SZ;
        [Inject]
        public var model:0Te;
        [Inject]
        public var 21r:1zl;
        [Inject]
        public var play:Xq;


        override public function initialize():void{
            var _local1:Boolean = this.model.hasAvailableCharSlot();
            this.view.10q(_local1);
            if (_local1)
            {
                this.view.play.addOnce(this.0JL);
            };
            this.view.back.addOnce(this.0K2);
        }

        override public function destroy():void{
            this.view.back.remove(this.0K2);
            this.view.play.remove(this.0JL);
        }

        private function 0K2():void{
            this.21r.dispatch(new 20c());
        }

        private function 0JL():void{
            var _local1:1KE = new 1KE();
            _local1.19j = true;
            _local1.charId = this.model.1Mk();
            _local1.0Pq = -1;
            _local1.0iT = true;
            this.play.dispatch(_local1);
        }


    }
}//package 1oP

