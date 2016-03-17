// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//20U.0nJ

package 20U{
    import 0Fr.dW;
    import _0OG._22M;
    import rz.1Qt;
    import 2b.xS;
    import 2b.0BY;
    import 2b.0uL;
    import 2b.1gX;
    import oa.1a4;
    import oa.RG;
    import 0Fr.*;

    public class 0nJ implements 1bp {

        [Inject]
        public var context:dW;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;


        public function configure():void{
            this.kf.map(xS).1nL();
            this.kf.map(0BY).1nL();
            this.kf.map(0uL).1nL();
            this.kf.map(1gX).1nL();
            this.mediatorMap.map(1a4).1TU(RG);
        }


    }
}//package 20U

