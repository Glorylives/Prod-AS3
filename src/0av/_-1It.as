// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0av.1It

package 0av{
    import 1cI.1iz;
    import flash.display.LoaderInfo;
    import 1PV.aN;
    import JV.1OM;
    import 1qg.0io;
    import 1qg.11S;
    import 0Fr.1da;
    import 1ih.ZL;
    import flash.display.DisplayObject;

    public class 1It extends 1iz {

        [Inject]
        public var info:LoaderInfo;
        [Inject]
        public var  each:aN;
        [Inject]
        public var W2:1OM;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var KW:11S;
        [Inject]
        public var u3:1da;
        private var 1WQ:ZL;


        override protected function startTask():void{
            this.u3.debug("startTask");
            this.W2. each.addChild((this. each as DisplayObject));
            this. each.53.addOnce(this.requestSessionTicket);
            this. each.load(this.info.parameters.steam_api_path);
        }

        private function requestSessionTicket():void{
            this.u3.debug("requestSessionTicket");
            this. each.1pr.addOnce(this.1Wa);
            this. each.requestSessionTicket();
        }

        private function 1Wa(_arg1:Boolean):void{
            this.u3.debug("session received - isValid? {0}", [_arg1]);
            if (_arg1)
            {
                1d5(true);
            } else
            {
                this.extends();
            }
        }

        private function extends():void{
            this.1WQ = ((this.1WQ) || (new ZL()));
            this.1WQ.ok.addOnce(this.0bY);
            this.0n2.dispatch(this.1WQ);
        }

        private function 0bY():void{
            this.KW.dispatch();
            this.requestSessionTicket();
        }


    }
}//package 0av

