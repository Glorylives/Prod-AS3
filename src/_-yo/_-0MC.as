// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.0MC

package yo{
    import g0._Tz;
    import flash.utils.IDataOutput;

    public class 0MC extends 0j1 {

        public var slotObject_:_Tz;

        public function 0MC(_arg1:uint, _arg2:Function){
            this.slotObject_ = new _Tz();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            this.slotObject_.writeToOutput(_arg1);
        }

        override public function toString():String{
            return (formatToString("INVDROP", "slotObject_"));
        }


    }
}//package yo

