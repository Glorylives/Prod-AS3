// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0GQ.V

package 0GQ{
    import 1cI.1iz;
    import 1Bg.fQ;
    import _0BB.Fu;
    import 1fx.1Zh;
    import 14V.*;

    public class V extends 1iz implements 1YZ {

        [Inject]
        public var email:String;
        [Inject]
        public var Ud:fQ;
        [Inject]
        public var client:Fu;


        override protected function startTask():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/account/forgotPassword", {guid:this.email});
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.1sH();
            } else
            {
                this.yR(_arg2);
            }
        }

        private function 1sH():void{
            this.17s();
            1d5(true);
        }

        private function 17s():void{
            var _local1:1Zh = new 1Zh();
            _local1.category = "account";
            _local1.1D9 = "passwordSent";
            this.Ud.dispatch(_local1);
        }

        private function yR(_arg1:String):void{
            1d5(false, _arg1);
        }


    }
}//package 0GQ

