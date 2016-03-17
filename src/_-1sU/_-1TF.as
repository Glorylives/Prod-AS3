// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1sU.1TF

package 1sU{
    import _0OG._22M;
    import rz.1Qt;
    import go.1ga;
    import 1HH.0xD;
    import 1qg.iU;
    import 1qg.0io;
    import 1qg.0An;
    import 1qg.11S;
    import 1qg.1Yr;
    import 1qg.cP;
    import 111.0qL;
    import 111.0bo;
    import 0Fr.*;

    public class 1TF implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var register:1ga;


        public function configure():void{
            var _local1:0xD;
            this.kf.map(iU).1nL();
            this.kf.map(0io).1nL();
            this.kf.map(0An).1nL();
            this.kf.map(11S).1nL();
            this.kf.map(1Yr).1nL();
            this.kf.map(cP).1nL();
            this.mediatorMap.map(0qL).1TU(0bo);
            _local1 = new 0xD();
            _local1.name = "closeDialogs";
            _local1.description = "closes all open dialogs";
            this.register.dispatch(_local1, this.kf.getInstance(11S));
        }


    }
}//package 1sU

