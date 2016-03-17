// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1sW.15o

package 1sW{
    import 14V.1Xt;
    import 1cI.3D;
    import 1qg.11S;
    import 0Fr.1da;
    import 1cI.0bm;
    import 1cI.06P;

    public class 15o {

        [Inject]
        public var 149:1Xt;
        [Inject]
        public var ES:3D;
        [Inject]
        public var KW:11S;
        [Inject]
        public var u3:1da;


        public function execute():void{
            this.u3.debug("execute");
            var _local1:0bm = new 0bm();
            _local1.add(this.149);
            _local1.add(new 06P(this.KW));
            this.ES.add(_local1);
            _local1.start();
        }


    }
}//package 1sW

