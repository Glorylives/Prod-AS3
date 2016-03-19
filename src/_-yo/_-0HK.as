// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.0HK

package yo{
    import g0._Tz;
    import g0.1tk;
    import flash.utils.IDataOutput;

    public class 0HK extends 0j1 {

        public var time_:int;
        public var slotObject_:_Tz;
        public var itemUsePos_:1tk;
        public var useType_:int;

        public function 0HK(_arg1:uint, _arg2:Function){
            this.slotObject_ = new _Tz();
            this.itemUsePos_ = new 1tk();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.time_);
            this.slotObject_.writeToOutput(_arg1);
            this.itemUsePos_.writeToOutput(_arg1);
            _arg1.writeByte(this.useType_);
        }

        override public function toString():String{
            return (formatToString("USEITEM", "slotObject_", "itemUsePos_", "useType_"));
        }


    }
}//package yo

