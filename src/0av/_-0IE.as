// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0av.0IE

package 0av{
    import 1cI.1iz;
    import aq.Account;
    import 1PV.aN;
    import qs.1T5;
    import 0Fr.1da;
    import _0BB._Fu;
    import 14V.*;

    public class 0IE extends 1iz implements 1Cc {

        [Inject]
        public var account:Account;
        [Inject]
        public var  each:aN;
        [Inject]
        public var data:1T5;
        [Inject]
        public var u3:1da;
        [Inject]
        private var client:_Fu;


        override protected function startTask():void{
            this.u3.debug("startTask");
            this.client.1Je(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/steamworks/register", this.rM());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.OB(_arg2);
            } else
            {
                this.0VM(_arg2);
            }
        }

        private function rM():Object{
            var _local1:Object = this. each.0JS();
            _local1.newGUID = this.data.username;
            _local1.newPassword = this.data.password;
            _local1.entrytag = this.account.0lC();
            return (_local1);
        }

        private function OB(_arg1:String):void{
            var _local2:XML = new XML(_arg1);
            this.u3.debug("done - {0}", [_local2.GUID]);
            this.account.19R(_local2.GUID, _local2.Secret);
            this.account.0HY(_local2.PlatformToken);
            1d5(true);
        }

        private function 0VM(_arg1:String):void{
            this.u3.debug("error - {0}", [_arg1]);
            1d5(false, _arg1);
        }


    }
}//package 0av

