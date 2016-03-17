// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//22T.0NR

package 22T{
    import WZ.0Te;
    import 1Cs.ds;
    import 1Bg.h8;
    import 1Bg.1zl;
    import 1Bg.0oS;
    import kY.0v-;
    import 1zG.1wd;
    import 0ci.H9;
    import 0ci.23T;
    import _1aA.CharacterSelectionAndNewsScreen;

    public class 0NR {

        [Inject]
        public var player:0Te;
        [Inject]
        public var model:ds;
        [Inject]
        public var 0gc:h8;
        [Inject]
        public var 21r:1zl;
        [Inject]
        public var fP:0oS;
        [Inject]
        public var 07D:0v-;


        public function execute():void{
            this.0gc.dispatch();
            if (this.model.UD())
            {
                this.0wS();
            } else
            {
                this.26y();
            };
        }

        private function 0wS():void{
            var _local1:1wd = this.model.17C();
            var _local2:23T = new H9(this.player.0YA(), _local1.charId_);
            this.07D.dispatch(_local2);
        }

        private function 26y():void{
            this.fP.dispatch(new CharacterSelectionAndNewsScreen());
        }


    }
}//package 22T

