// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//g0.Tz

package g0{
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;

    public class Tz {

        public var objectId_:int;
        public var 08N:int;
        public var objectType_:int;


        public function parseFromInput(_arg1:IDataInput):void{
            this.objectId_ = _arg1.readInt();
            this.08N = _arg1.readUnsignedByte();
            this.objectType_ = _arg1.readShort();
        }

        public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.objectId_);
            _arg1.writeByte(this.08N);
            _arg1.writeShort(this.objectType_);
        }

        public function toString():String{
            return (((((("objectId_: " + this.objectId_) + " slotId_: ") + this.08N) + " objectType_: ") + this.objectType_));
        }


    }
}//package g0

