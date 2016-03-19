// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.0-r

package _1zG{
    import flash.utils.IDataInput;

    public class _0r extends _11g {

        public var _08Q:int;
        public var _1Fw:int;
        public var _1uS:int;

        public function _0r(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this._08Q = _arg1.readInt();
            this._1Fw = _arg1.readInt();
            this._1uS = _arg1.readInt();
        }


    }
}//package 1zG

