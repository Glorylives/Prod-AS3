// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//TN.Jq

package TN{
    import 1uF.1Mf;
    import 1tt.DT;
    import 1qg.11S;
    import dq.1tc;

    public class Jq extends 1Mf {

        [Inject]
        public var 24c:DT;
        [Inject]
        public var view:PackageOfferDialog;
        [Inject]
        public var 25R:11S;
        [Inject]
        public var 1G8:1tc;


        override public function initialize():void{
            this.view.buy.add(this.qP);
            this.view.close.add(this.D2);
        }

        override public function destroy():void{
            this.view.close.remove(this.D2);
            this.view.close.remove(this.qP);
            this.view.destroy();
        }

        private function qP():void{
            this.25R.dispatch();
            this.1G8.dispatch(this.view.0Dy());
        }

        private function D2():void{
            this.25R.dispatch();
        }


    }
}//package TN

