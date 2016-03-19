// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1pI

package 1zG{
    import __AS3__.vec.Vector;
    import flash.utils.IDataInput;
    import __AS3__.vec.*;

    public class 1pI extends 11g {

        public var offer_:Vector.<Boolean>;

        public function 1pI(_arg1:uint, _arg2:Function){
            this.offer_ = new Vector.<Boolean>();
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.offer_.length = 0;
            var _local2:int = _arg1.readShort();
            var _local3:int;
            while (_local3 < _local2)
            {
                this.offer_.push(_arg1.readBoolean());
                _local3++;
            }
        }

        override public function toString():String{
            return (formatToString("TRADECHANGED", "offer_"));
        }


    }
}//package 1zG

