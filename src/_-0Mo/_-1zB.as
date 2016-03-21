// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Mo.1zB

package 0Mo{
    import 1qg.0io;
    import go.1Gu;
    import WZ.0Te;
    import tn.0ec;
    import 1oP.1H;
    import 23a.ReskinCharacterView;
    import tn.0a0;

    import flash.display.DisplayObject;

    public class 1zB {

        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 13I:1Gu;
        [Inject]
        public var player:0Te;
        [Inject]
        public var model:0ec;
        [Inject]
        public var factory:1H;


        public function execute():void{
            this.13I.dispatch();
            this.0n2.dispatch(this.ki());
        }

        private function ki():ReskinCharacterView{
            var _local1:ReskinCharacterView = new ReskinCharacterView();
            _local1.1_ZS(this.0Ue());
            _local1.x = ((800 - _local1.width) * 0.5);
            _local1.y = ((600 - _local1.Is) * 0.5);
            return (_local1);
        }

        private function 0Ue():Vector.<DisplayObject>{
            var _local1:0a0 = this.0DZ();
            return (this.factory.make(_local1));
        }

        private function 0DZ():0a0{
            return (this.model.0NO().0sP);
        }


    }
}//package 0Mo

