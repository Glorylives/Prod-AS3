// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0mE.p3

package 0mE{
    import aq.Account;
    import 1qg.0io;
    import 0sC.WebAccountDetailDialog;
    import 0sC.0mL;

    public class p3 {

        [Inject]
        public var account:Account;
        [Inject]
        public var 0n2:0io;


        public function execute():void{
            if (this.account.0D3())
            {
                this.0n2.dispatch(new WebAccountDetailDialog());
            } else
            {
                this.0n2.dispatch(new 0mL());
            };
        }


    }
}//package 0mE

