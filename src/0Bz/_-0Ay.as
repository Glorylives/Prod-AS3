// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Bz.0Ay

package 0Bz{
    import 0Fr.dW;
    import qG.0bJ;
    import _0OG._22M;
    import _0BB.lG;
    import 1kr.0-x;
    import 1kr.AppEngineRequestStats;
    import 1kr.UJ;
    import _0BB.Fu;
    import 1kr.aX;
    import 1kr.0wo;
    import 0Fr.*;

    public class 0Ay implements 1bp {

        private const qO:Boolean = true;

        [Inject]
        public var context:dW;
        [Inject]
        public var setup:0bJ;
        [Inject]
        public var kf:_22M;


        public function configure():void{
            this.Bo();
            if (this.setup.14D())
            {
                this.1JN();
            } else
            {
                if (this.qO)
                {
                    this.1Pa();
                } else
                {
                    this.Ie();
                }
            }
        }

        private function Bo():void{
            this.kf.map(lG).qi(0-x);
        }

        private function 1JN():void{
            this.kf.map(AppEngineRequestStats).1nL();
            this.kf.map(UJ);
            this.kf.map(Fu).qi(aX);
        }

        private function 1Pa():void{
            this.kf.map(UJ);
            this.kf.map(Fu).qi(0wo);
        }

        private function Ie():void{
            this.kf.map(Fu).qi(UJ);
        }


    }
}//package 0Bz

