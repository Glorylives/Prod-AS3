// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//cW.Lb

package cW{
    import _0OG._22M;
    import rz.1Qt;
    import qG.0bJ;
    import AO.nz;
    import _CU.else;
    import 06t.Np;
    import com.company.ui.eG;
    import _CU.1XJ;
    import _CU.1CD;
    import AO.Xk;
    import 1BJ.19E;
    import 0Fr.*;

    public class Lb implements 1bp {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var mediatorMap:1Qt;
        [Inject]
        public var 0Gc:0bJ;


        public function configure():void{
            this.kf.map(nz).1nL();
            this.0zo();
            this.mediatorMap.map(else).1TU(Np);
            this.mediatorMap.map(eG).1TU(1XJ);
            this.kf.map(1CD);
        }

        private function 0zo():void{
            this.kf.map(Xk).qi(19E);
        }


    }
}//package cW

