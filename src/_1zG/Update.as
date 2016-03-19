// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.Update

package 1zG{
    import __AS3__.vec.Vector;
    import g0.0Uf;
    import g0.0kZ;
    import com.company.assembleegameclient.util.0Ep;
    import flash.utils.IDataInput;
    import __AS3__.vec.*;

    public class Update extends 11g {

        public var tiles_:Vector.<0Uf>;
        public var newObjs_:Vector.<0kZ>;
        public var drops_:Vector.<int>;

        public function Update(_arg1:uint, _arg2:Function){
            this.tiles_ = new Vector.<0Uf>();
            this.newObjs_ = new Vector.<0kZ>();
            this.drops_ = new Vector.<int>();
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            var _local2:int;
            var _local3:int = _arg1.readShort();
            _local2 = _local3;
            while (_local2 < this.tiles_.length)
            {
                0Ep.23n(this.tiles_[_local2]);
                _local2++;
            }
            this.tiles_.length = Math.min(_local3, this.tiles_.length);
            while (this.tiles_.length < _local3)
            {
                this.tiles_.push((0Ep.sH(0Uf) as 0Uf));
            }
            _local2 = 0;
            while (_local2 < _local3)
            {
                this.tiles_[_local2].parseFromInput(_arg1);
                _local2++;
            }
            this.newObjs_.length = 0;
            _local3 = _arg1.readShort();
            _local2 = _local3;
            while (_local2 < this.newObjs_.length)
            {
                0Ep.23n(this.newObjs_[_local2]);
                _local2++;
            }
            this.newObjs_.length = Math.min(_local3, this.newObjs_.length);
            while (this.newObjs_.length < _local3)
            {
                this.newObjs_.push((0Ep.sH(0kZ) as 0kZ));
            }
            _local2 = 0;
            while (_local2 < _local3)
            {
                this.newObjs_[_local2].parseFromInput(_arg1);
                _local2++;
            }
            this.drops_.length = 0;
            var _local4:int = _arg1.readShort();
            _local2 = 0;
            while (_local2 < _local4)
            {
                this.drops_.push(_arg1.readInt());
                _local2++;
            }
        }

        override public function toString():String{
            return (formatToString("UPDATE", "tiles_", "newObjs_", "drops_"));
        }


    }
}//package 1zG

