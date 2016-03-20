// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//12r.1dk

package 12r{
    import 1cI.1iz;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import _0BB._Fu;
    import aq.Account;
    import 0OB.Ze;

    public class 1dk extends 1iz {

        [Inject]
        public var character:SavedCharacter;
        [Inject]
        public var client:_Fu;
        [Inject]
        public var account:Account;
        [Inject]
        public var model:Ze;


        override protected function startTask():void{
            this.client.1Je(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/char/delete", this.eH());
        }

        private function eH():Object{
            var _local1:Object = this.account.1Y();
            _local1.charId = this.character.charId();
            _local1.reason = 1;
            return (_local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            ((_arg1) && (this.0mw()));
            1d5(_arg1, _arg2);
        }

        private function 0mw():void{
            this.model.deleteCharacter(this.character.charId());
        }


    }
}//package 12r

