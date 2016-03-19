// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Zz.G1

package 1Zz{
    import aq.Account;
    import 1qg.0io;
    import flash.display.Sprite;
    import 0hd.NewChooseNameFrame;
    import 1PB.ChooseNameRegisterDialog;

    public class G1 {

        [Inject]
        public var account:Account;
        [Inject]
        public var 0n2:0io;


        public function execute():void{
            var _local1:Sprite;
            if (this.account.0D3())
            {
                _local1 = new NewChooseNameFrame();
            } else
            {
                _local1 = new ChooseNameRegisterDialog();
            }
            this.0n2.dispatch(_local1);
        }


    }
}//package 1Zz

