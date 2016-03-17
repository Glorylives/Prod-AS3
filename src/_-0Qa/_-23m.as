// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Qa.23m

package 0Qa{
    import aq.Account;
    import _0BB.Fu;
    import qG.0bJ;
    import flash.events.ErrorEvent;
    import com.company.util.080;

    public class 23m {

        [Inject]
        public var account:Account;
        [Inject]
        public var client:Fu;
        [Inject]
        public var setup:0bJ;
        [Inject]
        public var event:ErrorEvent;
        private var error;


        public function execute():void{
            this.event.preventDefault();
            this.error = this.event["error"];
            this.0Ey();
            var _local1:Array = [];
            _local1.push(("Build: " + this.setup.04j()));
            _local1.push(("message: " + this.0Ey()));
            _local1.push(("stackTrace: " + this.getStackTrace()));
            _local1.push(080.CD());
            this.client.0NT(false);
            this.client.sendRequest("/clientError/add", {
                text:_local1.join("\n"),
                guid:this.account.getUserId()
            });
        }

        private function 0Ey():String{
            if ((this.error is Error))
            {
                return (this.error.message);
            };
            if (this.event != null)
            {
                return (this.event.text);
            };
            if (this.error != null)
            {
                return (this.error.toString());
            };
            return ("(empty)");
        }

        private function getStackTrace():String{
            return ((((this.error is Error)) ? Error(this.error).getStackTrace() : "(empty)"));
        }


    }
}//package 0Qa

