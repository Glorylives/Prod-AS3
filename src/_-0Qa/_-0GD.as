// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Qa.0GD

package 0Qa{
    import 0Fr.1da;
    import flash.events.ErrorEvent;

    public class 0GD {

        [Inject]
        public var u3:1da;
        [Inject]
        public var event:ErrorEvent;


        public function execute():void{
            this.u3.error(this.event.text);
            if (((this.event["error"]) && ((this.event["error"] is Error))))
            {
                this.1wu(this.event["error"]);
            };
        }

        private function 1wu(_arg1:Error):void{
            this.u3.error(_arg1.message);
            this.u3.error(_arg1.getStackTrace());
        }


    }
}//package 0Qa

