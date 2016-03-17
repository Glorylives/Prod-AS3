// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.1Sy

package 0sC{
    import 1uF.1Mf;
    import aq.Account;
    import 1Bg.fQ;
    import 0eZ.Ag;
    import 1qg.0io;
    import 1qg.11S;
    import 0eZ.0b8;
    import 1fx.1Zh;
    import _04_._1JZ;
    import _0BB.Fu;

    public class 1Sy extends 1Mf {

        [Inject]
        public var view:WebAccountDetailDialog;
        [Inject]
        public var account:Account;
        [Inject]
        public var Ud:fQ;
        [Inject]
        public var verify:Ag;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var KW:11S;
        [Inject]
        public var 03l:0b8;


        override public function initialize():void{
            this.view.dV(this.account.j2(), this.account.1J9());
            this.view.change.add(this.1c0);
            this.view.logout.add(this.0SZ);
            this.view.cancel.add(this.0-p);
            this.view.verify.add(this.03a);
        }

        override public function destroy():void{
            this.view.change.remove(this.1c0);
            this.view.logout.remove(this.0SZ);
            this.view.cancel.remove(this.0-p);
            this.view.verify.remove(this.03a);
        }

        private function 1c0():void{
            this.0n2.dispatch(new WebChangePasswordDialog());
        }

        private function 0SZ():void{
            this.1et();
            this.account.clear();
            this.03l.dispatch();
            this.0n2.dispatch(new WebLoginDialog());
        }

        private function 1et():void{
            var _local1:1Zh = new 1Zh();
            _local1.category = "account";
            _local1.1D9 = "loggedOut";
            this.Ud.dispatch(_local1);
        }

        private function 0-p():void{
            this.KW.dispatch();
        }

        private function 03a():void{
            var _local1:Fu = _1JZ.0JF().getInstance(Fu);
            _local1.complete.addOnce(this.onComplete);
            _local1.sendRequest("/account/sendVerifyEmail", this.account.1Y());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.21l();
            } else
            {
                this.0ys(_arg2);
            };
        }

        private function 21l():void{
            this.09j();
        }

        private function 09j():void{
            var _local1:1Zh = new 1Zh();
            _local1.category = "account";
            _local1.1D9 = "verifyEmailSent";
            this.Ud.dispatch(_local1);
        }

        private function 0ys(_arg1:String):void{
            this.account.clear();
        }


    }
}//package 0sC

