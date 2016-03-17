// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//122.1lM

package 122{
    import 1qQ.0Uh;
    import 1ay.16S;
    import _0OG._22M;
    import kC.ZY;
    import go.1Gu;
    import 1cI.3D;
    import 1cI.0bm;
    import 1cI.06P;

    public class 1lM {

        [Inject]
        public var language:String;
        [Inject]
        public var model:0Uh;
        [Inject]
        public var 12:16S;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var 1LU:ZY;
        [Inject]
        public var 0O2:0t9;
        [Inject]
        public var 13I:1Gu;
        [Inject]
        public var ES:3D;


        public function execute():void{
            this.model.so(this.language);
            this.12.dispatch();
            var _local1:0bm = new 0bm();
            _local1.add(this.1LU);
            _local1.add(new 06P(this.0O2));
            _local1.add(new 06P(this.13I));
            this.ES.add(_local1);
            _local1.start();
        }


    }
}//package 122

