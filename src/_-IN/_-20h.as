// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//IN.20h

package IN{
    import tn.1iY;
    import WZ.0Te;
    import 1Os.62;
    import 1cI.3D;
    import 1qg.0io;
    import tn.Lm;
    import 1PB.pu;

    public class 20h {

        [Inject]
        public var skin:1iY;
        [Inject]
        public var model:0Te;
        [Inject]
        public var 1LU:62;
        [Inject]
        public var ES:3D;
        [Inject]
        public var 0n2:0io;


        public function execute():void{
            if (this.3L())
            {
                this.19y();
            };
        }

        private function 19y():void{
            if (this.09G())
            {
                this.1EX();
            } else
            {
                this.258();
            };
        }

        private function 3L():Boolean{
            return ((this.skin.0QA() == Lm.PURCHASABLE));
        }

        private function 09G():Boolean{
            return ((this.model.0ce() >= this.skin.cost));
        }

        private function 1EX():void{
            this.ES.add(this.1LU);
            this.1LU.start();
        }

        private function 258():void{
            this.0n2.dispatch(new pu());
        }


    }
}//package IN

