// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//c4.0WL

package c4{
    import flash.display.LoaderInfo;
    import Yz.0Vd;
    import Yz.0hH;
    import 0Fr.1da;

    public class 0WL implements Mo {

        [Inject]
        public var info:LoaderInfo;
        [Inject]
        public var 1SD:0Vd;
        [Inject]
        public var 1-Q:0hH;
        [Inject]
        public var u3:1da;


        public function 1Uz():String{
            return (this.info.parameters.kabam_signed_request);
        }

        public function 0WN():Object{
            var signedRequest:String;
            var requestDetails:Array;
            var payload:String;
            var userSession:Object;
            signedRequest = this.1Uz();
            try
            {
                requestDetails = signedRequest.split(".", 2);
                if (requestDetails.length != 2)
                {
                    throw (new Error("Invalid signed request"));
                }
                payload = this.1JF(requestDetails[1]);
                userSession = this.1SD.parse(payload);
            } catch(error:Error)
            {
                u3.info(((("Failed to get user session: " + error.toString()) + ", signed request: ") + signedRequest));
                userSession = null;
            }
            return (userSession);
        }

        protected function 1JF(_arg1:String):String{
            var _local2:RegExp = /-/g;
            var _local3:RegExp = /_/g;
            var _local4:int = (4 - (_arg1.length % 4));
            while (_local4--)
            {
                _arg1 = (_arg1 + "=");
            }
            _arg1 = _arg1.replace(_local2, "+").replace(_local3, "/");
            return (this.1-Q.decode(_arg1));
        }


    }
}//package c4

