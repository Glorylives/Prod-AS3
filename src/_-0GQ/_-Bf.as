// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0GQ.Bf

package 0GQ{
    import 1cI.1iz;
    import aq.Account;
    import _0BB._Fu;
    import qs.1T5;
    import flash.net.SharedObject;
    import com.company.assembleegameclient.util.GUID;
    import 14V.*;

    public class Bf extends 1iz implements h3 {

        [Inject]
        public var account:Account;
        [Inject]
        public var client:_Fu;
        private var data:1T5;


        override protected function startTask():void{
            this.1jh();
            if (this.data.username)
            {
                this.LP();
            } else
            {
                this.0V6();
            }
        }

        private function 1jh():void{
            var rotmg:SharedObject;
            this.data = new 1T5();
            try
            {
                rotmg = SharedObject.getLocal("RotMG", "/");
                ((rotmg.data["GUID"]) && ((this.data.username = rotmg.data["GUID"])));
                ((rotmg.data["Password"]) && ((this.data.password = rotmg.data["Password"])));
            } catch(error:Error)
            {
                data.username = null;
                data.password = null;
            }
        }

        private function LP():void{
            this.account.19R(this.data.username, this.data.password);
            this.account.verify(false);
            1d5(true);
        }

        private function 0V6():void{
            this.account.19R(GUID.create(), null);
            1d5(true);
        }


    }
}//package 0GQ

