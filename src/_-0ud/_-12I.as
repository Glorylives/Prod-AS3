// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ud.12I

package 0ud{
    import 1cI.1iz;
    import aq.Account;
    import 1ki.0e0;
    import qs.1T5;
    import 1cs.1Ch;
    import _0BB.Fu;
    import 14V.*;

    public class 12I extends 1iz implements 0jk {

        public static const 16B:String = "Kongregate account already registered";

        [Inject]
        public var account:Account;
        [Inject]
        public var  each:0e0;
        [Inject]
        public var data:1T5;
        [Inject]
        public var 0AJ:1Ch;
        [Inject]
        public var client:Fu;


        override protected function startTask():void{
            this.client.1Je(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/kongregate/internalRegister", this.rM());
        }

        private function rM():Object{
            var _local1:Object = this. each.0To();
            _local1.guid = this.account.getUserId();
            return (_local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.1ev(_arg2);
            } else
            {
                if (_arg2 == 16B)
                {
                    this.0AJ.dispatch(this.data);
                };
            };
            1d5(_arg1, _arg2);
        }

        private function 1ev(_arg1:String):void{
            var _local2:XML = new XML(_arg1);
            this.account.19R(_local2.GUID, _local2.Secret);
            this.account.0HY(_local2.PlatformToken);
        }


    }
}//package 0ud

