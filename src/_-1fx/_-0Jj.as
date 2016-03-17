// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1fx.0Jj

package 1fx{
    import 1cI.1iz;
    import 1qg.0io;
    import 1PB.pu;
    import 1t6.ErrorDialog;

    public class 0Jj extends 1iz {

        [Inject]
        public var 0n2:0io;
        public var 23t:PurchaseCharacterClassTask;


        override protected function startTask():void{
            if (this.23t.error == "Not enough Gold.")
            {
                this.0n2.dispatch(new pu());
            } else
            {
                this.0n2.dispatch(new ErrorDialog(this.23t.error));
            };
        }


    }
}//package 1fx

