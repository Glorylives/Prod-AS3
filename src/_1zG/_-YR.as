// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.YR

package 1zG{
    import __AS3__.vec.Vector;
    import g0.ge;
    import com.company.assembleegameclient.util.0Ep;
    import flash.utils.IDataInput;
    import __AS3__.vec.*;

    public class YR extends 11g {

        public var tickId_:int;
        public var tickTime_:int;
        public var statuses_:Vector.<ge>;

        public function YR(_arg1:uint, _arg2:Function){
            this.statuses_ = new Vector.<ge>();
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            var _local3:int;
            this.tickId_ = _arg1.readInt();
            this.tickTime_ = _arg1.readInt();
            var _local2:int = _arg1.readShort();
            _local3 = _local2;
            while (_local3 < this.statuses_.length)
            {
                0Ep.23n(this.statuses_[_local3]);
                _local3++;
            }
            this.statuses_.length = Math.min(_local2, this.statuses_.length);
            while (this.statuses_.length < _local2)
            {
                this.statuses_.push((0Ep.sH(ge) as ge));
            }
            _local3 = 0;
            while (_local3 < _local2)
            {
                this.statuses_[_local3].parseFromInput(_arg1);
                _local3++;
            }
        }

        override public function toString():String{
            return (formatToString("NEW_TICK", "tickId_", "tickTime_", "statuses_"));
        }


    }
}//package 1zG

