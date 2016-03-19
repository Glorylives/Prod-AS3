// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Dt.5c

package _0Dt{
import _1ki._0e0;

import _aq.Account;

import aq.*;

    public class _5c implements Account {

        public static const _1hw:String = "kongregate";

        [Inject]
        public var  each:_0e0;
        private var userId:String = "";
        private var password:String;
        private var _9S:Boolean;
        private var _1cH:String;


        public function _19R(_arg1:String, _arg2:String):void{
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

        public function _1hW():String{
            return (((this.password) || ("")));
        }

        public function _1Y():Object{
            return ({
                guid:this.getUserId(),
                secret:this._1hW()
            });
        }

        public function _0D3():Boolean{
            return (!((this._1hW() == "")));
        }

        public function _0yO():String{
            return (this. each.getUserId());
        }

        public function Gc():String{
            return (_1hw);
        }

        public function _229():String{
            return ("kongregate");
        }

        public function _1oM(_arg1:String, _arg2:int):void{
            this. each._0vz(_arg1, _arg2);
        }

        public function _00j():String{
            return ("/kongregate");
        }

        public function _0lC():String{
            return ("kongregate");
        }

        public function clear():void{
        }

        public function verify(_arg1:Boolean):void{
            this._9S = _arg1;
        }

        public function _1J9():Boolean{
            return (this._9S);
        }

        public function Pf():String{
            return (((this._1cH) || ("")));
        }

        public function _0HY(_arg1:String):void{
            this._1cH = _arg1;
        }

        public function lf():String{
            throw (new Error("No current support for new Kabam offer wall on Kongregate."));
        }

        public function Df():String{
            throw (new Error("No current support for new Kabam offer wall on Kongregate."));
        }


    }
}//package _0Dt

