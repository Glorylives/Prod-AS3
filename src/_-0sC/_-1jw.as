// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.1jw

package 0sC{
    import 1uF.1Mf;
    import 1qg.11S;
    import 1qg.0io;
    import 0eZ.16V;
    import 1Bg.1AE;
    import 0UV.1ML;
    import qs.1T5;
    import 1cI.9f;

    public class 1jw extends 1Mf {

        [Inject]
        public var view:0mL;
        [Inject]
        public var KW:11S;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var register:16V;
        [Inject]
        public var dc:1AE;
        [Inject]
        public var 1LN:1ML;


        override public function initialize():void{
            this.view.register.add(this.0VB);
            this.view.signIn.add(this.1Mi);
            this.view.cancel.add(this.onCancel);
            this.dc.add(this.PO);
            this.1LN.dispatch(false);
        }

        override public function destroy():void{
            this.view.register.remove(this.0VB);
            this.view.signIn.remove(this.1Mi);
            this.view.cancel.remove(this.onCancel);
            this.dc.remove(this.PO);
            this.1LN.dispatch(true);
        }

        private function 0VB(_arg1:1T5):void{
            this.view.disable();
            this.register.dispatch(_arg1);
        }

        private function onCancel():void{
            this.KW.dispatch();
        }

        private function 1Mi():void{
            this.0n2.dispatch(new WebLoginDialog());
        }

        private function PO(_arg1:9f):void{
            this.view.0sN(_arg1.error);
            this.view.0Eb();
        }


    }
}//package 0sC

