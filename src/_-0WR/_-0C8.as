// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0WR.0C8

package 0WR{
    import 12r.1dk;
    import 1cI.3D;
    import 1qg.0io;
    import 1qg.11S;
    import 1Bg.1zl;
    import 1cI.0bm;
    import 1cI.06P;
    import 0Kf.DeletingCharacterView;
    import 1cI.0wV;
    import _1aA.CharacterSelectionAndNewsScreen;
    import 1cI.9f;

    public class 0C8 {

        [Inject]
        public var 1LU:1dk;
        [Inject]
        public var ES:3D;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var 21r:1zl;


        public function execute():void{
            var _local1:0bm = new 0bm();
            _local1.add(new 06P(this.0n2, new DeletingCharacterView()));
            _local1.add(new 0wV(this.1LU, this.1yh(), this.0Tu()));
            this.ES.add(_local1);
            _local1.start();
        }

        private function 1yh():9f{
            var _local1:0bm = new 0bm();
            _local1.add(new 06P(this.21r, new CharacterSelectionAndNewsScreen()));
            _local1.add(new 06P(this.closeDialogs));
            return (_local1);
        }

        private function 0Tu():9f{
            return (new 06P(this.0n2, "Unable to delete character"));
        }


    }
}//package 0WR

