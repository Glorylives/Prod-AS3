// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ud.1it

package 0ud{
    import 1cI.1iz;
    import 14V.27Q;
    import 1ki.0e0;
    import aq.Account;
    import 1cI.9f;

    public class 1it extends 1iz {

        [Inject]
        public var login:27Q;
        [Inject]
        public var  each:0e0;
        [Inject]
        public var account:Account;
        [Inject]
        public var local:Z8;


        override protected function startTask():void{
            if (this. each.isGuest())
            {
                this.0q3();
            } else
            {
                this.10I();
            };
        }

        private function 10I():void{
            this.login.1uB.addOnce(this.0s2);
            this.login.start();
        }

        private function 0s2(_arg1:9f, _arg2:Boolean, _arg3:String=""):void{
            1d5(true);
        }

        private function 0q3():void{
            this.account.19R(this.local.0Mr(), "");
            1d5(true);
        }


    }
}//package 0ud

