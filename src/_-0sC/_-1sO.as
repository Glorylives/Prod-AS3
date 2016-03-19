// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.1sO

package 0sC{
    import 1uF.1Mf;
    import aq.Account;
    import 0eZ.1f2;
    import 1qg.0io;

    public class 1sO extends 1Mf {

        [Inject]
        public var view:as;
        [Inject]
        public var account:Account;
        [Inject]
        public var logout:1f2;
        [Inject]
        public var 0n2:0io;


        override public function initialize():void{
            this.view.login.add(this.fX);
            this.view.register.add(this.0VB);
        }

        override public function destroy():void{
            this.view.login.remove(this.fX);
            this.view.register.remove(this.0VB);
        }

        private function 0VB():void{
            this.0n2.dispatch(new 0mL());
        }

        private function fX():void{
            if (this.account.0D3())
            {
                this.zI();
            } else
            {
                this.0n2.dispatch(new WebLoginDialog());
            }
        }

        private function zI():void{
            this.logout.dispatch();
            this.view.00K("", false);
        }


    }
}//package 0sC

