// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.0Ob

package 0sC{
    import 1uF.1Mf;
    import 0eZ.25O;
    import 1qg.0io;
    import 1qg.11S;
    import 1Bg.1AE;
    import aq.Account;
    import _0BB._Fu;
    import _04_._1JZ;
    import AO.du;
    import qs.1T5;

    public class 0Ob extends 1Mf {

        [Inject]
        public var view:0Tp;
        [Inject]
        public var login:25O;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var KW:11S;
        [Inject]
        public var 1Lj:1AE;
        [Inject]
        public var account:Account;


        override public function initialize():void{
            this.view.0-e.add(this.1Mi);
            this.view.register.add(this.0VB);
            this.view.forgot.add(this.MO);
            this.1Lj.add(this.0-G);
        }

        override public function destroy():void{
            this.view.0-e.remove(this.1Mi);
            this.view.register.remove(this.0VB);
            this.view.forgot.remove(this.MO);
            this.1Lj.remove(this.0-G);
        }

        private function 1Mi(_arg1:1T5):void{
            var _local2:_Fu;
            this.view.email.0qp();
            this.view.disable();
            if (this.account.getUserId().toLowerCase() == _arg1.username.toLowerCase())
            {
                _local2 = _1JZ.0JF().getInstance(_Fu);
                _local2.sendRequest("/account/verify", {
                    guid:_arg1.username,
                    password:_arg1.password,
                    fromResetFlow:"yes"
                });
                _local2.complete.addOnce(this.onComplete);
            } else
            {
                this.view.email.07n(du.1uo);
                this.view.0Eb();
            }
        }

        private function 0VB():void{
            this.0n2.dispatch(new 0mL());
        }

        private function MO():void{
            this.0n2.dispatch(new WebForgotPasswordDialog());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (!_arg1)
            {
                this.0-G(_arg2);
            } else
            {
                this.0n2.dispatch(new 14Y());
            }
        }

        private function 0-G(_arg1:String):void{
            this.view.07n(_arg1);
            this.view.0Eb();
        }


    }
}//package 0sC

