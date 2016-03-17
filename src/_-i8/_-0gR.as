// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//i8.0gR

package i8{
    import qs.1T5;
    import 14V.1Cc;
    import 1cI.3D;
    import 0eZ.0b8;
    import 1qg.0io;
    import 1Bg.1AE;
    import 1cI.0wV;
    import 1cI.0bm;
    import 1cI.06P;
    import 1ih.SteamAccountDetailDialog;
    import 1cI.9f;

    public class 0gR {

        [Inject]
        public var data:1T5;
        [Inject]
        public var 1LU:1Cc;
        [Inject]
        public var ES:3D;
        [Inject]
        public var update:0b8;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 1Em:1AE;


        public function execute():void{
            var _local1:0wV = new 0wV(this.1LU, this.1yh(), this.0Tu());
            this.ES.add(_local1);
            _local1.start();
        }

        private function 1yh():0bm{
            var _local1:0bm = new 0bm();
            _local1.add(new 06P(this.update));
            _local1.add(new 06P(this.0n2, new SteamAccountDetailDialog()));
            return (_local1);
        }

        private function 0Tu():9f{
            return (new 06P(this.1Em, this.1LU));
        }


    }
}//package i8

