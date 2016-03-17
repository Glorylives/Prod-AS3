// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Av.1Dg

package Av{
    import 1uF.1Mf;
    import aq.Account;
    import 1qg.11S;

    public class 1Dg extends 1Mf {

        [Inject]
        public var account:Account;
        [Inject]
        public var view:KabamAccountDetailDialog;
        [Inject]
        public var KW:11S;


        override public function initialize():void{
            this.view.eO.add(this.0-p);
            this.view.00K(this.account.j2());
        }

        override public function destroy():void{
            this.view.eO.remove(this.0-p);
        }

        private function 0-p():void{
            this.KW.dispatch();
        }


    }
}//package Av

