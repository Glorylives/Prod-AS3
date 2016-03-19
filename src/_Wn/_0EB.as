// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Wn.0EB

package _Wn{
    import flash.display.BitmapData;
    import _5z._0tK;

    public class _0EB {

        public var _1me:BitmapData;
        public var name:String;
        public var pet:_0tK;
        public var Zm:Vector.<int>;
        public var _1AM:Vector.<int>;
        public var _0e8:Number;
        public var R:int;
        public var guildName:String;
        public var ew:int;
        public var rank:int = -1;
        public var _1L3:Boolean = false;


        public function _18I(_arg1:_0EB):Boolean{
            return ((((((_arg1.name == this.name)) && ((this._0e8 == _arg1._0e8)))) && ((this.R == _arg1.R))));
        }

        public function FL(_arg1:_0EB):Boolean{
            return ((((this.R > _arg1.R)) || ((((this.R == _arg1.R)) && ((this._0e8 < _arg1._0e8))))));
        }


    }
}//package Wn

