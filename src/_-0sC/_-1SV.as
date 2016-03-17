// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.1SV

package 0sC{
    import 1uF.1Mf;
    import 0eZ.bG;
    import 1qg.0io;
    import 1Bg.1AE;
    import 1cI.9f;

    public class 1SV extends 1Mf {

        [Inject]
        public var view:WebForgotPasswordDialog;
        [Inject]
        public var 05A:bG;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 0L4:1AE;


        override public function initialize():void{
            this.view.submit.add(this.ph);
            this.view.register.add(this.0VB);
            this.view.cancel.add(this.onCancel);
            this.0L4.add(this.1s2);
        }

        override public function destroy():void{
            this.view.submit.remove(this.ph);
            this.view.register.remove(this.0VB);
            this.view.cancel.remove(this.onCancel);
            this.0L4.add(this.1s2);
        }

        private function 1pd():void{
            this.view.0Eb();
        }

        private function D2():void{
            this.view.parent.removeChild(this.view);
        }

        private function ph(_arg1:String):void{
            this.05A.dispatch(_arg1);
        }

        private function 0VB():void{
            this.0n2.dispatch(new 0mL());
        }

        private function onCancel():void{
            this.0n2.dispatch(new WebLoginDialog());
        }

        private function 1s2(_arg1:9f):void{
            this.view.6y(_arg1.error);
            this.view.0Eb();
        }


    }
}//package 0sC

