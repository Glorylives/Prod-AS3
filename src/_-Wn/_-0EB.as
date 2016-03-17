// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Wn.0EB

package Wn{
    import flash.display.BitmapData;
    import 5z.0tK;
    import __AS3__.vec.Vector;

    public class 0EB {

        public var 1me:BitmapData;
        public var name:String;
        public var pet:0tK;
        public var Zm:Vector.<int>;
        public var 1AM:Vector.<int>;
        public var 0e8:Number;
        public var R:int;
        public var guildName:String;
        public var ew:int;
        public var rank:int = -1;
        public var 1L3:Boolean = false;


        public function 18I(_arg1:0EB):Boolean{
            return ((((((_arg1.name == this.name)) && ((this.0e8 == _arg1.0e8)))) && ((this.R == _arg1.R))));
        }

        public function FL(_arg1:0EB):Boolean{
            return ((((this.R > _arg1.R)) || ((((this.R == _arg1.R)) && ((this.0e8 < _arg1.0e8))))));
        }


    }
}//package Wn

