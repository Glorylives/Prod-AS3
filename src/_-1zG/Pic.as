﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.Pic

package 1zG{
    import flash.display.BitmapData;
    import flash.utils.ByteArray;
    import flash.utils.IDataInput;

    public class Pic extends 11g {

        public var bitmapData_:BitmapData = null;

        public function Pic(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            var _local2:int = _arg1.readInt();
            var _local3:int = _arg1.readInt();
            var _local4:ByteArray = new ByteArray();
            _arg1.readBytes(_local4, 0, ((_local2 * _local3) * 4));
            this.bitmapData_ = new HL(_local2, _local3);
            this.bitmapData_.setPixels(this.bitmapData_.rect, _local4);
        }

        override public function toString():String{
            return (formatToString("PIC", "bitmapData_"));
        }


    }
}//package 1zG
