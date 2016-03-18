// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.0TC

package 5z{
    public class 0TC {

        public static const LEFT:String = "leftSide";
        public static const RIGHT:String = "rightSide";

        public var 06h:0tK;
        public var 1f0:int = -1;
        public var 1lT:0tK;
        public var n-:int = -1;
        public var 26l:int = -1;
        public var caller:Class;
        public var selected:String;


        public function clear():void{
            this.caller = null;
            this.06h = null;
            this.1f0 = -1;
            this.1lT = null;
            this.n- = -1;
            this.26l = -1;
        }

        public function uY():Boolean{
            return (((((((!((this.26l == -1))) && (!((this.n- == -1))))) && (!((this.1f0 == -1))))) && (!((this.06h == null)))));
        }

        public function 0fw():Boolean{
            return (((!((this.1lT == null))) && (!((this.06h == null)))));
        }


    }
}//package 5z

