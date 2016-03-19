// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PV.6M

package 1PV{
    import com.company.util.1wL;
    import aq.*;

    public class 6M implements Account {

        public static const 1hw:String = "steam";

        [Inject]
        public var  each:aN;
        private var userId:String = "";
        private var password:String = null;
        private var 9S:Boolean;
        private var 1cH:String;


        public function 19R(_arg1:String, _arg2:String):void{
            this.userId = _arg1;
            this.password = _arg2;
        }

        public function j2():String{
            return (this. each.getPersonaName());
        }

        public function getUserId():String{
            return ((this.userId = ((this.userId) || (""))));
        }

        public function DX():String{
            return ("");
        }

        public function 1hW():String{
            return ((this.password = ((this.password) || (""))));
        }

        public function 1Y():Object{
            var _local1:Object = {}
            _local1.guid = this.getUserId();
            _local1.secret = this.1hW();
            _local1.steamid = this. each.0RA();
            return (_local1);
        }

        public function 0D3():Boolean{
            return (!((this.1hW() == "")));
        }

        public function 1U2():Boolean{
            return (1wL.0xF(this.userId));
        }

        public function 0yO():String{
            return (this. each.0RA());
        }

        public function Gc():String{
            return (1hw);
        }

        public function 229():String{
            return ("steam");
        }

        public function 1oM(_arg1:String, _arg2:int):void{
            this. each.0vz(_arg1, _arg2);
        }

        public function 00j():String{
            return ("/steamworks");
        }

        public function 0lC():String{
            return ("steamworks");
        }

        public function clear():void{
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
            throw (new Error("No current support for new Kabam offer wall on Steam."));
        }

        public function Df():String{
            throw (new Error("No current support for new Kabam offer wall on Steam."));
        }


    }
}//package 1PV

