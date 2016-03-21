// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//g0.ge

package g0{

    import com.company.assembleegameclient.util.0Ep;
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;


    public class ge {

        public var objectId_:int;
        public var pos_:1tk;
        public var Zg:Vector.<StatData>;

        public function ge(){
            this.pos_ = new 1tk();
            this.Zg = new Vector.<StatData>();
            super();
        }

        public function parseFromInput(_arg1:IDataInput):void{
            var _local3:int;
            this.objectId_ = _arg1.readInt();
            this.pos_.parseFromInput(_arg1);
            var _local2:int = _arg1.readShort();
            _local3 = _local2;
            while (_local3 < this.Zg.length)
            {
                0Ep.23n(this.Zg[_local3]);
                _local3++;
            }
            this.Zg.length = Math.min(_local2, this.Zg.length);
            while (this.Zg.length < _local2)
            {
                this.Zg.push((0Ep.sH(StatData) as StatData));
            }
            _local3 = 0;
            while (_local3 < _local2)
            {
                this.Zg[_local3].parseFromInput(_arg1);
                _local3++;
            }
        }

        public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.objectId_);
            this.pos_.writeToOutput(_arg1);
            _arg1.writeShort(this.Zg.length);
            var _local2:int;
            while (_local2 < this.Zg.length)
            {
                this.Zg[_local2].writeToOutput(_arg1);
                _local2++;
            }
        }

        public function toString():String{
            return (((((("objectId_: " + this.objectId_) + " pos_: ") + this.pos_) + " stats_: ") + this.Zg));
        }


    }
}//package g0

