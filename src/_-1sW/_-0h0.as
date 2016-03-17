// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1sW.0h0

package 1sW{
    import 14V.1xn;
    import 1cI.3D;
    import 1Bg.0oS;
    import 1qg.0io;
    import 1cI.0wV;
    import 1cI.06P;
    import _1aA.CharacterSelectionAndNewsScreen;
    import 1cI.9f;
    import 1t6.ErrorDialog;

    public class 0h0 {

        private const 20C:String = "Unable to verify age";

        [Inject]
        public var 1LU:1xn;
        [Inject]
        public var ES:3D;
        [Inject]
        public var 21r:0oS;
        [Inject]
        public var 0n2:0io;


        public function execute():void{
            var _local1:0wV = new 0wV(this.1LU);
            _local1.0zW(this.1eW());
            _local1.0aV(this.26G());
            this.ES.add(_local1);
            _local1.start();
        }

        private function 1eW():9f{
            return (new 06P(this.21r, new CharacterSelectionAndNewsScreen()));
        }

        private function 26G():9f{
            return (new 06P(this.0n2, new ErrorDialog(this.20C)));
        }


    }
}//package 1sW

