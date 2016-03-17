// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//c9.iO

package c9{
    import _0BB.Fu;
    import aq.Account;
    import 0-O.O6;
    import 1qg.0io;
    import 0-O.21H;
    import 1t6.ErrorDialog;

    public class iO {

        [Inject]
        public var client:Fu;
        [Inject]
        public var account:Account;
        [Inject]
        public var vo:O6;
        [Inject]
        public var 0n2:0io;


        public function execute():void{
            var _local1:String = 21H.tc(this.vo.request);
            var _local2:Object = this.account.1Y();
            _local2["targetName"] = this.vo.target;
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest(_local1, _local2);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (this.vo.callback)
            {
                this.vo.callback(_arg1, _arg2, this.vo.target);
            } else
            {
                if (!_arg1)
                {
                    this.0n2.dispatch(new ErrorDialog(_arg2));
                };
            };
        }


    }
}//package c9

