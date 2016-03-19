// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1tr.0SX

package 1tr{
    import Yz.0Vd;
    import flash.external.ExternalInterface;
    import aq.*;

    public class 0SX implements Account {

        public static const 1hw:String = "kabam.com";
        private static const 0dj:String = "kabam.com";

        private var 1zL:String;
        private var userId:String = "";
        private var password:String = null;
        private var 9S:Boolean;
        private var 1cH:String;
        public var signedRequest:String;
        public var userSession:Object;
        [Inject]
        public var 1SD:0Vd;

        public function 0SX(){
            var _local1:String;
            super();
            try
            {
                _local1 = ExternalInterface.call("rotmg.UrlLib.getParam", "entrypt");
                if (_local1 != null)
                {
                    this.1zL = _local1;
                }
            } catch(error:Error)
            {
            }
        }

        public function 19R(_arg1:String, _arg2:String):void{
            this.userId = _arg1;
            this.password = _arg2;
        }

        public function 00j():String{
            return ("/credits");
        }

        public function 1Y():Object{
            return ({
                guid:this.getUserId(),
                secret:this.1hW(),
                signedRequest:this.signedRequest
            });
        }

        public function 0lC():String{
            return (((this.1zL) || ("")));
        }

        public function 0yO():String{
            if ((((this.userSession == null)) || ((this.userSession["kabam_naid"] == null))))
            {
                return ("");
            }
            return (this.userSession["kabam_naid"]);
        }

        public function Gc():String{
            return (1hw);
        }

        public function j2():String{
            if ((((((this.userSession == null)) || ((this.userSession["user"] == null)))) || ((this.userSession["user"]["email"] == null))))
            {
                return ("");
            }
            var _local1:String = this.userSession["user"]["email"];
            var _local2:Array = _local1.split("@", 2);
            if (_local2.length != 2)
            {
                return ("");
            }
            return (_local2[0]);
        }

        public function getUserId():String{
            return (this.userId);
        }

        public function 1U2():Boolean{
            return (false);
        }

        public function 0D3():Boolean{
            return (true);
        }

        public function 229():String{
            return (0dj);
        }

        public function 1hW():String{
            return (((this.password) || ("")));
        }

        public function DX():String{
            return ("");
        }

        public function clear():void{
        }

        public function 1oM(_arg1:String, _arg2:int):void{
        }

        public function verify(_arg1:Boolean):void{
            this.9S = _arg1;
        }

        public function 1J9():Boolean{
            return (this.9S);
        }

        public function Pf():String{
            return (((this.1cH) || ("")));
        }

        public function 0HY(_arg1:String):void{
            this.1cH = _arg1;
        }

        public function lf():String{
            return (this.userSession["oauth_token"]);
        }

        public function Df():String{
            return (this.0yO());
        }


    }
}//package 1tr

