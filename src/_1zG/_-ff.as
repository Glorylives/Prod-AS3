// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.ff

package 1zG{

    import g0.1RN;
    import com.company.assembleegameclient.util.0Ep;
    import flash.utils.IDataInput;


    public class ff extends 11g {

        public var myItems_:Vector.<1RN>;
        public var yourName_:String;
        public var yourItems_:Vector.<1RN>;

        public function ff(_arg1:uint, _arg2:Function){
            this.myItems_ = new Vector.<1RN>();
            this.yourItems_ = new Vector.<1RN>();
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            var _local2:int;
            var _local3:int = _arg1.readShort();
            _local2 = _local3;
            while (_local2 < this.myItems_.length)
            {
                0Ep.23n(this.myItems_[_local2]);
                _local2++;
            }
            this.myItems_.length = Math.min(_local3, this.myItems_.length);
            while (this.myItems_.length < _local3)
            {
                this.myItems_.push((0Ep.sH(1RN) as 1RN));
            }
            _local2 = 0;
            while (_local2 < _local3)
            {
                this.myItems_[_local2].parseFromInput(_arg1);
                _local2++;
            }
            this.yourName_ = _arg1.readUTF();
            _local3 = _arg1.readShort();
            _local2 = _local3;
            while (_local2 < this.yourItems_.length)
            {
                0Ep.23n(this.yourItems_[_local2]);
                _local2++;
            }
            this.yourItems_.length = Math.min(_local3, this.yourItems_.length);
            while (this.yourItems_.length < _local3)
            {
                this.yourItems_.push((0Ep.sH(1RN) as 1RN));
            }
            _local2 = 0;
            while (_local2 < _local3)
            {
                this.yourItems_[_local2].parseFromInput(_arg1);
                _local2++;
            }
        }

        override public function toString():String{
            return (formatToString("TRADESTART", "myItems_", "yourName_", "yourItems_"));
        }


    }
}//package 1zG

