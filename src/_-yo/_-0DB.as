// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.0DB

package yo{
    import flash.utils.IDataOutput;

    public class 0DB extends 0j1 {

        public var time_:int;

        public function 0DB(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.time_);
        }

        override public function toString():String{
            return (formatToString("SHOOTACK", "time_"));
        }


    }
}//package yo

