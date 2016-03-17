// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.1YE

package 0sC{
    import 1uF.1Mf;
    import 0eZ.25O;
    import 1qg.0io;
    import 1qg.11S;
    import 1Bg.1AE;
    import qs.1T5;
    import 1cI.9f;

    public class 1YE extends 1Mf {

        [Inject]
        public var view:WebLoginDialog;
        [Inject]
        public var login:25O;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var KW:11S;
        [Inject]
        public var 1Lj:1AE;


        override public function initialize():void{
            this.view.signIn.add(this.1Mi);
            this.view.register.add(this.0VB);
            this.view.cancel.add(this.onCancel);
            this.view.forgot.add(this.MO);
            this.1Lj.add(this.0-G);
        }

        override public function destroy():void{
            this.view.signIn.remove(this.1Mi);
            this.view.register.remove(this.0VB);
            this.view.cancel.remove(this.onCancel);
            this.view.forgot.remove(this.MO);
            this.1Lj.remove(this.0-G);
        }

        private function 1Mi(_arg1:1T5):void{
            this.view.disable();
            this.login.dispatch(_arg1);
        }

        private function 0VB():void{
            this.0n2.dispatch(new 0mL());
        }

        private function onCancel():void{
            this.KW.dispatch();
        }

        private function MO():void{
            this.0n2.dispatch(new WebForgotPasswordDialog());
        }

        private function 0-G(_arg1:9f):void{
            this.view.07n(_arg1.error);
            this.view.0Eb();
        }


    }
}//package 0sC

