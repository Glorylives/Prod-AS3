// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Dt.5c

package 0Dt{
    import 1ki.0e0;
    import aq.*;

    public class 5c implements Account {

        public static const 1hw:String = "kongregate";

        [Inject]
        public var  each:0e0;
        private var userId:String = "";
        private var password:String;
        private var 9S:Boolean;
        private var 1cH:String;


        public function 19R(_arg1:String, _arg2:String):void{
            this.userId = _arg1;
            this.password = _arg2;
        }

        public function j2():String{
            return (this. each.j2());
        }

        public function getUserId():String{
            return (this.userId);
        }

        public function DX():String{
            return ("");
        }

        public function 1hW():String{
            return (((this.password) || ("")));
        }

        public function 1Y():Object{
            return ({
                guid:this.getUserId(),
                secret:this.1hW()
            });
        }

        public function 0D3():Boolean{
            return (!((this.1hW() == "")));
        }

        public function 0yO():String{
            return (this. each.getUserId());
        }

        public function Gc():String{
            return (1hw);
        }

        public function 229():String{
            return ("kongregate");
        }

        public function 1oM(_arg1:String, _arg2:int):void{
            this. each.0vz(_arg1, _arg2);
        }

        public function 00j():String{
            return ("/kongregate");
        }

        public function 0lC():String{
            return ("kongregate");
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
            throw (new Error("No current support for new Kabam offer wall on Kongregate."));
        }

        public function Df():String{
            throw (new Error("No current support for new Kabam offer wall on Kongregate."));
        }


    }
}//package 0Dt

