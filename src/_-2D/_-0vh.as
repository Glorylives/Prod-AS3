// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2D.0vh

package 2D{
    import flash.external.ExternalInterface;
    import com.company.assembleegameclient.util.GUID;
    import flash.net.SharedObject;
    import com.company.assembleegameclient.parameters.Parameters;
    import aq.*;

    public class 0vh implements Account {

        public static const 1hw:String = "rotmg";
        private static const JQ:String = "";
        private static const cm:String = "rotmg";

        private var userId:String = "";
        private var password:String;
        private var 1zL:String = "";
        private var 9S:Boolean;
        private var 1cH:String;
        public var signedRequest:String;
        public var 09w:String;

        public function 0vh(){
            try
            {
                this.1zL = ExternalInterface.call("rotmg.UrlLib.getParam", "entrypt");
            } catch(error:Error)
            {
            };
        }

        public function j2():String{
            return (this.userId);
        }

        public function getUserId():String{
            return ((this.userId = ((this.userId) || (GUID.create()))));
        }

        public function DX():String{
            return (((this.password) || ("")));
        }

        public function 1Y():Object{
            return ({
                guid:this.getUserId(),
                password:this.DX()
            });
        }

        public function 0D3():Boolean{
            return (!((this.DX() == "")));
        }

        public function 19R(_arg1:String, _arg2:String):void{
            var _local3:SharedObject;
            this.userId = _arg1;
            this.password = _arg2;
            try
            {
                _local3 = SharedObject.getLocal("RotMG", "/");
                _local3.data["GUID"] = _arg1;
                _local3.data["Password"] = _arg2;
                _local3.flush();
            } catch(error:Error)
            {
            };
        }

        public function clear():void{
            this.19R(GUID.create(), null);
            Parameters.1cS = true;
            Parameters.data_.charIdUseMap = {};
            Parameters.save();
        }

        public function 1oM(_arg1:String, _arg2:int):void{
        }

        public function 00j():String{
            return ("/credits");
        }

        public function 0yO():String{
            return (JQ);
        }

        public function Gc():String{
            return (1hw);
        }

        public function 229():String{
            return (cm);
        }

        public function 0lC():String{
            return (((this.1zL) || ("")));
        }

        public function 1hW():String{
            return ("");
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
            return (this.signedRequest);
        }

        public function Df():String{
            return (this.09w);
        }


    }
}//package 2D

