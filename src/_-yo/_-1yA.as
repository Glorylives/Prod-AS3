// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.1yA

package yo{
    import g0.1tk;
    import g0._Tz;
    import flash.utils.IDataOutput;

    public class 1yA extends 0j1 {

        public var time_:int;
        public var position_:1tk;
        public var slotObject1_:_Tz;
        public var slotObject2_:_Tz;

        public function 1yA(_arg1:uint, _arg2:Function){
            this.position_ = new 1tk();
            this.slotObject1_ = new _Tz();
            this.slotObject2_ = new _Tz();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.time_);
            this.position_.writeToOutput(_arg1);
            this.slotObject1_.writeToOutput(_arg1);
            this.slotObject2_.writeToOutput(_arg1);
        }

        override public function toString():String{
            return (formatToString("INVSWAP", "time_", "position_", "slotObject1_", "slotObject2_"));
        }


    }
}//package yo

