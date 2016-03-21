// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.23K

package yo{

    import flash.utils.IDataOutput;


    public class 23K extends 0j1 {

        public var offer_:Vector.<Boolean>;

        public function 23K(_arg1:uint, _arg2:Function){
            this.offer_ = new Vector.<Boolean>();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeShort(this.offer_.length);
            var _local2:int;
            while (_local2 < this.offer_.length)
            {
                _arg1.writeBoolean(this.offer_[_local2]);
                _local2++;
            }
        }

        override public function toString():String{
            return (formatToString("CHANGETRADE", "offer_"));
        }


    }
}//package yo

