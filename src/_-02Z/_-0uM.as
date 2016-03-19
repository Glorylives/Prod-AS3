// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//02Z.0uM

package 02Z{
    import aq.Account;
    import 1ki.0e0;
    import 1qg.0io;
    import 1ki.KongregateAccountDetailDialog;

    public class 0uM {

        [Inject]
        public var account:Account;
        [Inject]
        public var  each:0e0;
        [Inject]
        public var 0n2:0io;


        public function execute():void{
            if (this.account.0D3())
            {
                this.0n2.dispatch(new KongregateAccountDetailDialog());
            } else
            {
                this. each.1cv();
            }
        }


    }
}//package 02Z

