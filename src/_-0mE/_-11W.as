// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0mE.11W

package 0mE{
    import 14V.1YZ;
    import 1cI.3D;
    import 1Bg.1AE;
    import 1qg.0io;
    import 1cI.7f;
    import 1cI.06P;
    import 0sC.WebLoginDialog;
    import 1cI.0wV;

    public class 11W {

        [Inject]
        public var email:String;
        [Inject]
        public var 1LU:1YZ;
        [Inject]
        public var ES:3D;
        [Inject]
        public var 1Em:1AE;
        [Inject]
        public var 0n2:0io;


        public function execute():void{
            var _local1:7f = new 7f();
            _local1.add(new 06P(this.0n2, new WebLoginDialog()));
            var _local2:7f = new 7f();
            _local2.add(new 06P(this.1Em, this.1LU));
            var _local3:0wV = new 0wV(this.1LU, _local1, _local2);
            this.ES.add(_local3);
            _local3.start();
        }


    }
}//package 0mE

