// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.0rI

package 0uE{
    import 1uF.1Mf;
    import 5z.zL;
    import 1qg.0io;
    import 5z.0TC;

    public class 0rI extends 1Mf {

        [Inject]
        public var view:PetFeeder;
        [Inject]
        public var 1G5:zL;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 1UK:0TC;


        override public function initialize():void{
            if (!this.1UK.06h)
            {
                this.1UK.06h = this.1G5.1tI();
            }
            this.view.initialize(this.1UK);
            this.view.1oD.addOnce(this.1oD);
        }

        private function 1oD():void{
            this.1UK.selected = 0TC.LEFT;
        }


    }
}//package 0uE

