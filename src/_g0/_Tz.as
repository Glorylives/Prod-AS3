// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//g0._Tz

package _g0{
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;

    public class _Tz {

        public var objectId_:int;
        public var _08N:int;
        public var objectType_:int;


        public function parseFromInput(_arg1:IDataInput):void{
            this.objectId_ = _arg1.readInt();
            this._08N = _arg1.readUnsignedByte();
            this.objectType_ = _arg1.readShort();
        }

        public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.objectId_);
            _arg1.writeByte(this._08N);
            _arg1.writeShort(this.objectType_);
        }

        public function toString():String{
            return (((((("objectId_: " + this.objectId_) + " slotId_: ") + this._08N) + " objectType_: ") + this.objectType_));
        }


    }
}//package g0

