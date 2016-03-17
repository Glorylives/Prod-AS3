// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0mE.059

package 0mE{
    import 14V.1Cc;
    import 1cI.3D;
    import 1Bg.1AE;
    import 0eZ.0b8;
    import 1qg.0io;
    import 1Bg.fQ;
    import 1cI.0wV;
    import 1cI.0bm;
    import 1cI.06P;
    import 0sC.WebAccountDetailDialog;
    import 1cI.9f;
    import 1fx.1Zh;

    public class 059 {

        [Inject]
        public var 1LU:1Cc;
        [Inject]
        public var ES:3D;
        [Inject]
        public var 1Em:1AE;
        [Inject]
        public var 03l:0b8;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var Ud:fQ;


        public function execute():void{
            var _local1:0wV = new 0wV(this.1LU, this.Q0(), this.1QZ());
            this.ES.add(_local1);
            _local1.start();
        }

        private function Q0():9f{
            var _local1:0bm = new 0bm();
            _local1.add(new 06P(this.Ud, this.0Ki()));
            _local1.add(new 06P(this.03l));
            _local1.add(new 06P(this.0n2, new WebAccountDetailDialog()));
            return (_local1);
        }

        private function 1QZ():06P{
            return (new 06P(this.1Em, this.1LU));
        }

        private function 0Ki():1Zh{
            var _local1:1Zh = new 1Zh();
            _local1.category = "account";
            _local1.1D9 = "accountRegistered";
            return (_local1);
        }


    }
}//package 0mE

