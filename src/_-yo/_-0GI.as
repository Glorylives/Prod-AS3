// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.0GI

package yo{
    import g0.1tk;
    import __AS3__.vec.Vector;
    import g0.wb;
    import flash.utils.IDataOutput;
    import __AS3__.vec.*;

    public class 0GI extends 0j1 {

        public var tickId_:int;
        public var time_:int;
        public var newPosition_:1tk;
        public var records_:Vector.<wb>;

        public function 0GI(_arg1:uint, _arg2:Function){
            this.newPosition_ = new 1tk();
            this.records_ = new Vector.<wb>();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.tickId_);
            _arg1.writeInt(this.time_);
            this.newPosition_.writeToOutput(_arg1);
            _arg1.writeShort(this.records_.length);
            var _local2:int;
            while (_local2 < this.records_.length)
            {
                this.records_[_local2].writeToOutput(_arg1);
                _local2++;
            };
        }

        override public function toString():String{
            return (formatToString("MOVE", "tickId_", "time_", "newPosition_", "records_"));
        }


    }
}//package yo

