// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kC.ZY

package kC{
    import 1cI.1iz;
    import 1qQ.0Uh;
    import 1qQ.0oB;
    import 1qg.0io;
    import _0BB.Fu;
    import 1t6.ErrorDialog;

    public class ZY extends 1iz {

        private static const LANGUAGE:String = "LANGUAGE";

        [Inject]
        public var model:0Uh;
        [Inject]
        public var Pe:0oB;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var client:Fu;
        private var language:String;


        override protected function startTask():void{
            this.language = this.model.1GK();
            this.client.complete.addOnce(this.onComplete);
            this.client.1Je(3);
            this.client.sendRequest("/app/getLanguageStrings", {languageType:this.language});
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.1-J(_arg2);
            } else
            {
                this.09r();
            }
            1d5(_arg1, _arg2);
        }

        private function 1-J(_arg1:String):void{
            var _local3:Array;
            this.Pe.clear();
            var _local2:Object = JSON.parse(_arg1);
            for each (_local3 in _local2)
            {
                this.Pe.setValue(_local3[0], _local3[1], _local3[2]);
            }
        }

        private function 09r():void{
            this.Pe.setValue("ok", "ok", this.model.1GK());
            var _local1:ErrorDialog = new ErrorDialog((("Unable to load language [" + this.language) + "]"));
            this.0n2.dispatch(_local1);
            1d5(false);
        }


    }
}//package kC

