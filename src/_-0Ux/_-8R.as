// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Ux.8R

package 0Ux{
    import 1uF.1Mf;
    import 1Bt.l-;
    import 1qg.11S;
    import 1g8.gO;
    import 0UV.1ML;

    public class 8R extends 1Mf {

        [Inject]
        public var view:BeginnersPackageOfferDialog;
        [Inject]
        public var model:l-;
        [Inject]
        public var KW:11S;
        [Inject]
        public var 1ZL:gO;
        [Inject]
        public var 1LN:1ML;


        override public function initialize():void{
            this.view.buy.add(this.qP);
            this.view.close.add(this.D2);
            this.view.15P(this.model.YV());
            this.view.9L();
            this.1LN.dispatch(false);
        }

        override public function destroy():void{
            this.view.buy.remove(this.qP);
            this.view.close.remove(this.D2);
            this.1LN.dispatch(true);
        }

        private function qP():void{
            this.KW.dispatch();
            this.1ZL.dispatch();
        }

        private function D2():void{
            this.KW.dispatch();
        }


    }
}//package 0Ux

