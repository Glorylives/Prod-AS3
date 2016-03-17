// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//12X.1Dd

package 12X{
    import 1uF.1Mf;
    import aq.Account;
    import 0eZ.0b8;

    public class 1Dd extends 1Mf {

        [Inject]
        public var account:Account;
        [Inject]
        public var view:0u5;
        [Inject]
        public var update:0b8;


        override public function initialize():void{
            this.view.00K(this.account.j2(), this.account.0D3());
            this.update.add(this.iA);
        }

        override public function destroy():void{
            this.update.remove(this.iA);
        }

        private function iA():void{
            this.view.00K(this.account.j2(), this.account.0D3());
        }


    }
}//package 12X

